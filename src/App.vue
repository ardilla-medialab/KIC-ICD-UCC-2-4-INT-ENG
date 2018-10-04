<template>
    <div id="app">
        <Cover v-if="showCover" @cover-button-clicked="loadNext()"></Cover>
        <Question v-if="showQuestion"
                  :text="text"
                  :index="index"
                  @yes-button-clicked="questionAnswered(2)"
                  @maybe-button-clicked="questionAnswered(1)"
                  @no-button-clicked="questionAnswered(0)">
        </Question>
        <Score v-if="showScore" :score="score"></Score>
    </div>
</template>

<script>
    /* eslint-disable no-console */

    import Cover from './components/Cover'
    import Question from './components/Question'
    import Score from './components/Score'
    import survey from './assets/data/survey'

    export default {
        name: 'app',
        components: {
            Score,
            Cover,
            Question
        },
        data: function () {
            return {
                survey: survey,
                index: 0,
                text: "",
                score: 0,
                apiUrl: 'https://api.airtable.com/v0/',
                apiKey: 'keyaLM0dlFCt4SUrz',
                base: 'appkUhLxfQX9RRPSs/Posts',
                showScore: false,
                showCover: false,
                showQuestion: false
            }
        },
        mounted: function () {
            console.log("App loaded");
            this.updateVisibility();
        },
        methods: {
            loadNext: function () {
                this.index += 1;
                this.updateVisibility();
                this.text = survey["questions"][this.index - 1].text;
                console.log(this.score);
                console.log(this.index);
                console.log(this.showCover, this.showQuestion, this.showScore);

            },
            questionAnswered: function(score) {
                this.score += score;
                this.loadNext();
            },
            updateVisibility: function() {
                this.showScore = this.index >= survey["questions"].length;
                this.showCover = this.index === 0;
                this.showQuestion = this.index > 0 && this.index < survey["questions"].length;
            }
        }
    }
</script>

<style lang="scss">

    @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin-ext');
    @import '~bulma/bulma';

    body {
        font-family: 'Montserrat', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: #222222;
    }

    #app {
        margin: 5px;

        max-width: 750px;
        min-height: 365px;
        @include mobile {

        }
        padding: 1em;
        border: 1px solid #aaa;
        background: #fafafa url(assets/images/bg.png);
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;

        @include mobile {
            margin: 0 5px;
        }
    }

</style>
