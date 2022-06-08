<template>
  <b-card :title="title" :img-src="imgSrc" :img-alt="imgAlt" overlay v-b-hover="showDescription">
    <transition name="fade">
      <div v-if="isDescriptionVisible" class="card-img-overlay description">
        <b-card-title>{{title}}</b-card-title>
        <b-card-text style="line-height: 1.2">{{description}}</b-card-text>
      </div>
    </transition>
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
    BCardText,
    BCardTitle,
  },
})
export default class HoverCardComponent extends Vue {
  @Prop(String) title;

  @Prop(String) description;

  @Prop(String) imgSrc;

  @Prop(String) imgAlt;

  isDescriptionVisible = false;

  showDescription(hovered) {
    this.isDescriptionVisible = hovered;
  }
}
</script>

<style lang="scss" scoped>
  @import '../assets/scss/colors';

  .fade-enter-active, .fade-leave-active {
    transition: opacity .5s;
  }

  .fade-enter, .fade-leave-to {
    opacity: 0;
  }

  .description {
    background: $secondary-color;
    border-radius: 3px;
  }
</style>
