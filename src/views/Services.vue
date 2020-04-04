<template>
  <b-container id="main-content">
    <h2 style="padding-top:90px; text-align:center">What we do</h2>

    <b-row>
      <b-col>
        <h2 id="black-hat" class="new-section">Black Hat</h2>
        <p v-for="(paragraph, index) in defaultText.split('\n')" :key="index">{{paragraph}}</p>
      </b-col>
    </b-row>

    <b-row>
      <b-col>
        <h2 id="price-to-win" class="new-section">Price to Win</h2>
        <p v-for="(paragraph, index) in defaultText.split('\n')" :key="index">{{paragraph}}</p>
      </b-col>
    </b-row>

    <b-row>
      <b-col>
        <h2 id="win-loss-forensic-analysis" class="new-section">Win/Loss Forensic Analysis</h2>
        <p v-for="(paragraph, index) in defaultText.split('\n')" :key="index">{{paragraph}}</p>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
  import { BCol, BRow, BContainer } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: 'Home',
    components: {
      BCol,
      BRow,
      BContainer,
    },
    data() {
      return {
        defaultText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel felis ante. Vestibulum mattis tellus et nunc vehicula, id pellentesque massa tristique. Donec euismod risus a nibh congue, a vulputate magna dictum. Mauris tincidunt aliquam risus, quis tincidunt tortor gravida nec. In placerat purus lectus, aliquam egestas lacus tempus et. Pellentesque nec libero sed est rhoncus fermentum non at erat. Donec id auctor massa. Nulla vehicula mauris tristique commodo hendrerit. In sed nisi velit. Vivamus blandit est ante, eget scelerisque diam posuere id. Pellentesque commodo gravida libero, interdum feugiat felis condimentum quis. Aliquam ornare dignissim ultricies. Donec lobortis lectus sed gravida hendrerit.\n' +
          '\n' +
          'Ut ultrices, augue eget consectetur ullamcorper, eros turpis mollis ligula, non efficitur massa tellus ut metus. Nam eleifend est nec magna convallis suscipit. Mauris vitae nisl commodo, tristique quam eget, luctus metus. Curabitur sollicitudin mattis maximus. Vestibulum in nisl a odio ornare dapibus a at ipsum. Sed nulla neque, iaculis eget pulvinar sit amet, malesuada sit amet arcu. Duis sagittis erat sit amet mi lacinia tempus.\n' +
          '\n' +
          'Donec ullamcorper aliquam nibh, eget facilisis nulla viverra ac. Praesent eleifend, magna quis facilisis ultricies, leo metus tincidunt nibh, non rutrum tortor sapien id diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla porttitor metus ut magna lacinia, egestas molestie turpis scelerisque. Cras fringilla nisi ac interdum luctus. Ut a efficitur odio. Proin et lectus eu orci scelerisque tempus. Vivamus non faucibus elit. Sed porta, lorem et semper imperdiet, mauris enim maximus nunc, sed sollicitudin mi risus quis ipsum. Curabitur sodales in diam quis placerat. Donec iaculis luctus ex in vulputate. Nam in rhoncus justo. Mauris ligula nulla, rutrum sit amet fermentum ac, pretium rhoncus dui. Fusce porta vulputate dui, congue interdum ligula pellentesque a.'
      }
    },
    mounted() {
      if (this.$route.hash) {
        location.href = this.$route.hash;
      }
    },
  }
</script>

<style scoped>
  #main-content {
    min-height: calc(100vh - 110px);
    text-align: left;
    color: white;
  }

  .new-section {
    margin: 40px 0;
  }
</style>