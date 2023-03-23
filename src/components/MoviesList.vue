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
    <div v-if="store.valueSearch == ''">
        <h3 class="h3-home">Film più popolari</h3>
        <div class="movies-container">
            <div class="movie" v-for="(movie, index) in store.moviesList" :key="index">
                <Movie :info="movie" />
            </div>
        </div>

        <h3 class="mt-4">Serie Tv più popolari</h3>
        <div class="movies-container">
            <div class="movie" v-for="(movie, index) in store.seriesList" :key="index">
                <Movie :info="movie" />
            </div>
        </div>
    </div>

    <div v-else>
        <h3 class="h3-search">Cercati da te</h3>
        <div class="movies-search-container">
            <div class="movie" v-for="(movie, index) in store.moviesTvSearch" :key="index">
                <Movie :info="movie" />
            </div>
        </div>
    </div>
</template>

<style lang="scss" scoped>
@use '../style.scss' as *;

h3 {
    font-size: 21px;
}

.h3-home {
    margin: 0 2.5px;
}

.movies-container {
    // flex-wrap: wrap;
    overflow: auto;
    display: -webkit-box;
    // scrollbar-color: red;

    .movie {
        width: 175px;
        margin: 10px 5px;
    }
}

.movies-search-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 10px;
    margin-top: 8px;

    .movie {
        width: calc(100%/7 - 10px);
    }
}


// scrollbar
.movies-container::-webkit-scrollbar {
    height: 6px;
    // width: 1rem;
}

.movies-container::-webkit-scrollbar-thumb {
    background-color: $red-netflix;
    border-radius: 1000px;
    // --tw-bg-opacity: 1;
    // --tw-border-opacity: 1;
    // border-color: rgba(255, 255, 255, var(--tw-border-opacity));
    // border-width: 1px;
}

.movies-container::-webkit-scrollbar-track {
    background-color: rgba(110, 110, 110, 0.257);
    border-radius: 1000px;
}
</style>