<template>
  <div id="main-content" class="mx-auto">
    <h2 style="padding: 90px 0 60px">Meet our team</h2>

    <b-card-group style="display:block" data-aos="fade-right" data-aos-duration="1000">
      <b-card v-for="member in teamArray" :key="member.name" style="margin-bottom:20px; background:#867167">
        <b-row no-gutters>
          <b-col lg="4" class="my-lg-auto">
            <b-card-title>{{member.name}}</b-card-title>
            <b-card-img :src="require('../assets/avatar-placeholder.png')" class="avatar my-lg-0 my-3"></b-card-img>
          </b-col>

          <b-col lg="8">
            <b-card-text v-for="paragraph in member.bio.split('\n')" :key="paragraph" style="text-align:left">{{paragraph}}</b-card-text>
          </b-col>
        </b-row>
      </b-card>
    </b-card-group>
  </div>
</template>

<script>
  import { BCard, BCardGroup, BCardImg, BCardText, BCardTitle, BCol, BRow } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: 'About',
    components: {
      BCard,
      BCardGroup,
      BCardImg,
      BCardText,
      BCardTitle,
      BCol,
      BRow,
    },
    data() {
      return {
        teamArray: [
          {
            name: 'Frantz DeWillis',
            bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce efficitur, risus mattis aliquam ornare, neque sapien laoreet nibh, eu ornare arcu ligula sit amet lectus. Fusce sit amet ipsum id enim tempor consequat eu varius lacus. Cras rutrum erat quis nunc rutrum, et mollis tellus egestas. Pellentesque a tempus mauris, quis lobortis orci. Nunc faucibus mi vitae lectus condimentum, sed pretium odio vehicula. Duis auctor porta metus ac fermentum. Ut id lacinia eros. Cras mi orci, gravida sed ex at, tempor placerat nisi. Vestibulum varius placerat ligula, ut consequat felis molestie nec. Mauris tempus faucibus tortor, a molestie mi cursus eu. Etiam eleifend massa a mi efficitur suscipit. Proin facilisis ex lorem, non suscipit eros fermentum ac. Vivamus suscipit id justo vel sollicitudin. Nullam et nisl id ipsum finibus consequat sit amet eu turpis.\n' +
                '\n' +
                'Morbi euismod lectus non est luctus, vel aliquam tellus mattis. Nullam nec turpis porta mauris dignissim accumsan sit amet pellentesque lorem. Quisque lorem mi, pharetra sit amet dui venenatis, convallis egestas risus. Quisque leo ligula, maximus non aliquet non, bibendum sed urna. Phasellus dictum eros felis, sit amet sollicitudin enim fermentum ut. Morbi volutpat lectus at felis tristique venenatis. Sed porta elementum turpis. Donec aliquet sit amet sem ut suscipit. Maecenas ac ex quis sapien vehicula scelerisque. Maecenas urna neque, efficitur vel tortor id, scelerisque commodo diam. Morbi purus purus, ultricies iaculis cursus eu, auctor vel est. Curabitur vitae faucibus lorem, quis pulvinar libero. Suspendisse ullamcorper sit amet dui nec malesuada.',
          },
          {
            name: 'Leon Hachat',
            bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis enim sit amet eros mollis posuere. Cras eget dignissim magna. Sed vulputate porta ornare. Aliquam iaculis quam a nisl convallis dapibus. Etiam iaculis velit quis tincidunt sodales. Curabitur ultrices turpis odio. Mauris vitae elit ante. Etiam in mi in diam sodales imperdiet. Donec sagittis facilisis felis. Quisque interdum consequat suscipit. Pellentesque ut aliquam orci. Aliquam in ante at ligula bibendum dapibus eget non nisi.\n' +
                '\n' +
                'Ut laoreet rutrum aliquam. Etiam elementum tellus eu magna posuere, eu fermentum est suscipit. Pellentesque eleifend, tellus sed lobortis semper, neque enim cursus ligula, et dictum mauris diam eget mauris. Sed vestibulum metus at purus consectetur sollicitudin. Nulla fringilla maximus tellus, at fringilla lectus aliquet eu. Maecenas finibus tortor at magna imperdiet, a volutpat ex mattis. Proin et pretium quam. Vivamus lorem eros, tempor vel dui in, ultrices aliquet odio. Phasellus sed justo quis felis pellentesque aliquam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut egestas nibh leo, quis molestie diam ultricies ac. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
          },
        ]
      }
    }
  }
</script>

<style scoped>
  h2, h4 {
    text-shadow: 1px 1px black;
  }

  #main-content {
    min-height: calc(100vh - 110px);
    width: 80%;
    color: white;
  }

  .avatar {
    height:25vmin;
    width:25vmin;
    border-radius: 50%;
  }
</style>
