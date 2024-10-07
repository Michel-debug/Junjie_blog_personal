<template>
    <div class="resume-page">
      <!-- 个人照片 -->
      <img src="/images/person.jpg" alt="个人照片" class="photo" />
  
      <!-- 个人信息 -->
      <h1>Junjie CHEN</h1>
      <p>I am a graduate student at the University of Paris Saclay,
        majoring in computer science and data science. I am passionate about
        back-end development, big data, data-mining, and machine learning.
      </p>
  
      <!-- 联系方式 -->
      <section>
        <h2>Contact</h2>
        <ul>
          <li><strong>phone:</strong>+33 0652476716 / +86 18867740611</li>
          <li><strong>email:</strong>michel724915929@gmail.com</li>
          <li><strong>adress:</strong>Massy palaiseau, 91300, France</li>
          <!-- 添加更多联系方式 -->
        </ul>
      </section>
  
      <!-- 教育背景 -->
      <section>
        <h2>Background</h2>
        <div>
          <h3>Paris-saclay University</h3>
          <p>data science, master, 2023-2025</p>
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
            
            <!-- 添加更多条目 -->
          </ul>
        </div>
      </section>
  
      <!-- 技能清单 -->
      <section>
        <h2>Skill</h2>
        <ul>
          <li>language: Python,Java,C,Vue</li>
          <li>framework: hadoop, spark, hive, pytorch, mysql, redis, kafka, zookeeper, nginx, clickhouse</li>
          <li>
            1. Familiar with the development of distributed systems, and have experience in the development of distributed systems such as hadoop, spark, hive, kafka, zookeeper, etc. <br>
            2. Familiar with warehouse modeling theory<br>
            3. Familiar with the development of data processing systems, and have experience in the development of data processing systems such as redis, clickhouse, etc.<br>
            4. Familiar with tcp/ip protocol, http protocol, and have experience in the development of network communication systems such as nginx<br>
            5. multi-threaded programming, network programming, and have experience in the development of high-concurrency systems<br>
          </li>
          <!-- 添加更多技能 -->
        </ul>
      </section>
  
      <!-- 项目经验 -->
      <section>
        <h2>Project experience</h2>
        <div>
          <h3>nlp processing</h3>
          <p></p>
          <!-- 添加更多项目 -->
        </div>
      </section>
  
      <!-- 其他部分 -->
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
  