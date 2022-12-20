<script>
import Movie from './Movie.vue'
import { store } from '../store.js'

export default {
    name: "MoviesList",
    components: {
        Movie
    },

    data() {
        return {
            store,
        }
    },
}
</script>

<template>
    <h3 v-if="store.valueSearch == ''">I più popolari</h3>
    <h3 v-else>Cercati da te</h3>
    <div class="container-movies">
        <div class="movie" v-for="(movie, index) in store.moviesList" :key="index">
            <Movie :info="movie" />
        </div>
    </div>
</template>

<style lang="scss" scoped>
// @use '../style.scss' as *;

.container-movies {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;

    .movie {
        width: calc(100% / 6 - 20px);
        margin: 10px;
    }
}

h3 {
    margin: 0 10px;
}
</style>