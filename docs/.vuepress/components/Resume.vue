<template>
  <div class="resume-page">
    <!-- 个人照片 -->
    <img src="/images/person.jpg" alt="个人照片" class="photo" />

    <!-- 个人信息 -->
    <h1>Junjie CHEN</h1>
    <p>
      I am a graduate student at the University of Paris-Saclay, majoring in Computer Science and Data Science.
      I am passionate about back-end development, <strong>big data analytics, data mining, deeplearning and machine learning</strong>.
    </p>

    <!-- 联系方式 -->
    <section>
      <h3>Contact</h3>
      <ul>
        <li><strong>Phone:</strong> +33 0652476716 / +86 18867740611</li>
        <li><strong>Email:</strong> michel724915929@gmail.com</li>
        <li><strong>Adress:</strong> Massy palaiseau, 91300, France</li>
      </ul>
    </section>

    <!-- 教育背景 -->
    <section>
      <h2>Background</h2>
      <div>
        <h3>Paris-saclay University</h3>
        <p>data science, master, 2023-2026</p>
        <p><strong>TOP 5</strong> in class</p>
      </div>
      <div>
        <h3>CY cergy paris University</h3>
        <p>data science and big data technology, computer science, bachelor 2020-2023</p>
      </div>
    </section>

    <!-- 技能清单 -->
    <section>
      <h2>Skill</h2>
      <ul>
        <li>Proficient in <strong>Python</strong>, Java, C, and shell scripting.</li>
        <li>Multi-threaded programming (multi-threaded, asyncio), <strong>network programming (TCP/IP, mininet, websocket, nginx)</strong>, and experience in high-concurrency systems</li>
        <li>Familiar with Linux; skilled in <strong>Docker</strong>; experienced with <strong>Git</strong> (branches, submodules)</li>
        <li>Proficient in <strong>SQL</strong>; familiar with MySQL internals and <strong>index optimization</strong>; know <strong>MongoDB</strong>, <strong>Redis</strong>, and <strong>data warehouse modeling</strong></li>
        <li>Familiar with big data components: <strong>Hadoop (HDFS, MapReduce, YARN)</strong>, <strong>PySpark</strong>, Hive, Flume, <strong>Kafka</strong>, Zookeeper</li>
        <li>Standard <strong>machine learning</strong> & <strong>data mining</strong> (classification, clustering, regression); deep learning (CNN, RNN, LSTM, Transformer, <strong>BERT</strong>) with <strong>PyTorch</strong>; apps with <strong>LangChain</strong></li>
      </ul>
    </section>

    <br />

    <!-- 工作经验 -->
    <section>
      <h2>Exprience</h2>
      <div>
        <h3>Kuaishou Technology (Hangzhou)</h3>
        <p><strong>post:</strong> LLM Algorithm Engineer, E-commerce Tech Dept.</p>
        <p><strong>time:</strong> 2025.06 - Present</p>
        <ul>
          <li>Live commerce “Smart Card” product matching; <strong>100k</strong> multimodal samples (frames+ASR; product images+desc); <strong>DeepSpeed + H800</strong> training <strong>Chinese-CLIP ViT-L/14-336</strong></li>
          <li>Hard negatives + curriculum by similarity bands (<strong>0.3–0.5 / 0.6–0.8 / 0.85–0.95</strong>); accuracy <strong>+40%</strong>, recall <strong>+30%</strong></li>
          <li>Dual-tower recall with shared <strong>CN-CLIP-336</strong>; video tower adds <strong>GRU</strong> for temporal modeling; <strong>GeM</strong> pooling fusion; <strong>20-way (1 pos / 19 neg)</strong> contrastive training</li>
          <li><strong>ROI</strong> selection via <strong>YOLO</strong> on frames & product images to denoise and stabilize matching</li>
          <li>Stage-2 reranking with <strong>Qwen2.5-VL-7B</strong> on vLLM; <strong>LoRA</strong> fine-tune; <strong>Top-1 80% → 95%</strong>; <strong>GRU + Cross-Attn</strong> adds <strong>+3%</strong> to Top-1/Top-5</li>
          <li>High-quality short-video scoring (vision + audio + text) for distribution policy; <strong>GRPO Acc 80.6% / Rec 66.8%</strong>; <strong>DPO Acc 84.6% / Rec 42.9%</strong> (shipped GRPO for higher recall)</li>
        </ul>
      </div>

      <div>
        <h3>Ping An Technology (Shenzhen) Co., Ltd.</h3>
        <p><strong>post:</strong> Algorithm Engineer, Frontier Tech Research Team</p>
        <p><strong>time:</strong> 2025.01 - 2025.05</p>
        <ul>
          <li>New-energy industry AI consulting assistant (<strong>multi-agent</strong>, fuzzy calibration, <strong>RAG</strong>): <strong>qwen-agent</strong> workflows, intent routing, <strong>BM25 + FAISS + m3e</strong> embeddings, enterprise name disambiguation</li>
          <li><strong>chatbi</strong> pipeline (<strong>NL2SQL</strong> + fuzzy calibration + rule templates) to query DB; two-stage reasoning with <strong>streaming outputs</strong>; typical single-query latency <strong>&lt; 10s</strong></li>
          <li>Auditing policy knowledge-base QA: <strong>LangChain</strong> chunking, <strong>FAISS + m3e-base</strong>, metadata pre-filter via <strong>BM25</strong>, <strong>BGE-reranker-base</strong> selecting <strong>top-3</strong> contexts</li>
          <li>Life-insurance chatbi (<strong>NL2SQL</strong>, coreference): embedding optimization; <strong>m3e-large</strong> fine-tune & <strong>bge-qwen2-7b-instruct</strong>; <strong>+5%</strong> intent similarity; <strong>Qwen2-14B</strong> (LoRA, 8×V100) lifts coreference accuracy <strong>78% → 95%</strong> (2–3 turn dialogs)</li>
        </ul>
      </div>
      <div>
        <h3>NetEase</h3>
        <p><strong>post:</strong> Data engineer</p>
        <p><strong>time:</strong> 2024.5 - 2024.9</p>
        <ul>
          <li>MOE professional decision algo system develop</li>
          <li><strong>ETL</strong> processing of game company data</li>
          <li>Develop Game of Thrones features</li>
          <li>Restruct Empire Wars source code</li>
          <li>Research AI agent with <strong>data-driven</strong> methods</li>
          <li>Interested in data engineering & <strong>AI</strong> interdiscipline</li>
        </ul>
      </div>
    </section>

    <!-- 项目经验 -->
    <section>
      <h2>Project experience</h2>
      <div>
        <h3>Real-time Financial News Sentiment Analysis System</h3>
        <p>Researcher at Laboratory of Informatics, Signals, and Knowledge (LISN) Paris</p><br />
        <time>January 2024 - March 2024</time>
        <ul>
          <li>Designed and implemented a real-time sentiment system for large-scale news headlines</li>
          <li>Global multi-service deployment via Docker Compose; async Python crawlers; crontab scheduling</li>
          <li>Used <strong>Kafka</strong> as MQ; integrated <strong>Spark Streaming</strong> for cleaning; fine-tuned <strong>DistilBERT</strong>; stored in <strong>ClickHouse</strong></li>
          <li>Achievements: <strong>sub-second</strong> analysis of thousands of headlines with <strong>90% accuracy</strong>; compared classic ML vs <strong>BERT</strong></li>
        </ul>
      </div>
      <div>
        <h3>Prediction of Volcanic Events Based on Chemical Composition of Ash in the Southern Andes</h3>
        <time>November 2023 - December 2023</time>
        <ul>
          <li>Preprocessing with SMOTE; remove outliers/low-quality samples</li>
          <li>Feature selection via Random Forest</li>
          <li>End-to-end pipeline with <strong>XGBoost</strong>; balanced accuracy from <strong>73%</strong> to <strong>85%</strong></li>
        </ul>
      </div>
    </section>

    <!-- 其他部分 -->
    <section>
      <h2>Other</h2>
      <ul>
        <li>
          Awards: Outstanding Overseas Student Scholarship, Outstanding Graduate Award, First-Class Student Scholarship (<strong>2022</strong>),
          Second-Class Student Scholarship (<strong>2020</strong>, <strong>2021</strong>), First Prize in the Yangtze River Delta Mathematical Modeling Competition
        </li>
        <li>Certifications: WeChat Mini Program Patent for School Bus Software</li>
        <li>Languages: French <strong>TCF B2</strong>, English <strong>CET-6</strong>, <strong>TOEIC 800/990</strong></li>
      </ul>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Resume',
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

/* 可选：让加粗数值更显眼一些 */
strong {
  font-weight: 700;
}
</style>
