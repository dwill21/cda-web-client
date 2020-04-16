<template>
  <b-container>
    <b-row align-v="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="6" data-aos="fade-right" data-aos-duration="1500">
        <h2 id="tagline">Power your business development with <span class="emphasis">data-driven decisions</span></h2>
      </b-col>

      <b-col md="6" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="500">
        <b-card-group columns style="display:inline">
          <HoverCard title="Black Hat" :description="dummyText" :img-src="require('../assets/neon-question-mark.jpg')" img-alt="Bookshelf (Photo by Emily Morter on Unsplash)" @click.native="redirect('/services#black-hat')"></HoverCard>

          <HoverCard title="Price to Win" :description="dummyText" :img-src="require('../assets/data.jpg')" img-alt="Data" @click.native="redirect('/services#price-to-win')"></HoverCard>

          <HoverCard title="Win/Loss Forensic Analysis" :description="dummyText" :img-src="require('../assets/magnifying_glass.jpg')" img-alt="Magnifying glass on book (Photo by João Silas on Unsplash)" @click.native="redirect('/services#win-loss-forensic-analysis')"></HoverCard>
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
        dummyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean congue, erat ut vehicula mollis, sem lacus pellentesque leo, non posuere lacus erat ac ante. Suspendisse bibendum mi sit amet nisi.",
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

  .emphasis {
    color: mediumspringgreen;
  }

  .card {
    color: white;
    text-shadow: 1px 1px black;
  }

  .card:hover {
    cursor: pointer;
  }
</style>
