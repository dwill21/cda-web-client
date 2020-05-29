<template>
  <div class="footer">
    <p>Copyright &copy; Competitive Data Analytics {{currentYear}}. All rights reserved.</p>
  </div>
</template>

<script>
  export default {
    name: "Footer",
    data() {
      return {
        currentYear: null,
      }
    },
    created() {
      let today = new Date()
      this.currentYear = today.getFullYear()
    }
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