<template>
    <div id="cover hero">
        <div class="title-container hero-body">
                <h1 class="title is-size-1-desktop is-size-1-tablet is-size-3-mobile">
                    ¿Quieres saber si estás listo para ser <span style="color: #D75406">emprendedor</span> creativo?
                </h1>
        </div>
        <div class="button-container">
            <button class="button is-dark is-size-4-desktop is-size-4-tablet is-size-5-mobile" @click="$emit('cover-button-clicked')">¡Sí!</button>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Cover',
        props: {
            "title": String
        }
    }
</script>

<style scoped lang="scss">

    @import '~bulma/bulma';

    .title-container {
        min-height: 275px;
        h1 {
            color: #222;
            text-align: left;
        }
    }

    .button-container {
        text-align: center;
    }

</style>