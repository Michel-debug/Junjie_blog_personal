
module.exports = {
    title: 'Junjie CHEN\'s blog',
    description: 'junjun vuepress 文档',
    plugins:[
      ['task-lists'],
  [
    'copyright',{
      copyright:true,
      minLength: 50,
      authorName: 'Junjie CHEN',
    }
  ],
  'vuepress-plugin-mathjax',
  	],
    head: [ // 注入到当前页面的 HTML <head> 中的标签
      ['title', {}, 'junjun的博客'],
      ['link', { rel: 'icon', href: '/favicon.ico' }], // 增加一个自定义的 favicon(网页标签的图标)
      ['link', { rel: 'icon', type: 'image/png', sizes:'32x32', href:'/ico.png'}],
    ],
    base: '/', // 这是部署到github相关的配置
    markdown: {
      lineNumbers: true // 代码块显示行号
    },
    themeConfig:{
      logo: '/damen.png',
      nav:[ 
	{text: '主页',link:'/'},
	{text: '学习笔记',
	      // 导航栏配置
	items:[
        {text: '深度学习', link: '/ml/' },
        {text: '算法题库', link: '/algorithm/'},
        {text: '大数据面试', link: '/interview/bigdata.html'},
        {text: '数据仓库', link: '/interview/dw.html'},
        {text: 'spark面试', link: '/interview/pyspark.html'},
        {text: '数据研发', link: '/interview/datadev.html'},
        {text: '机器学习/数据挖掘', link: '/interview/datamining.html'},
        {text: 'sql笔记', link: '/interview/sql.html'},
      ]},
	 {text:"关于我", link: '/about/'},
	 {text:'Github', link:'https://github.com/michel-debug'}
	],
      sidebar: 'auto', // 侧边栏配置
      sidebarDepth: 1, // 侧边栏显示2级
    }
  };
