<template>
  <v-app>
    <div v-if="$store.state.auth.loggedIn && this.$route.path != '/login'">
      <v-navigation-drawer
        app
      >
      </v-navigation-drawer>
      <v-app-bar app>
        <v-toolbar-title>User 1</v-toolbar-title>
      </v-app-bar>
    </div>
    <div v-else>
      <v-app-bar app>
        <v-toolbar-title>doot-fullstack-chat</v-toolbar-title>
      </v-app-bar>
    </div>
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-footer
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
