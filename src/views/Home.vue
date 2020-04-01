<template>
  <div>
    <Header></Header>
    <div id="bg"></div>
    <div id="tagline">
      <h2 style="font-size: 40px">Power your business development with data-driven decisions</h2>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from '../components/Header.vue'
import Footer from '../components/Footer.vue'

export default {
  name: 'Home',
  components: {
    Header,
    Footer,
  },
}
</script>

<style scoped>
  #bg {
    height: 100vh;
    width: 100vw;
    background-color: #444e57;
  }

  #tagline {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 60%;
    color: white;
  }
</style>
