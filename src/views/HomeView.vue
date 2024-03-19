<template>
  <b-container id="content">
    <b-row align-v="center" class="h-100">
      <b-row>
        <b-col md="6" data-aos="fade-right" data-aos-duration="1500" style="align-self: stretch">
          <div id="tagline-container">
            <h1 id="tagline" class="p-2">
              Power your business development with <i>data-driven decisions</i>
            </h1>
          </div>
        </b-col>

        <b-col md="6" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="500">
          <b-card-group columns style="display:inline">
            <router-link
              v-for="(product, id) in products"
              :key="id"
              class="link-button"
              role="button"
              :to="'/services#' + product.redirectId"
            >
              <HoverCard :title="product.title"></HoverCard>
            </router-link>
          </b-card-group>
        </b-col>
      </b-row>
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
  products = [
    { title: 'Black Hat', redirectId: 'black-hat' },
    { title: 'Price to Win', redirectId: 'ptw' },
    { title: 'Win/Loss Forensic Analysis', redirectId: 'win-loss-analysis' },
    { title: 'Data-based Strategic Planning', redirectId: 'strategic-planning' },
    { title: 'Data-based Tactical Support', redirectId: 'tactical-support' },
  ];
}
</script>

<style scoped lang="scss">
@import 'src/assets/scss/colors';
@import '../assets/scss/display-breakpoints.scss';

@media (min-width: $bootstrap-md) {
  #content {
    height: calc(100vh - 110px);
  }
}

#tagline-container {
  height: 100%;
  width: 100%;
  background-image: url("../assets/images/chart.jpg");
  background-size: cover;
  border-radius: 4px;
}

#tagline {
  text-align: left;
  font-size: 40px;
  color: white;
  text-shadow: 1px 1px black;
  background-color: $background-color-0;
  border-radius: 8px;

  width: 75%;
  position: relative;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  margin-bottom: 64px;
}

.link-button {
  display: block;
}

.link-button:not(:last-of-type) {
  margin-bottom: 0.75rem;
}
</style>
