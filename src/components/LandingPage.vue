<template>
  <div class="land-page">
    <header>
      <h1>
        Decentralized <br />
        Tweeting Platform
      </h1>
      <p>Twitter clone build on ethereum</p>
    </header>

    <div class="meta-connection">
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
  components: {},
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

header,
.meta-connection {
  position: relative;
  left: 70px;
}
header {
  top: 120px;
}
.meta-connection {
  top: 150px;
}
a {
  text-decoration: none;
  color: white;
  font-size: 1.5rem;
}
button {
  width: 11rem;
  background: white;
  padding: 5px 8px;
  color: black;
  text-align: center;
  border-radius: 20px;
}
.meta-connection p {
  margin-top: 1.2rem;
}
</style>
