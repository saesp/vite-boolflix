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
        <span id="byse">by <i class="fa-solid fa-s"></i><i class="fa-solid fa-e"></i> <i
                class="fa-regular fa-face-smile"></i></span>
    </div>

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

#byse {
    font-size: 13px;
    color: $red-netflix;
    margin-left: 10px;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
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