<template>
  <b-navbar type="dark" variant="dark" fixed="top">
    <b-navbar-brand href="/">
      <img src="../assets/knight-white.png" class="d-inline-block align-top logo" alt="Logo">
      <span v-if="windowWidth >= 768">Competitive Data Analytics</span>
    </b-navbar-brand>

    <b-collapse is-nav>
      <b-navbar-nav v-if="windowWidth >= 768" class="ml-auto">
        <b-nav-item href="#" right>What We Do</b-nav-item>
        <b-nav-item href="#" right>Our Advantage</b-nav-item>
        <b-nav-item href="/about" right>About</b-nav-item>
        <b-nav-item href="#" right>Contact</b-nav-item>
      </b-navbar-nav>

      <b-nav-item-dropdown v-else class="ml-auto" right no-caret>
        <template v-slot:button-content>
          <i class="material-icons menu-button">menu</i>
        </template>
        <b-dropdown-item href="#" right>What We Do</b-dropdown-item>
        <b-dropdown-item href="#" right>Our Advantage</b-dropdown-item>
        <b-dropdown-item href="/about" right>About</b-dropdown-item>
        <b-dropdown-item href="#" right>Contact</b-dropdown-item>
      </b-nav-item-dropdown>
    </b-collapse>
  </b-navbar>
</template>

<script>
  import { BCollapse, BDropdownItem, BNavbar, BNavbarBrand, BNavbarNav, BNavItem, BNavItemDropdown } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'


  export default {
    name: "Header",
    components: {
        BCollapse,
        BDropdownItem,
        BNavbar,
        BNavbarBrand,
        BNavbarNav,
        BNavItem,
        BNavItemDropdown,
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
    padding-top: 9px;
    font-size: 30px;
    color: white;
  }

  .dropdown-toggle /deep/ {
    padding: 0 16px;
  }
</style>