<template>
  <div id="app">
    <div id="nav">
      <!-- <router-link >Twitta</router-link> | -->
      <!-- <router-link to="/about">About</router-link> -->
    </div>
    <router-view />
  </div>
</template>
./components/LandingPage.vue

<style>
@import url("https://fonts.googleapis.com/css2?family=Comforter+Brush&family=Montserrat:wght@300&display=swap");
body {
  background: rgb(2, 0, 36);
  background: linear-gradient(
    90deg,
    rgba(2, 0, 36, 1) 0%,
    rgba(121, 9, 16, 1) 50%
  );
  margin: 0;
  padding: 0;
}
#app {
  color: white;
}
</style>
