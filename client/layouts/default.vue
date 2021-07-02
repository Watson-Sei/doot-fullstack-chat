<template>
  <v-app>
    <v-navigation-drawer
      app
    >
    </v-navigation-drawer>
    <v-app-bar app>
      <v-toolbar-title>User 1</v-toolbar-title>
    </v-app-bar>
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-footer
      :absolute="!fixed"
      app
    >
      <span>&copy; {{ new Date().getFullYear() }}</span>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
    }
  }
}
</script>
