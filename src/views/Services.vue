<template>
  <div id="main-content" class="mx-auto">
    <h2 class="mt-4 pt-4">What We Do</h2>

    <b-card-group style="display:block">
      <b-card bg-variant="light" text-variant="dark" class="my-4 py-4">
        <b-card-title class="w-70 mx-auto mb-4" style="text-shadow:none">{{intro[0]}}</b-card-title>
        <b-card-text
          v-for="(_, idx) in Array(2)"
          :key="idx"
          class="w-70 mx-auto"
        >{{intro[idx+1]}}</b-card-text>
      </b-card>

      <b-card title="How Clients Use Our Products/Services" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-card-text class="mt-4">{{howToUse[0]}}</b-card-text>
        <ul>
          <li v-for="line in howToUse.slice(1)" :key="line" class="mt-4">
            <span style="font-weight: bold">{{line.substring(0, line.indexOf(":"))}}</span>{{line.substring(line.indexOf(":"))}}
          </li>
        </ul>
      </b-card>

      <b-card id="products" title="Our Primary Products" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-row
          v-for="(_, idx) in Array(3)"
          :key="idx"
          :class="['my-4', idx !== 2 ? 'pb-4' : '']"
          :style="idx !== 2 ? { 'border-bottom': '1px solid rgba(0,0,0,0.2)' } : {}"
          no-gutters
        >
          <b-col md="4" class="mb-3 my-md-auto">
            <b-card-text style="font-weight: bold">{{products[idx][0]}}</b-card-text>
          </b-col>
          <b-col md="8">
            <b-card-text style="text-align: left">{{products[idx][1]}}</b-card-text>
          </b-col>
        </b-row>
      </b-card>
    </b-card-group>
  </div>
</template>

<script>
  import { BCard, BCardGroup, BCardText, BCardTitle, BRow, BCol } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'

  export default {
    name: 'Home',
    components: {
      BCard,
      BCardGroup,
      BCardText,
      BCardTitle,
      BRow,
      BCol
    },
    data() {
      return {
        intro: [
          'At CDA, we believe that companies win or lose new business based primarily on their competitiveness\n' +
          'in the markets they pursue.',

          'That competiveness is the result of company decisions made over a long \n' +
          'period of time. Were those decisions made on the basis of factual data or on the basis of internal\n' +
          'myths? Markets favor competitive companies. Is that you, or someone else? How do you know?',

          'CDA uses factual market data to answer those questions. Our predictive models and techniques can tell\n' +
          'you with 94% accuracy whether or not you are likely to win a pursuit and what you can do increase your\n' +
          'probability of winning, months or years before the competition occurs. As you approach your bid\n' +
          'submission, we can tell you within a few percentage points just how much your Probability of Win will\n' +
          'change if you alter price or product quality by a specified amount. Our models are calibrated with more\n' +
          'than a decade of prediction and outcome data -- literally hundreds of pursuits -- backed by experienced\n' +
          'analysts who lived them. We have worked in government and in industry, in business development and\n' +
          'in execution, domestic and international. We have a deep understanding of the system in which you\n' +
          'compete, its rules, its competitors and how new business is won. We help companies like yours do just\n' +
          'that.'
        ],
        howToUse: [
          'All of our products and services are designed to support specific decision points along your competitive\n' +
          'pursuit journey. To maximize our value to you, everything we do has a defined purpose to help you win\n' +
          'new business; nothing is accomplished as "process for process sake." Some examples of how our work is\n' +
          'used:',

          'Opportunity Pipeline Prioritization: Which ones should get our time, our people, and resources?',

          'New Business Investment Decisions: Where should we invest to improve our competitiveness? Which investments\n' +
          'will have the biggest impact?',

          'Win Strategy Decisions: What win strategies alternatives are we facing? What are their likely outcomes?\n' +
          'How do we choose between them?',

          'Bid Aggressiveness Decisions: What are our chances of winning if I bid normally? How does it change if I\n' +
          'bid more aggressively and by how much? What if I bid less aggressively than normal?',

          'Lessons-Learned: How did we really win or lose? What does it tells us about our competitiveness for\n' +
          'future pursuits? What decisions should we make differently going forward?'
        ],
        products: [
          [
            '"Black Hat" Competitive Analysis',

            'We collect open source competitive intelligence on desired\n' +
            'competitors, present it to, and facilitate, a client-participant CDA Black Hat process and model that\n' +
            'produces 1) predicted competition outcome and 2) alternative win strategies that increase probability of\n' +
            'win.'
          ],

          [
            'Price-To-Win Analysis',

            'We collect open source competitive intelligence data to populate our predictive\n' +
            'models to provide a client most-likely competitor bid prices, best value scores, and Probability of Win.\n' +
            'We also provide bid aggressiveness targets for client bid decision-maker consideration.'
          ],
          [
            'Win/Loss Forensic Analysis',

            'We analyze client wins and losses through our objective framework to\n' +
            'determine how and why your company won or lost a pursuit. This aids a client in determining what has\n' +
            'worked and what has not, free from the natural, inherent bias of solely using internal company\n' +
            'personnel.'
          ]
        ]
      }
    },
    mounted() {
      if (this.$route.hash) {
        location.href = this.$route.hash;
      }
    },
  }
</script>

<style scoped>
  h2, h4 {
    text-shadow: 1px 1px black;
  }

  li {
    text-align: left;
  }

  #main-content {
    min-height: calc(100vh - 110px);
    color: white;
  }

  .w-90 {
    width: 90%;
  }

  @media (min-width: 768px) {
    .w-70 {
      width: 70%;
    }
  }
</style>