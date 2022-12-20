<script>
import { store } from '../store.js'

export default {
    name: "AppHeader",

    data() {
        return {
            store,
        }
    },
}
</script>

<template>
    <div>
        <img class="logo" src="../img/Logo-Netflix.png" alt="">
        <input placeholder="Cerca" @keyup.enter="$emit('search')" @keyup="$emit('search')" v-model="store.valueSearch"
            type="search">
        <!-- <button @click="$emit('search')"></button> -->
    </div>
</template>

<style lang="scss" scoped>
.logo {
    width: 150px;
}

input {
    color: white;
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-radius: 0;
    padding: 6px;
    width: 40vh;
    background-color: black;

    &:hover {
        border-color: white;
    }
}
</style>