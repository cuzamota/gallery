module.exports = {
  devServer: {
    proxy: {
      /* /api라는 주소로 시작하면 http://localhost:8080 주소로 우회하겠다. */
      '/api': {
        target: 'http://localhost:8080',
        changeOrigin: true,
        pathRewrite: {
          '^/': ''
        }
      }
    }
  }
}