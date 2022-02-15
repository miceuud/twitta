<template>
  <div id="app">
    <div id="nav">
      <nav-bar />
      <!-- <router-link >Twitta</router-link> | -->
      <!-- <router-link to="/about">About</router-link> -->
    </div>
    <router-view />
  </div>
</template>
<script>
import NavBar from "../src/components/Navbar.vue";

export default {
  components: {
    NavBar,
  },
};
</script>

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
  color: white;
}
#app {
  color: white;
}
.logo {
  position: relative;
  top: 15px;
}
a {
  text-decoration: none;
}
.logo-link,
.loger {
  position: absolute;
  top: 0;
}
.logo-link {
  left: 30px;
}
.loger {
  right: 20px;
}
.btn {
  width: 7rem;
}
</style>
