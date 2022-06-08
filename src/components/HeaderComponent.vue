<template>
  <b-navbar type="dark" class="header">
    <b-navbar-brand href="/" style="position: absolute">
      <img src="../assets/images/Logo.png" alt="Full logo" class="d-inline-block align-top logo">
    </b-navbar-brand>

    <b-collapse is-nav>
      <b-navbar-nav v-if="windowWidth >= 768" class="ml-auto">
        <b-nav-item to="/services">What We Do</b-nav-item>
        <b-nav-item to="/about">Who We Are</b-nav-item>
        <b-nav-item to="/contact">Contact</b-nav-item>
      </b-navbar-nav>

      <b-nav-item-dropdown v-else class="ml-auto" right no-caret>
        <template v-slot:button-content>
          <i class="material-icons menu-button">menu</i>
        </template>
        <b-dropdown-item to="/services" right>What We Do</b-dropdown-item>
        <b-dropdown-item to="/about" right>Who We Are</b-dropdown-item>
        <b-dropdown-item to="/contact" right>Contact</b-dropdown-item>
      </b-nav-item-dropdown>
    </b-collapse>
  </b-navbar>
</template>

<script>
import Vue from 'vue';
import Component from 'vue-class-component';
import {
  BCollapse, BNavbar, BNavbarBrand, BNavItemDropdown, BDropdownItem, BNavbarNav, BNavItem,
} from 'bootstrap-vue';

@Component({
  components: {
    BCollapse,
    BNavbar,
    BNavbarBrand,
    BNavItemDropdown,
    BDropdownItem,
    BNavbarNav,
    BNavItem,
  },
})
export default class HeaderComponent extends Vue {
  windowWidth = window.innerWidth;

  mounted() {
    window.addEventListener('resize', this.onResize);
  }

  destroyed() {
    window.removeEventListener('resize', this.onResize);
  }

  onResize() {
    this.windowWidth = window.innerWidth;
  }
}
</script>

<style lang="scss" scoped>
  @import '../assets/scss/colors';

  .header {
    background-color: $header-footer-color;
  }

  .logo {
    height: 55px;
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

  .dropdown-toggle::v-deep {
    padding: 0 16px;
  }
</style>
