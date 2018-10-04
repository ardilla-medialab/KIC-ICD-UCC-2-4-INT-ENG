<template>

    <div class="score-container hero">
        <div class="hero-body">
            <h1 class="title is-size-1-desktop is-size-1-tablet is-size-4-mobile" v-if="score >= 21">
                ¡Dale con todo, empieza ese emprendimiento!
            </h1>
            <h1 class="title is-size-1-desktop is-size-1-tablet is-size-4-mobile" v-if="score < 21">
                Dale más tiempo a tu proyecto, las grandes ideas toman tiempo.
            </h1>
            <div class="score-icon">
                <img src="../assets/images/yep.png" v-if="score >= 21">
            </div>
            <div class="score-icon">
                <img src="../assets/images/nope.png" v-if="score < 21">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Score',
        props: {
            "score": Number
        }
    }
</script>

<style scoped lang="scss">

    @import '~bulma/bulma';

    .score-container {
        min-height: 185px;
        h1 {
            color: #222;
            text-align: left;
        }
    }

    .score-icon {
        text-align: center;
        img {
            height: 90px;
        }
    }

</style>