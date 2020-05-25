<template>
  <b-container>
    <b-row align-v="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="6" data-aos="fade-right" data-aos-duration="1500">
        <h2 id="tagline">Power your business development with <i>data-driven decisions</i></h2>
      </b-col>

      <b-col md="6" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="500">
        <b-card-group columns style="display:inline">
          <HoverCard title="Black Hat" :description="blackHat" :img-src="require('../assets/neon-question-mark.jpg')" img-alt="Bookshelf (Photo by Emily Morter on Unsplash)" @click.native="redirect('/services#products')"></HoverCard>

          <HoverCard title="Price to Win" :description="priceToWin" :img-src="require('../assets/data.jpg')" img-alt="Data" @click.native="redirect('/services#products')"></HoverCard>

          <HoverCard title="Win/Loss Forensic Analysis" :description="forensicAnalysis" :img-src="require('../assets/magnifying_glass.jpg')" img-alt="Magnifying glass on book (Photo by João Silas on Unsplash)" @click.native="redirect('/services#products')"></HoverCard>
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
        blackHat: 'We collect open source competitive intelligence on desired\n' +
          'competitors, then present it to and facilitate a client-participant CDA Black Hat. Our process and model\n' +
          'produce 1) predicted competition outcome and 2) alternative win strategies that increase probability of\n' +
          'win.',
        priceToWin: 'We collect open source competitive intelligence data to populate our predictive\n' +
          'models to provide a client most-likely competitor bid prices, best value scores, and Probability of Win.\n' +
          'We also provide bid aggressiveness targets for client bid decision-maker consideration.',
        forensicAnalysis: 'We analyze wins and losses through our objective framework to\n' +
          'determine how and why your company won or lost a pursuit. This aids a client in determining what has\n' +
          'worked and what has not, free from the natural, inherent bias of solely using internal company\n' +
          'personnel.'
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
