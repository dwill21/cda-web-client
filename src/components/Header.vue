<template>
  <b-navbar type="dark" variant="dark" fixed="top">
    <b-navbar-brand href="/">
      <img src="../assets/knight-white.png" class="d-inline-block align-top logo" alt="Logo">
      Competitive Data Analytics
    </b-navbar-brand>

    <b-collapse is-nav>
      <b-navbar-nav class="ml-auto">
        <b-nav-item href="#" right>What We Do</b-nav-item>
        <b-nav-item href="#" right>Our Advantage</b-nav-item>
        <b-nav-item href="/about" right>About</b-nav-item>
        <b-nav-item href="#" right>Contact</b-nav-item>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
</template>

<script>
  import { BCollapse, BNavbar, BNavbarBrand, BNavbarNav, BNavItem } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'


  export default {
    name: "Header",
    components: {
        BCollapse,
        BNavbar,
        BNavbarBrand,
        BNavbarNav,
        BNavItem,
    }
  }
</script>

<style scoped>
  .logo {
    height: 30px;
    width: 30px;
  }
</style>