<template>
  <div id="main-content">
    <h2 style="padding:90px 0 40px; text-align:center; text-shadow: 1px 1px black">Our advantage</h2>
    <p v-for="paragraph in defaultText.split('\n')" :key="paragraph">{{paragraph}}</p>
  </div>
</template>

<script>
  export default {
    name: "Advantage",
    data() {
      return {
        defaultText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pharetra quis sem ac feugiat. Vivamus vitae mattis justo. Aliquam ut mauris sapien. Duis nisi neque, suscipit a fringilla sed, commodo eu neque. Fusce nec arcu non magna feugiat interdum sit amet ac lacus. Nullam porta lacus at eros eleifend pellentesque. Vivamus a libero vel metus ullamcorper accumsan eget at neque. Mauris volutpat in ligula in efficitur. Maecenas id turpis rhoncus, dapibus nisl hendrerit, fringilla orci.\n' +
            '\n' +
            'Mauris vitae augue tempus, sollicitudin massa vitae, aliquet tellus. Suspendisse facilisis sapien ut pulvinar dictum. Duis interdum blandit est at pellentesque. In sem velit, varius vitae tempor ut, pulvinar eu leo. Aenean dictum elit et augue dignissim feugiat. Morbi maximus massa in enim iaculis faucibus. Proin ut tempus sem. Sed maximus mauris nec mi commodo, ac dignissim arcu laoreet. Aliquam tristique, ligula vitae auctor viverra, eros massa porta massa, quis pretium neque nisi luctus nisi. Nullam at dictum turpis, sit amet euismod odio.\n' +
            '\n' +
            'Morbi mollis vel ante eu tempus. Aenean sit amet tortor eu nisl sodales posuere. Fusce congue velit purus, pharetra pretium odio sollicitudin id. Duis blandit augue quis sapien rutrum venenatis. Etiam ultricies eros vitae dolor eleifend, sit amet pulvinar nulla tempor. Suspendisse at ligula nulla. Nunc pretium, metus sed mollis posuere, dui velit dictum leo, id ornare nisl arcu et libero. Maecenas a cursus metus, sed auctor enim. Quisque et ipsum scelerisque, lobortis nunc quis, cursus massa. Nulla dignissim magna vitae blandit molestie. Etiam in arcu nisi. In non nibh quis purus pellentesque egestas ac id arcu.\n' +
            '\n' +
            'Quisque pharetra libero et lorem dignissim, vitae pretium neque gravida. Sed nec porttitor ipsum, sit amet efficitur nisi. Donec rhoncus scelerisque nulla vel congue. Donec malesuada sem vel mauris rutrum pulvinar. Cras ullamcorper ante ipsum, ut luctus orci ullamcorper a. Maecenas diam massa, facilisis at orci non, consectetur mattis augue. Morbi leo dolor, gravida quis felis eu, pulvinar aliquet enim. Sed rutrum vulputate ex, in molestie nulla laoreet eget. Nunc pharetra dignissim nibh in sollicitudin. Mauris et mattis enim.\n' +
            '\n' +
            'Praesent ligula enim, faucibus vel ligula eu, accumsan feugiat ex. Vestibulum bibendum nec elit ac tempus. Sed cursus sollicitudin lacus non vestibulum. Nam sit amet tristique lectus. Etiam et augue dui. Nullam condimentum semper quam. Maecenas tincidunt id est nec laoreet. Mauris in orci felis.',
      }
    },
  }
</script>

<style scoped>
  #main-content {
    min-height: calc(100vh - 110px);
    width: 80%;
    margin: 0 auto 20px;
    padding: 0 15px;

    color: white;
    text-align: left;
  }
</style>