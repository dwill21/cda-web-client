import Vue from 'vue';
import AOS from 'aos';
import { VBHover } from 'bootstrap-vue';

import App from './App.vue';
import router from './router';

import 'aos/dist/aos.css';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

Vue.directive('b-hover', VBHover);
Vue.config.productionTip = false;

// eslint-disable-next-line no-new
new Vue({
  created() {
    AOS.init();
  },
  el: '#app',
  router,
  render: (h) => h(App),
});
