<template>
    <div>
        <div class="question-container hero">
            <div class="hero-body">
                <h1 class="title is-size-2-desktop is-size-2-tablet is-size-4-mobile">{{text}}</h1>
            </div>
        </div>
        <div class="answer-container columns is-centered">
            <div class="colum is-full">
                <img class="answer-icon"
                     src="../assets/images/yes.svg"
                     alt="De acuerdo"
                     @click="$emit('yes-button-clicked')">
                <img class="answer-icon"
                     src="../assets/images/maybe.png"
                     alt="No estoy seguro"
                     @click="$emit('maybe-button-clicked')">
                <img class="answer-icon"
                     src="../assets/images/no.svg"
                     alt="En desacuerdo"
                     @click="$emit('no-button-clicked')">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Question',
        props: {
            "text": String,
            "index": Number
        }
    }
</script>

<style scoped lang="scss">

    @import '~bulma/bulma';

    .question-container {
        min-height: 265px;
        @include mobile {
            min-height: 265px;
        }

        h1 {
            text-align: left;
            color: #222;
        }
    }

    .answer-container {
        margin-top: auto;
        div {
            text-align: center;
        }
    }

    .answer-icon {
        margin: 10px;
        width: 50px;
        height: 50px;
        opacity: 0.8;
        cursor: pointer;
        transition: opacity 300ms;
        &:hover {
            opacity: 1;
            transition: opacity 300ms;
        }
    }

    .title {
        @include mobile {
            font-size: 1.5em;
        }
    }

</style>