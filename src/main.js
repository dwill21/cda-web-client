import Vue from 'vue'
import App from './App.vue'
import router from './router'

Vue.config.productionTip = false

import { VBHover } from 'bootstrap-vue';
Vue.directive('b-hover', VBHover);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
