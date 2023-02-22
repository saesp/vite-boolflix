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
    <h3 v-if="store.valueSearch == ''">Film più popolari</h3>
    <h3 v-else>Cercati da te</h3>
    <div :class="store.valueSearch == '' ? 'movies-container' : 'movies-search-container'">
        <div class="movie" v-for="(movie, index) in store.moviesTvList" :key="index">
            <Movie :info="movie" />
        </div>
    </div>

    <h3 v-if="store.valueSearch == ''">Serie Tv più popolari</h3>
    <div class="movies-container">
        <div class="movie" v-for="(movie, index) in store.seriesList" :key="index">
            <Movie :info="movie" />
        </div>
    </div>
</template>

<style lang="scss" scoped>
@use '../style.scss' as *;



.movies-container {
    // flex-wrap: wrap;
    overflow: auto;
    display: -webkit-box;
    // scrollbar-color: red;


    .movie {
        width: 175px;
        margin: 5px 0;
    }
}

h3 {
    margin: 0 10px;
}

// ::-webkit-scrollbar {
//     // height: 5px;
//     /* per browser Firefox */
// }

.movies-search-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 10px;

    .movie {
        width: calc(100%/7 - 10px);
    }
}


// scrollbar
.movies-container::-webkit-scrollbar {
    height: 7px;
    // width: 1rem;
}

.movies-container::-webkit-scrollbar-thumb {
    --tw-bg-opacity: 1;
    background-color: rgba(86, 88, 105, var(--tw-bg-opacity));
}

.movies-container::-webkit-scrollbar-thumb {
    background-color: $red-netflix;
    border-radius: 1000px;
    // --tw-border-opacity: 1;
    // border-color: rgba(255, 255, 255, var(--tw-border-opacity));
    // border-width: 1px;
}

.movies-container::-webkit-scrollbar-track {
    background-color: rgba(110, 110, 110, 0.257);
    border-radius: 1000px;
}
</style>