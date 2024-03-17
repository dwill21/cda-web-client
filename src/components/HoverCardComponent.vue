<template>
  <b-card class="mb-0 card">
    <b-card-title>
      {{title}}
    </b-card-title>
  </b-card>
</template>

<script>
import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';
import { BCard, BCardTitle } from 'bootstrap-vue';

@Component({
  components: {
    BCard,
    BCardTitle,
  },
})
export default class HoverCardComponent extends Vue {
  @Prop(String) title;
}
</script>

<style lang="scss" scoped>
  @import '../assets/scss/colors';

  .card {
    height: 100px;
    background-color: $background-color-1;
    color: white;
    text-shadow: 1px 1px black;
  }

  .card:hover {
    background: $secondary-color;
    cursor: pointer;
  }
</style>
