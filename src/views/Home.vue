<template>
  <div id="content-wrapper">
    <b-container id="main-content">
      <b-row>
        <b-col>
          <h2 id="tagline">Power your business development with <span class="emphasis">data-driven decisions</span></h2>
        </b-col>

        <b-col>
          <b-card-group id="cards" columns>
            <b-card title="Price to Win" :img-src="require('../assets/data.jpg')" img-alt="Data" overlay class="card"></b-card>

            <b-card title="Competitive Intel" :img-src="require('../assets/charts.jpeg')" img-alt="Image" overlay class="card"></b-card>

            <b-card title="Proposal Writing" :img-src="require('../assets/documents.jpeg')" img-alt="Image" overlay class="card"></b-card>
          </b-card-group>
        </b-col>
      </b-row>
    </b-container>
  </div>
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
}
</script>

<style scoped>
  #content-wrapper {
    position: relative;
    top: 0;
    left: 0;
    width: 100vw;
    height: calc(100vh - 55px); /* leaves room for the footer */
  }

  #main-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 80%;
  }

  #tagline {
    position: relative;
    top: 50%;
    transform: translateY(-50%);
    text-align: left;
    font-size:40px;
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
</style>
