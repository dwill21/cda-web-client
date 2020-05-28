<template>
  <div class="footer">
    <p>&copy; Competitive Data Analytics 2020. All rights reserved.</p>
  </div>
</template>

<script>
    export default {
        name: "Footer"
    }
</script>

<style lang="scss" scoped>
  @import '../assets/colors.scss';

  .footer {
    height: 55px;
    width: 100%;
    background-color: $header-footer-color;
    color: white
  }
</style>