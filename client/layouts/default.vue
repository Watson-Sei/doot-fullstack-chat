<template>
  <v-app>
    <div v-if="$store.state.auth.loggedIn && this.$route.path != '/login'">
      <v-navigation-drawer
        app
      >
        <v-container>
          <v-list dense nav>
            <v-list-item v-for="history in historys"
              :to="`/rooms/` + history.room.id + `/`"
              :key="history.id"
            >
              <v-list-item-content>
                <v-list-item-title>
                  {{ history.user.email }}
                </v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </v-list>
        </v-container>
      </v-navigation-drawer>
      <v-app-bar app>
        <v-toolbar-title>Room {{ this.$route.params.id }}</v-toolbar-title>
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
  computed: {
    historys () {
      return this.$store.getters['chat/historys']
    }
  },
}
</script>
