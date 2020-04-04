<template>
  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col cols="9" md="5" lg="4" xl="3">
        <b-card title="Contact us" text-variant="white" style="background:transparent; border:none">
          <div style="padding:15px"></div>
          <b-card-text align="left"><i class="material-icons" style="font-size:22px; padding:0 4px">mail</i> foo@example.com</b-card-text>
          <b-card-text align="left"><img src="../assets/Twitter_Logo_Blue.png" alt="Twitter Logo"> twitter.com/foo</b-card-text>
          <b-card-text align="left"><img src="../assets/f_logo_RGB-Blue_58.png" alt="Facebook Logo"> facebook.com/foo</b-card-text>
          <b-card-text align="left"><img src="../assets/LI-In-Bug.png" alt="LinkedIn Logo"> linkedin.com/foo</b-card-text>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import { BContainer, BRow, BCol, BCard, BCardText } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "Contact",
    components: {
      BContainer,
      BRow,
      BCol,
      BCard,
      BCardText,
    }
  }
</script>

<style scoped>
  img {
    height: 30px;
    widtH: 30px;
  }

  p {
    font-size: 20px;
  }

  h4 {
    font-size: 2rem;
  }
</style>