import Vue from 'vue'
import App from './App.vue'
import router from './router'

import AOS from 'aos'
import 'aos/dist/aos.css'

import { VBHover } from 'bootstrap-vue';
Vue.directive('b-hover', VBHover);

Vue.config.productionTip = false

new Vue({
  created() {
    AOS.init()
  },
  el: '#app',
  router,
  render: h => h(App)
})
