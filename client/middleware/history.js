import fetch from 'node-fetch'

export default function ({ app, store, route }) {
    if (store.state.auth.loggedIn) {
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
    }
}