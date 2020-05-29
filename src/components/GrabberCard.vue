<template>
  <b-card bg-variant="light" text-variant="dark" class="my-4 py-4">
    <b-card-title class="w-70 mx-auto mb-4" style="text-shadow:none">{{bold}}</b-card-title>
    <b-card-text
      v-for="(paragraph, idx) in cardText"
      :key="idx"
      class="w-70 mx-auto"
    >
      <span v-html="paragraph"></span>
    </b-card-text>
  </b-card>
</template>

<script>
  import { BCard, BCardText, BCardTitle } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "GrabberCard",
    components: {
      BCard,
      BCardTitle,
      BCardText
    },
    props: {
      bold: String,
      text: [Array, String],
    },
    computed: {
      cardText() {
       return Array.isArray(this.text) ? this.text : [this.text]
      }
    }
  }
</script>

<style scoped>
  @media (min-width: 768px) {
    .w-70 {
      width: 70%;
    }
  }
</style>