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
import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';
import { BCard, BCardText, BCardTitle } from 'bootstrap-vue';

@Component({
  components: {
    BCard,
    BCardTitle,
    BCardText,
  },
})
export default class GrabberCardComponent extends Vue {
  @Prop(String) bold;

  @Prop([Array, String]) text;

  get cardText() {
    return Array.isArray(this.text) ? this.text : [this.text];
  }
}
</script>

<style lang="scss" scoped>
  @import '../assets/scss/display-breakpoints.scss';

  @media (min-width: $bootstrap-md) {
    .w-70 {
      width: 70%;
    }
  }
</style>
