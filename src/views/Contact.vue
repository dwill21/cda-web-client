<template>
  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col cols="9" md="5" lg="4" xl="3">
        <b-card title="Contact us" text-variant="white" style="background:transparent; border:none">
          <div style="padding:15px"></div>

          <b-card-text align="left">
            <b-link href="mailto:foo@example.com" target="_blank">
              <i class="material-icons text-icon">mail</i> foo@example.com
            </b-link>
          </b-card-text>

          <b-card-text align="left">
            <b-link href="http://twitter.com/foo" target="_blank">
              <img src="src/assets/twitter-icon.png" alt="Twitter Logo"> twitter.com/foo
            </b-link>
          </b-card-text>

          <b-card-text align="left">
            <b-link href="http://facebook.com/foo" target="_blank">
              <img src="src/assets/facebook-icon.png" alt="Facebook Logo"> facebook.com/foo
            </b-link>
          </b-card-text>

          <b-card-text align="left">
            <b-link href="http://linkedin.com/foo" target="_blank">
              <img src="src/assets/linkedin-icon.png" alt="LinkedIn Logo"> linkedin.com/foo
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