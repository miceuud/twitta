<template>
  <div>
    <div class="logo">
      <router-link to=""> Twitta </router-link>
    </div>
    <header>
      <h1>
        Decentralized <br />
        Tweeting Platform
      </h1>
    </header>

    <div class="meta-connection">
      <div>
        <p>Twitter clone build on ethereum</p>
      </div>
      <button>Create account</button>
      <p>
        Connect your account on metamask and confirm the transaction. <br />
        Pleae note this will cost a fee as transaction made on the blockchain
        attracts a fee.
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "LandingPage",
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.logo {
  position: absolute;
  right: 50px;
  top: 10px;
  font-size: 1.5rem;
}
header,
.meta-connection {
  position: relative;
  left: 70px;
}
header {
  top: 75px;
}
.meta-connection {
  top: 125px;
}
a {
  text-decoration: none;
  color: white;
}
</style>
