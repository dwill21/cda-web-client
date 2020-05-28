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
  import { BCard, BCardText, BCardTitle } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: "HoverCard",
    components: {
      BCard,
      BCardText,
      BCardTitle,
    },
    props: {
      title: String,
      description: String,
      imgSrc: String,
      imgAlt: String,
    },
    data() {
      return {
        isDescriptionVisible: false,
      }
    },
    methods: {
      showDescription(hovered) {
        this.isDescriptionVisible = hovered;
      },
    }
  }
</script>

<style lang="scss" scoped>
  @import '../assets/colors.scss';

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