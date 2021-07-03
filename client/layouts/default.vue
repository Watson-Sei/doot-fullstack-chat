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
        <v-toolbar-title>Romm {{ this.$route.params.id }}</v-toolbar-title>
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
      historys: [
        {
          "id": 3,
          "room": {
              "id": 2,
              "name": null,
              "created_at": "2021-07-01T01:01:52.360Z",
              "updated_at": "2021-07-01T01:01:52.360Z"
          },
          "user": {
              "id": 2,
              "provider": "email",
              "uid": "test2@example.com",
              "allow_password_change": false,
              "name": null,
              "nickname": null,
              "image": null,
              "email": "test2@example.com",
              "created_at": "2021-06-30T12:30:28.746Z",
              "updated_at": "2021-06-30T12:30:28.810Z"
          }
      },
      {
          "id": 5,
          "room": {
              "id": 3,
              "name": null,
              "created_at": "2021-07-02T02:55:35.432Z",
              "updated_at": "2021-07-02T02:55:35.432Z"
          },
          "user": {
              "id": 3,
              "provider": "email",
              "uid": "test3@example.com",
              "allow_password_change": false,
              "name": null,
              "nickname": null,
              "image": null,
              "email": "test3@example.com",
              "created_at": "2021-06-30T12:30:37.164Z",
              "updated_at": "2021-06-30T12:30:37.228Z"
          }
      }
      ]
    }
  }
}
</script>
