<template>
  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="10" lg="8" xl="6">
        <b-card title="Contact Us" text-variant="white" style="background:transparent; border:none">
          <div style="padding:15px"></div>

          <b-card-text align="left">
            <b-link href="mailto:info@cda-us.com" target="_blank">
              <i class="material-icons text-icon">mail</i> info@cda-us.com
            </b-link>
          </b-card-text>

          <b-card-text align="left">
            <b-link href="https://www.linkedin.com/company/competitive-data-analytics" target="_blank">
              <img src="../assets/images/linkedin-icon.png" alt="LinkedIn Logo"> linkedin.com/company/competitive-data-analytics
            </b-link>
          </b-card-text>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import { BContainer, BRow, BCol, BCard, BCardText, BLink } from 'bootstrap-vue'
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
      BLink,
    }
  }
</script>

<style scoped>
  img {
    height: 30px;
    width: 30px;
  }

  p {
    font-size: 20px;
  }

  h4 {
    font-size: 2rem;
    text-shadow: 1px 1px black;
  }

  a {
    color: white;
  }

  .text-icon {
    font-size: 24px;
    padding: 0 3px;
    vertical-align: middle;
  }
</style>