<template>
  <div id="app">
    <HeaderComponent></HeaderComponent>

    <!-- Content -->
    <router-view/>

    <FooterComponent></FooterComponent>
  </div>
</template>

<script>
import HeaderComponent from './components/HeaderComponent.vue';
import FooterComponent from './components/FooterComponent.vue';

export default {
  components: {
    HeaderComponent,
    FooterComponent,
  },
};
</script>

<style lang="scss">
@import './assets/scss/colors';

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background-color: $background-color-0;
  overflow-y: auto;
}
</style>
