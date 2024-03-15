<template>
  <b-container>
    <b-row align-v="center" class="h-100" style="min-height: calc(100vh - 110px)">
      <b-col md="6" data-aos="fade-right" data-aos-duration="1500">
        <h1 id="tagline">Power your business development with <i>data-driven decisions</i></h1>
      </b-col>

      <b-col md="6" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="500">
        <b-card-group columns style="display:inline">
          <HoverCard
            title="Black Hat"
            @click.native="redirect('/services#black-hat')"
          ></HoverCard>

          <HoverCard
            title="Price to Win"
            @click.native="redirect('/services#ptw')"
          ></HoverCard>

          <HoverCard
            title="Win/Loss Forensic Analysis"
            @click.native="redirect('/services#win-loss-analysis')"
          ></HoverCard>

          <HoverCard
            title="Data-based Strategic Planning"
            @click.native="redirect('/services#strategic-planning')"
          ></HoverCard>

          <HoverCard
            title="Data-based Tactical Support"
            @click.native="redirect('/services#tactical-support')"
          ></HoverCard>
        </b-card-group>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import Vue from 'vue';
import Component from 'vue-class-component';
import {
  BCardGroup, BCol, BRow, BContainer,
} from 'bootstrap-vue';
import HoverCard from '../components/HoverCardComponent.vue';
import constants from '../assets/constants';

@Component({
  components: {
    BCardGroup,
    BCol,
    BRow,
    BContainer,
    HoverCard,
  },
})
export default class HomeView extends Vue {
  products = constants.products;

  redirect(to) {
    this.$router.push(to);
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
