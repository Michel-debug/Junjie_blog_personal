export default ({ router }) => {
    // // 页面路由改变时触发
    // router.beforeEach((to, from, next) => {
    //   // 根据页面路径动态设置标题
    //   if (to.path === '/') {
    //     document.title = '主页 - Junjie CHEN\'s Blog';
    //   } else if (to.path.startsWith('/ml/')) {
    //     document.title = '机器学习笔记';
    //   } else if (to.path.startsWith('/algorithm/')) {
    //     document.title = '算法题库';
    //   } else {
    //     document.title = 'Junjie CHEN\'s Blog'; // 默认标题
    //   }
    //   next();
    // });
  
    // 检测页面是否在前台或后台
    document.addEventListener('visibilitychange', () => {
      if (document.hidden) {
        document.title = '快回来看看哦！'; // 当页面在后台时显示的标题
      } else {
        document.title = '欢迎回来！'; // 页面在前台时显示的标题
      }
    });
  };