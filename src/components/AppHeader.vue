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
    <img class="logo" src="../img/Logo-Netflix.png" alt="">
    <div>
        <i class="fa-solid fa-magnifying-glass"></i>
        <input placeholder="Cerca" @keyup.enter="$emit('search')" @keyup="$emit('search')" v-model="store.valueSearch"
            type="search">
        <!-- <button @click="$emit('search')"></button> -->
    </div>

</template>

<style lang="scss" scoped>
@use '../style.scss' as *;

.logo {
    width: 150px;
}

.fa-magnifying-glass {
    font-size: 18px;
    color: rgba(255, 255, 255, 0.5);
    margin-right: 10px;
    vertical-align: middle;
}

input {
    color: $red-netflix;
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-radius: 0;
    padding: 6px;
    width: 35vh;
    background-color: black;

    &:hover {
        border-color: white;
    }
}
</style>