<script>
import axios from 'axios'
import MoviesList from './components/MoviesList.vue'
import AppHeader from './components/AppHeader.vue'
import { store } from './store.js'

export default {
  name: "App",
  components: {
    MoviesList,
    AppHeader
  },

  data() {
    return {
      store,
    }
  },

  methods: {
    getMovies() {
      // apiUserURL = store.apiURL;

      axios
        .get(store.apiURL)
        .then(res => {
          store.moviesList = res.data.results;
        })
        .catch(err => {
          console.log("Errors", err);
        });

      if (this.store.valueSearch !== "") {
        // only movies
        // store.apiURL = `https://api.themoviedb.org/3/search/movie?api_key=d724d9a3e0faf23928324d1fe5b4faa5&query=${store.valueSearch}`

        // movies and serie
        store.apiURL = `https://api.themoviedb.org/3/search/multi?api_key=d724d9a3e0faf23928324d1fe5b4faa5&query=${store.valueSearch}`

      } else {
        store.apiURL = `https://api.themoviedb.org/3/movie/popular?api_key=d724d9a3e0faf23928324d1fe5b4faa5`
      }
    },
  },

  mounted() {
    this.getMovies()
  }
}
</script>

<template>
  <header>
    <AppHeader @search="getMovies" />
  </header>

  <main>
    <MoviesList @search="getMovies" />
  </main>
</template>

<style lang="scss">
// @use '../style.scss' as *;
header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 30px 80px;
}

main {
  padding: 0 70px;
}
</style>
\