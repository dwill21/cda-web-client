<template>
  <div class="footer">
    <p>Copyright &copy; {{currentYear}} Competitive Data Analytics, LLC. All rights reserved.</p>
  </div>
</template>

<script>
import Vue from 'vue';
import Component from 'vue-class-component';

@Component
export default class FooterComponent extends Vue {
  currentYear = new Date().getFullYear();
}
</script>

<style lang="scss" scoped>
  @import '../assets/scss/colors';

  .footer {
    height: 55px;
    width: 100%;
    background-color: $header-footer-color;
    color: white
  }
</style>
