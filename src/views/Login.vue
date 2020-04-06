<template>

  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="9" lg="8" xl="6">
        <b-card title="Log in to your account" text-variant="white" style="background:transparent; border:none">
          <UserAuth style="margin:20px 0"></UserAuth>
          <p>Don't have an account yet? <a href="#" style="color:deepskyblue">Sign up</a></p>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import UserAuth from '../components/UserAuth.vue';
  import { BContainer, BRow, BCol, BCard } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "Login",
    components: {
      UserAuth,
      BContainer,
      BRow,
      BCol,
      BCard,
    },
  }
</script>

<style scoped>
  h4 {
    font-size: 2rem;
  }
</style>