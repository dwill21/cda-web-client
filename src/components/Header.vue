<template>
  <b-navbar type="dark" variant="dark">
    <b-navbar-brand href="/">
      <img src="../assets/knight-white.png" class="d-inline-block align-top logo" alt="Logo">
      <span v-if="windowWidth >= 768">Competitive Data Analytics</span>
    </b-navbar-brand>

    <b-collapse is-nav>
      <b-navbar-nav v-if="windowWidth >= 768" class="ml-auto">
        <b-nav-item href="/services">What We Do</b-nav-item>
        <b-nav-item href="/advantage">Our Advantage</b-nav-item>
        <b-nav-item href="/about">Our Team</b-nav-item>
        <b-nav-item href="/contact">Contact</b-nav-item>

        <b-nav-item-dropdown right>
          <template v-slot:button-content>
            <i class="material-icons">account_circle</i>
          </template>
          <b-dropdown-item v-if="!isSignedIn" href="/login">Log In/Sign Up</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>

      <b-nav-item-dropdown v-else class="ml-auto" right no-caret>
        <template v-slot:button-content>
          <i class="material-icons menu-button">menu</i>
        </template>
        <b-dropdown-item href="/services" right>What We Do</b-dropdown-item>
        <b-dropdown-item href="/advantage" right>Our Advantage</b-dropdown-item>
        <b-dropdown-item href="/about" right>Our Team</b-dropdown-item>
        <b-dropdown-item href="/contact" right>Contact</b-dropdown-item>
        <b-dropdown-item v-if="!isSignedIn" href="/login">Log In/Sign Up</b-dropdown-item>
      </b-nav-item-dropdown>
    </b-collapse>
  </b-navbar>
</template>

<script>
  import { BCollapse, BNavbar, BNavbarBrand, BNavItemDropdown, BDropdownItem } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "Header",
    components: {
        BCollapse,
        BNavbar,
        BNavbarBrand,
        BNavItemDropdown,
        BDropdownItem,
        BNavbarNav: () => import('bootstrap-vue').then(m => m.BNavbarNav),
        BNavItem: () => import('bootstrap-vue').then(m => m.BNavItem),
    },
    data() {
      return {
        windowWidth: window.innerWidth,
        isSignedIn: false,
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

  i {
    vertical-align: middle;
  }

  .menu-button {
    font-size: 30px;
    color: white;
  }

  .dropdown-toggle /deep/ {
    padding: 0 16px;
  }
</style>