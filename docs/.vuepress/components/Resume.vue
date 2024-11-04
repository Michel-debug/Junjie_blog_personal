<template>
    <div class="resume-page">
      <!-- 个人照片 -->
      <img src="/images/person.jpg" alt="个人照片" class="photo" />
  
      <!-- 个人信息 -->
      <h1>Junjie CHEN</h1>
      <p>I am a graduate student at the University of Paris-Saclay, majoring in Computer Science and Data Science. 
        I am passionate about back-end development, <strong> big data analytics, data mining, and machine learning</strong>.
      </p>
  
      <!-- 联系方式 -->
      <section>
        <h3>Contact</h3>
        <ul>
          <li><strong>Phone:</strong>+33 0652476716 / +86 18867740611</li>
          <li><strong>Email:</strong>michel724915929@gmail.com</li>
          <li><strong>Adress:</strong>Massy palaiseau, 91300, France</li>
          <!-- 添加更多联系方式 -->
        </ul>
      </section>
  
      <!-- 教育背景 -->
      <section>
        <h2>Background</h2>
        <div>
          <h3>Paris-saclay University</h3>
          <p>data science, master, 2023-2026</p>
          <p>TOP 5 in class</p>
          <!-- 可以包括 GPA、主修课程等 -->
        </div>
        <div>
          <h3>CY cergy paris University</h3>
          <p>computer science, bachelor(exchange programme), 2022-2023</p>
          <!-- 可以包括 GPA、主修课程等 -->
        </div>
        <div>
          <h3>Zhejiang technology and science  University</h3>
          <p>data science and big data technology, double bachelor, 2019-2022</p>
          <!-- 可以包括 GPA、主修课程等 -->
        </div>
      </section>
  
        <!-- 技能清单 -->
      <section>
        <h2>Skill</h2>
        <ul>
          <li>Proficient in <strong>Python</strong>, Java, C, and shell scripting.</li>
          <li>Multi-threaded programming(multi-threaded,asyncio),<strong> network programming(TCP/IP,mininet,websocket,nginx)</strong>, and have experience in the development of high-concurrency systems</li>
          <li>Familiar with the Linux operating system and skilled in Docker container operations, 
            Experienced in using Git for version control and branch collaboration, with development experience using Git submodules.</li>
          <li>Proficient in writing <strong>SQL</strong> and familiar with common relational databases like MySQL, including their underlying principles and <strong> index optimization technique</strong>. 
            Knowledgeable about non-relational databases such as MongoDB and Redis, with experience in <strong>data warehouse modeling</strong>.</li>
          <li>Familiar with common big data components like <strong>Hadoop (HDFS, MapReduce, YARN) </strong>, <strong>PySpark</strong>, Hive, Flume, Kafka, and Zookeeper</li>
          <li>Well-versed in standard <strong>machine learning</strong> and <strong>data mining algorithms</strong> (classification models, clustering models, regression models, etc.),
             and understand basic deep learning model architectures (CNN, RNN, LSTM, Transformer, BERT) as well as the commonly used programming framework PyTorch.
              Knowledgeable in developing applications using LangChain for large models.</li>
          <!-- 添加更多技能 -->
        </ul>
      </section>
      <br>
      <!-- 工作经验 -->
      <section>
        <h2>Exprience</h2>
        <div>
          <h3>NetEase</h3>
          <p><strong>post:</strong>data engineer</p>
          <p><strong>time:</strong>2024.4 - 2024.8</p>
          <ul>
            <li> Etl processing of game company data; </li>
            <li> Develop game of Thrones features and </li>
            <li> Restruct Empire Wars source code</li>
            <li> mainly research ai agent with data driven </li>
            <li> and intereted in data developper and AI interdiscipline</li>
            <!-- 添加更多条目 -->
          </ul>
        </div>
      </section>
  

  
      <!-- 项目经验 -->
      <section>
        <h2>Project experience</h2>
        <div>
          <h3>Real-time Financial News Sentiment Analysis System</h3>
          <p>Researcher at Laboratory of Informatics, Signals, and Knowledge (LISN)
            Paris</p><br>
          <time>January 2024 - March 2024</time>
          <ul>
            <li>Project Background: Designed and implemented a real-time sentiment analysis system for financial news to analyze and classify large volumes of news headlines in a short period, supporting real-time market sentiment monitoring.</li>
            <li>Deployed multiple services globally using Docker Compose for containerized communication. Wrote Python scripts for asynchronous API requests to multiple financial news websites (e.g., Reuters), with scheduled tasks using crontab.</li>
            <li>Used Kafka as a message queue to buffer data streams, alleviating peak loads and enhancing system scalability and fault tolerance.</li>
            <li>Integrated Spark Streaming for data cleaning and fine-tuned a pre-trained NLP model (DistilBERT) for real-time sentiment analysis of news data. Stored results in ClickHouse database for subsequent data science analysis.</li>
            <li>Achievements: Achieved sub-second sentiment analysis of thousands of news headlines with 90% accuracy, gaining both knowledge in engineering architecture and insights into the differences in accuracy between traditional machine learning models (e.g., Word2Vec, CountVectorizer with logistic regression) and deep learning models like BERT in this task.
              GitHub: https://github.com/Michel-debug/Kafka-SparkStreamNLP-Finance-Sentiment-Analysis</li>
          </ul>
        </div>
        <div>
          <h3>Prediction of Volcanic Events Based on Chemical Composition of Ash in the Southern Andes
            November 2023 - December 2023</h3>
          <time>November 2023 - December 2023</time>
          <ul>
            <li>During data preprocessing, removed samples without geochemical analysis, outliers, unidentified volcanic sources, and samples with a total below 94 wt.%, retaining events with sufficient observations. Used SMOTE for oversampling of underrepresented samples.</li>
            <li>Feature selection and dimensionality reduction using Random Forest.</li>
            <li>Pipeline Integration: Built a data processing pipeline encompassing data cleaning, feature selection, standardization, and XGBoost classifier, optimizing via confusion matrix and cross-validation, boosting balanced accuracy from <strong> 73%</strong> to <strong>85%</strong>, significantly improving prediction accuracy.</li>
            <!-- <li></li> -->
          </ul>
          <!-- 添加更多项目 -->
        </div>
      </section>
      <section>
        <div>
          <h3>"Fangyuan Shili" E-commerce Data Warehouse (Offline Data Warehouse)</h3>
          <time>May 2023 - August 2023</time>
          <ul>
            <li>Project Background: “Fangyuan Shili” is an e-commerce platform for Chinese supermarkets in Europe. With rapid growth in recent years, it accumulated massive data. To extract user purchasing behavior features, a big data platform was established, facilitating data analysis across various business lines, enabling refined management, increasing user count and activity, and reducing operating costs.</li>
            <li> data warehouse architecture and integrated MySQL database data and log data, using Hive SQL for theme construction and data processing.</li>
            <li> Developed the data warehouse in stages from the ODS layer to the ADS layer, linking the sales domain with other domains, realizing core e-commerce theme development, and ultimately completing the data warehouse visualization platform to support business decisions.</li>
            <li> Technical Highlights: Lightweight development focused on learning methodology. Adopted a purely SQL-based approach, enhancing SQL skills and deepening familiarity with the overall data warehouse layering architecture. Technologies Used: Hadoop CDH, Alibaba Data Migration Tool (DataX).</li>
          </ul>
        </div>
      </section>
      
      <!-- 其他部分 -->
       <section>
        <h2>Other</h2>
        <ul>
         <li>
Awards: Outstanding Overseas Student Scholarship, Outstanding Graduate Award, First-Class Student Scholarship (2022), 
Second-Class Student Scholarship (2020, 2021), First Prize in the Yangtze River Delta Mathematical Modeling Competition.</li>
<li>Certifications: WeChat Mini Program Patent for School Bus Software </li>
          <li>Languages: French TCF B2 (Upper Intermediate), English CET-6, TOEIC 800/990</li>
          <!-- 添加更多条目 -->
        </ul>
       </section>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Resume',
    // 如有需要，可添加组件逻辑
  };
  </script>
  
  <style scoped>
  .resume-page {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    font-family: Arial, sans-serif;
  }
  
  .photo {
    width: 150px;
    border-radius: 50%;
    display: block;
    margin: 0 auto 20px;
  }
  
  h1, h2, h3 {
    color: #333;
  }
  
  section {
    margin-bottom: 20px;
  }
  
  ul {
    list-style-type: disc;
    margin-left: 20px;
  }
  
  /* 添加更多自定义样式 */
  </style>
  