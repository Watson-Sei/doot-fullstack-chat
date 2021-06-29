<template>
  <button @click="testIndex">
    TestIndex
  </button>
</template>

<script>
export default {
  data() {
    return {}
  },
  methods: {
    testIndex() {
      this.$axios.get('/test/index')
      .then((response) => {
        console.log(response)
      })
    }
  }
}
</script>