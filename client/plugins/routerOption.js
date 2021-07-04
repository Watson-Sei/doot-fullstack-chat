import fetch from 'node-fetch'

export default async ({ app, store, route }) => {
    app.router.afterEach((to, from) => {
        if (route.name != 'login') {
            fetch('http://localhost:5000/users/history', {
                headers: {
                    'access-token': app.$cookies.get('access-token'),
                    'client': app.$cookies.get('client'),
                    'uid': app.$cookies.get('uid')
                }
            })
            .then(res => res.json())
            .then(json => store.commit('chat/refresh', json))
        }
    })
}