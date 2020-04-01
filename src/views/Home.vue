<template>
  <div class="home">
    <Header></Header>
    <HelloWorld msg="Welcome to Your New Website"/>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import Header from '@/components/Header.vue'

export default {
  name: 'Home',
  components: {
    HelloWorld,
    Header
  }
}
</script>
