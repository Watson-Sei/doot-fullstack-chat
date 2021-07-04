export default function({ $axios, app }) {
    $axios.onRequest(config => {
        config.headers.client = app.$cookies.get('client')
        config.headers["access-token"] = app.$cookies.get('access_token')
        config.headers.uid = app.$cookies.get('uid')
        config.headers["token-type"] = app.$cookies.get('token-type')
    })

    $axios.onResponse(response => {
        if (response.headers.client) {
            app.$cookies.set('access-token', response.headers["access-token"])
            app.$cookies.set('client', response.headers.client)
            app.$cookies.set('uid', response.headers.uid)
            app.$cookies.set('token-type', response.headers["token-type"])
        }
    })
}