<template>
  <div id="app">
    <Header></Header>

    <!-- Content -->
    <router-view/>

    <Footer></Footer>
  </div>
</template>

<script>
  import Header from './components/Header.vue'
  import Footer from './components/Footer.vue'

  export default {
    components: {
      Header,
      Footer,
    },
  }
</script>

<style lang="scss">
@import 'assets/colors.scss';

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background-color: $background-color;
  overflow-y: auto;
}
</style>
