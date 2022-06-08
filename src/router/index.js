import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routeOptions = [
  {
    path: '/',
    name: 'Home',
  },
  {
    path: '/about',
    name: 'About',
  },
  {
    path: '/services',
    name: 'Services',
  },
  {
    path: '/contact',
    name: 'Contact',
  },
];

const routes = routeOptions.map((route) => ({
  ...route,
  component: () => import(/* webpackChunkName: "[request]" */ `../views/${route.name}.vue`),
}));

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;
