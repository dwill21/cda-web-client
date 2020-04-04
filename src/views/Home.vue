<template>
  <b-container>
    <b-row align-v="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="6">
        <h2 id="tagline">Power your business development with <span class="emphasis">data-driven decisions</span></h2>
      </b-col>

      <b-col md="6">
        <b-card-group id="cards" columns>
          <b-card title="Black Hat" :img-src="require('../assets/data.jpg')" img-alt="Data" overlay class="card" @click="redirect('/services#black-hat')"></b-card>

          <b-card title="Price to Win" :img-src="require('../assets/charts.jpeg')" img-alt="Charts" overlay class="card" @click="redirect('/services#price-to-win')"></b-card>

          <b-card title="Win/Loss Forensic Analysis" :img-src="require('../assets/documents.jpeg')" img-alt="Documents" overlay class="card" @click="redirect('/services#win-loss-forensic-analysis')"></b-card>
        </b-card-group>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import { BCard, BCardGroup, BCol, BRow, BContainer } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

export default {
  name: 'Home',
  components: {
    BCard,
    BCardGroup,
    BCol,
    BRow,
    BContainer,
  },
  methods: {
    redirect(to) {
      this.$router.push(to);
    }
  }
}
</script>

<style scoped>
  #tagline {
    text-align: left;
    font-size: 40px;
    color: white;
  }

  .emphasis {
    color: mediumspringgreen;
  }

  #cards {
    display: inline;
  }

  .card {
    color: white;
    text-shadow: 1px 1px black;
  }

  .card:hover {
    cursor: pointer;
  }
</style>
