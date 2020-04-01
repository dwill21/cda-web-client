<template>
  <div>
    <Header></Header>
    <div id="bg"></div>

    <b-container id="main-content">
      <b-row>
        <b-col>
          <h2 id="tagline">Power your business development with <span class="emphasis">data-driven decisions</span></h2>
        </b-col>

        <b-col cols="2"></b-col>

        <b-col>
          <b-card-group id="cards" columns>
            <b-card title="Price to Win" :img-src="require('../assets/data.jpg')" img-alt="Data" overlay class="card"></b-card>

            <b-card title="Competitive Intel" :img-src="require('../assets/charts.jpeg')" img-alt="Image" overlay class="card"></b-card>

            <b-card title="Proposal Writing" :img-src="require('../assets/documents.jpeg')" img-alt="Image" overlay class="card"></b-card>
          </b-card-group>
        </b-col>
      </b-row>
    </b-container>

    <Footer></Footer>
  </div>
</template>

<script>
import Header from '../components/Header.vue'
import Footer from '../components/Footer.vue'
import { BCard, BCardGroup, BCol, BContainer, BRow } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

export default {
  name: 'Home',
  components: {
    Header,
    Footer,
    BCard,
    BCardGroup,
    BCol,
    BContainer,
    BRow,
  },
}
</script>

<style scoped>
  #bg {
    height: 100vh;
    width: 100vw;
    background-color: #444e57;
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
    object-fit: cover;
    color: white;
    text-shadow: 1px 1px black;
  }
</style>
