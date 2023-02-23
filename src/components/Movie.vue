<script>
export default {
    name: "MoviesList",
    props: ["info"],
}
</script>

<template>
    <div if="" class="card-movie">
        <img class=" img-movie"
            :src="`${info.poster_path}` != 'null' ? `https://image.tmdb.org/t/p/w185/${info.poster_path}` : 'public/n-netflix.jpeg'"
            alt="">

        <ul class="info-movie">
            <li><strong>Titolo: </strong> "{{ info.title }}"</li>

            <li><strong>Titolo originale: </strong> "{{ info.original_title }}"</li>

            <li>
                <strong>Lingua originale: </strong> <img class="flag" :src="`/src/img/${info.original_language}.svg`"
                    alt="">
            </li>

            <li>
                <strong>Voto: </strong>
                <span v-for="num in 5">{{ num <= Math.round(info.vote_average / 2) ? "&#9733;" : "&#9734;" }}</span>
            </li>

            <li><strong>Overview: </strong>{{ info.overview }}</li>
        </ul>
    </div>
</template>

<style lang="scss" scoped>
@use '../style.scss' as *;

.card-movie {
    position: relative;
    cursor: pointer;

    &:hover .info-movie {
        display: block;
    }

    &:hover .img-movie {
        opacity: 0.2;
    }
}

.info-movie {
    display: none;
    border: 1px solid $red-netflix;
    position: absolute;
    top: 0;
    left: 0;
    padding: 13px;
    height: 300px;
    overflow-y: auto;

    li {
        margin-bottom: 8px;
        list-style-type: none;
        font-size: 12px;

        .yellow-star {
            color: yellow;
        }
    }
}

.img-movie {
    width: 100%;
    height: 300px;
    grid-row: auto;
}

.flag {
    width: 20px;
}


// scrollbar
.info-movie::-webkit-scrollbar {
    // height: 7px;
    width: 6px;
}

.info-movie::-webkit-scrollbar-thumb {
    --tw-bg-opacity: 1;
    background-color: rgba(86, 88, 105, var(--tw-bg-opacity));
}

.info-movie::-webkit-scrollbar-thumb {
    background-color: rgb(136, 135, 135);
    border-radius: 1000px;
    // --tw-border-opacity: 1;
    // border-color: rgba(255, 255, 255, var(--tw-border-opacity));
    // border-width: 1px;
}

.info-movie::-webkit-scrollbar-track {
    background-color: rgba(110, 110, 110, 0.257);
    border-radius: 1000px;
}
</style>