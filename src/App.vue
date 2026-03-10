<template>
  <div id="container">
    <h1>{{ message }}</h1>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      message: 'Hello ça fonctionne pr le tp cloud'
    }
  }
}
</script>

<style scoped>
#container {
  text-align: center;
  padding: 50px;
  font-family: Arial, sans-serif;
}

h1 {
  color: #42b983;
  font-size: 2.5em;
  margin: 0;
}
</style>
