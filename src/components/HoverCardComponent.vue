<template>
  <b-card class="card">
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
    background-color: $background-color-1;
    height: 100px;
  }

  .card:hover {
    background: $secondary-color;
  }
</style>
