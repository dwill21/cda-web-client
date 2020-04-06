<template>
  <b-form>
    <label class="sr-only" for="email">Email</label>
    <b-form-input v-model="email" id="email" placeholder="Email" size="lg" required></b-form-input>

    <label class="sr-only" for="password">Password</label>
    <b-form-input v-model="password" type="password" id="password" placeholder="Password" size="lg" required></b-form-input>

    <b-button style="margin-top:10px" type="submit" variant="primary" :disabled="isBlank(email) || isBlank(password)" pill block>{{button}}</b-button>
  </b-form>
</template>

<script>
  import { BForm, BFormInput, BButton } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "UserAuth",
    components: {
      BForm,
      BFormInput,
      BButton,
    },
    props: {
      button: {
        type: String,
        default: 'Log in'
      }
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
  input {
    margin: 5px 0;
  }
</style>