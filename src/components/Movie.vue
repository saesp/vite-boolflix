<script>
export default {
    name: "MoviesList",
    props: ["info"],
}
</script>

<template>
    <div if="" class="card-movie">
        <img class="img-movie" :src="`https://image.tmdb.org/t/p/w185/${info.poster_path}`" alt="">

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
    border: 1px solid $red-neflix;
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
</style>