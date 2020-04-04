<template>
  <b-navbar type="dark" variant="dark">
    <b-navbar-brand href="/">
      <img src="../assets/knight-white.png" class="d-inline-block align-top logo" alt="Logo">
      <span v-if="windowWidth >= 768">Competitive Data Analytics</span>
    </b-navbar-brand>

    <b-collapse is-nav>
      <b-navbar-nav v-if="windowWidth >= 768" class="ml-auto">
        <b-nav-item href="/services" right>What We Do</b-nav-item>
        <b-nav-item href="/advantage" right>Our Advantage</b-nav-item>
        <b-nav-item href="/about" right>About</b-nav-item>
        <b-nav-item href="/contact" right>Contact</b-nav-item>
      </b-navbar-nav>

      <b-nav-item-dropdown v-else class="ml-auto" right no-caret>
        <template v-slot:button-content>
          <i class="material-icons menu-button">menu</i>
        </template>
        <b-dropdown-item href="/services" right>What We Do</b-dropdown-item>
        <b-dropdown-item href="/advantage" right>Our Advantage</b-dropdown-item>
        <b-dropdown-item href="/about" right>About</b-dropdown-item>
        <b-dropdown-item href="/contact" right>Contact</b-dropdown-item>
      </b-nav-item-dropdown>
    </b-collapse>
  </b-navbar>
</template>

<script>
  import { BCollapse, BNavbar, BNavbarBrand } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "Header",
    components: {
        BCollapse,
        BNavbar,
        BNavbarBrand,
        BDropdownItem: () => import('bootstrap-vue').then(m => m.BDropdownItem),
        BNavbarNav: () => import('bootstrap-vue').then(m => m.BNavbarNav),
        BNavItem: () => import('bootstrap-vue').then(m => m.BNavItem),
        BNavItemDropdown: () => import('bootstrap-vue').then(m => m.BNavItemDropdown),
    },
    data() {
      return {
        windowWidth: window.innerWidth,
      }
    },
    mounted() {
      window.addEventListener('resize', this.onResize);
    },
    beforeDestroy() {
      window.removeEventListener('resize', this.onResize);
    },
    methods: {
      onResize() {
        this.windowWidth = window.innerWidth;
      }
    }
  }
</script>

<style scoped>
  .logo {
    height: 30px;
    width: 30px;
  }

  li {
    list-style-type: none;
  }

  .menu-button {
    vertical-align: middle;
    font-size: 30px;
    color: white;
  }

  .dropdown-toggle /deep/ {
    padding: 0 16px;
  }
</style>