<template>
  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="9" lg="8" xl="6">
        <b-card title="Log in to your account" text-variant="white" style="background:transparent; border:none">
          <b-form style="margin:20px 0">
            <label class="sr-only" for="email">Email</label>
            <b-form-input v-model="email" type="email" id="email" placeholder="Email" size="lg" required></b-form-input>

            <label class="sr-only" for="password">Password</label>
            <b-form-input v-model="password" type="password" id="password" placeholder="Password" size="lg" required></b-form-input>

            <b-button style="margin-top:10px" type="submit" variant="primary" :disabled="isBlank(email) || isBlank(password)" pill block>Log in</b-button>
          </b-form>
          <p>Don't have an account yet? <a href="/sign-up">Sign up</a></p>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import { BContainer, BRow, BCol, BCard, BForm, BFormInput, BButton } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "Login",
    components: {
      BContainer,
      BRow,
      BCol,
      BCard,
      BForm,
      BFormInput,
      BButton,
    },
    data() {
      return {
        email: '',
        password: '',
      }
    },
    methods: {
      isBlank(str) {
        return str === null || str === undefined || str === '';
      }
    }
  }
</script>

<style scoped>
  h4 {
    font-size: 2rem;
  }

  input {
    margin: 5px 0;
  }
</style>