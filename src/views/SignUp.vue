<template>
  <b-container>
    <b-row align-v="center" align-h="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col lg="10" xl="8">
        <b-form>
          <b-form-group label="First Name" label-for="first-name" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="firstName" id="first-name" placeholder="John" size="lg" required></b-form-input>
          </b-form-group>

          <b-form-group label="Last Name" label-for="last-name" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="lastName" id="last-name" placeholder="Doe" size="lg" required></b-form-input>
          </b-form-group>

          <b-form-group label="Company" label-for="company" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="company" id="company" placeholder="Acme" size="lg" required></b-form-input>
          </b-form-group>

          <div class="negative-space"></div>

          <b-form-group label="Email" label-for="new-email" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="email" id="new-email" placeholder="Email" size="lg" required></b-form-input>
          </b-form-group>

          <b-form-group label="Password" label-for="new-password" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="password" type="password" id="new-password" placeholder="Password" size="lg" required></b-form-input>
          </b-form-group>

          <b-form-group label="Confirm Password" label-for="confirm-password" label-cols-md="3" label-size="lg" label-align-md="left">
            <b-form-input v-model="confirmPassword" type="password" id="confirm-password" placeholder="Confirm password" size="lg" required></b-form-input>
          </b-form-group>

          <b-button style="margin:20px 0" type="submit" variant="primary" :disabled="!isValidSignup()" pill block>Sign up</b-button>
        </b-form>

        <p style="color:white">Already have an account? <router-link to="/login">Log in</router-link></p>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
    import { BContainer, BRow, BCol, BForm, BFormGroup, BFormInput, BButton } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'
  
  export default {
    name: "SignUp",
    components: {
      BContainer,
      BRow,
      BCol,
      BForm,
      BFormGroup,
      BFormInput,
      BButton,
    },
    data() {
      return {
        firstName: '',
        lastName: '',
        company: '',
        email: '',
        password: '',
        confirmPassword: '',
      }
    },
    methods: {
      isValidSignup() {
        return !(
            this.isBlank(this.firstName) ||
            this.isBlank(this.lastName) ||
            this.isBlank(this.company) ||
            this.isBlank(this.email) ||
            this.isBlank(this.password)
        ) && this.password === this.confirmPassword;
      },
      isBlank(str) {
        return str === null || str === undefined || str === '';
      }
    }
  }
</script>

<style scoped>
  form {
    color: white;
  }

  a {
    color: #3A99FC;
  }

  .negative-space {
    padding: 20px;
  }
</style>