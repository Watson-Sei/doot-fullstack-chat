export const state = () => ({
    historys: []
})

export const getters = {
    historys: state => {
        return state.historys
    }
}

export const mutations = {
    refresh(state, historys) {
        console.log("Mutations Refresh:", historys)
        if (historys != null )
        state.historys = historys
    }
}