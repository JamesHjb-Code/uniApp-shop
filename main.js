import App from './App'
import { myRequest } from './util/api.js'

// #ifndef VUE3
import Vue from 'vue'
Vue.config.productionTip = false
// 封装api函数挂载到vue全局上
Vue.prototype.$myRequest = myRequest
App.mpType = 'app'
const app = new Vue({
    ...App
})
app.$mount()
// #endif

// #ifdef VUE3
import { createSSRApp } from 'vue'
export function createApp() {
  const app = createSSRApp(App)
  return {
    app
  }
}
// #endif