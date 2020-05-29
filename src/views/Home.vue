<template>
  <b-container>
    <b-row align-v="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="6" data-aos="fade-right" data-aos-duration="1500">
        <h2 id="tagline">Power your business development with <i>data-driven decisions</i></h2>
      </b-col>

      <b-col md="6" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="500">
        <b-card-group columns style="display:inline">
          <HoverCard title="Black Hat" :description="products.blackHat" :img-src="require('../assets/images/neon-question-mark.jpg')" img-alt="Bookshelf (Photo by Emily Morter on Unsplash)" @click.native="redirect('/services#products')"></HoverCard>

          <HoverCard title="Price to Win" :description="products.priceToWin" :img-src="require('../assets/images/data.jpg')" img-alt="Data" @click.native="redirect('/services#products')"></HoverCard>

          <HoverCard title="Win/Loss Forensic Analysis" :description="products.forensicAnalysis" :img-src="require('../assets/images/magnifying_glass.jpg')" img-alt="Magnifying glass on book (Photo by João Silas on Unsplash)" @click.native="redirect('/services#products')"></HoverCard>
        </b-card-group>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import HoverCard from "../components/HoverCard.vue";
  import { BCardGroup, BCol, BRow, BContainer } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'
  import constants from '../assets/constants.js'

  export default {
    name: 'Home',
    components: {
      BCardGroup,
      BCol,
      BRow,
      BContainer,
      HoverCard,
    },
    data() {
      return {
        products: constants.products
      }
    },
    methods: {
      redirect(to) {
        this.$router.push(to);
      },
    }
  }
</script>

<style scoped>
  #tagline {
    text-align: left;
    font-size: 40px;
    color: white;
    text-shadow: 1px 1px black;
  }

  .card {
    color: white;
    text-shadow: 1px 1px black;
  }

  .card:hover {
    cursor: pointer;
  }
</style>
