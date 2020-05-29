<template>
  <div id="main-content" class="mx-auto">
    <h2 class="mt-4 pt-4">What We Do</h2>

    <b-card-group style="display:block">
      <GrabberCard :bold="intro[0]" :text="intro.slice(1)"></GrabberCard>

      <b-card title="How Clients Use Our Products/Services" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-card-text class="mt-4">{{howToUse.intro}}</b-card-text>
        <b-row class="mt-4 pt-md-4" align-h="center">
          <b-col v-for="(example, idx) in howToUse.examples" :key="idx" md="4" class="mb-2">
            <i class="material-icons" style="font-size: 6rem">{{example.icon}}</i>
            <p style="font-weight: bold; margin-bottom: 0.5rem">{{example.title}}</p>
            <p>{{example.description}}</p>
          </b-col>
        </b-row>
      </b-card>

      <b-card id="products" title="Our Primary Products" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-row
          v-for="(product, idx) in products"
          :key="idx"
          :class="['my-4', 'pt-1', idx !== 2 ? 'pb-4' : '']"
          :style="idx !== 2 ? { 'border-bottom': '1px solid rgba(0,0,0,0.2)' } : {}"
          no-gutters
        >
          <b-col md="4" class="mb-3 my-md-auto">
            <b-card-text style="font-weight: bold; font-size: 1.1rem">{{product.title}}</b-card-text>
          </b-col>
          <b-col md="8">
            <b-card-text style="text-align: left">{{product.description}}</b-card-text>
          </b-col>
        </b-row>
      </b-card>
    </b-card-group>
  </div>
</template>

<script>
  import { BCard, BCardGroup, BCardText, BRow, BCol } from 'bootstrap-vue'
  import 'bootstrap/dist/css/bootstrap.css'
  import 'bootstrap-vue/dist/bootstrap-vue.css'
  import GrabberCard from '../components/GrabberCard.vue';
  import constants from '../assets/constants.js'

  export default {
    name: 'Home',
    components: {
      BCard,
      BCardGroup,
      BCardText,
      BRow,
      BCol,
      GrabberCard
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
          'you with 94% accuracy whether or not you are likely to win a pursuit and what you can do to increase your\n' +
          'probability of winning, months or years before the competition occurs. As you approach your bid\n' +
          'submission, we can tell you within a few percentage points just how much your Probability of Win will\n' +
          'change if you alter price or product performance by a specified amount. Our models are calibrated with more\n' +
          'than a decade of prediction and outcome data -- literally hundreds of pursuits -- backed by experienced\n' +
          'analysts who lived them. We have worked in government and in industry, in business development and\n' +
          'in execution, domestic and international. We have a deep understanding of the system in which you\n' +
          'compete, its rules, its competitors and how new business is won. We help companies like yours win.'
        ],
        howToUse: {
          intro: 'All of our products and services are designed to support specific decision points along your competitive\n' +
          'pursuit journey. To maximize our value to you, everything we do has a defined purpose to help you win\n' +
          'new business; nothing is accomplished as "process for process sake." Some examples of how our work is\n' +
          'used:',
          examples: [
            {
              title: 'Opportunity Pipeline Prioritization',
              description: 'Which opportunities should get our time, our people, and our resources?',
              icon: 'add_circle'
            },
            {
              title: 'New Business Investment Decisions',
              description: 'Where should we invest to improve our competitiveness? Which investments will have the biggest impact?',
              icon: 'account_balance'
            },
            {
              title: 'Win Strategy Decisions',
              description: 'What win strategy alternatives are we facing? What are their likely outcomes? How do we choose between them?',
              icon: 'model_training'
            },
            {
              title: 'Bid Aggressiveness Decisions',
              description: 'What are our chances of winning if we bid normally? How does it change if we bid more aggressively ' +
                'and by how much? What if we bid less aggressively than normal?',
              icon: 'payments'
            },
            {
              title: 'Lessons-Learned',
              description: 'How did we really win or lose? What does it tell us about our competitiveness for future pursuits? ' +
                'What decisions should we make differently going forward?',
              icon: 'school'
            }
          ]
        },
        products: [
          {
            title: '"Black Hat" Competitive Analysis',
            description: constants.products.blackHat
          },
          {
            title: 'Price-To-Win Analysis',
            description: constants.products.priceToWin
          },
          {
            title: 'Win/Loss Forensic Analysis',
            description: constants.products.forensicAnalysis
          }
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
</style>