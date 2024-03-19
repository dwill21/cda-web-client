<template>
  <div id="main-content" class="mx-auto">
    <h2 class="mt-4 pt-4">What We Do</h2>

    <b-card-group style="display:block">
      <GrabberCard :bold="intro[0]" :text="intro.slice(1)"></GrabberCard>

      <b-card
        title="How Clients Use Our Products/Services"
        bg-variant="dark"
        class="w-90 mx-auto mb-4 py-4"
      >
        <b-card-text class="mt-5">
          {{howToUse.intro}}
        </b-card-text>

        <b-row class="mt-5 pt-md-4" align-h="center" style="row-gap: 36px">
          <b-col v-for="(example, idx) in howToUse.examples" :key="idx" md="4" class="mb-2">
            <i class="material-icons" style="font-size: 6rem">
              {{example.icon}}
            </i>
            <p style="font-weight: bold; margin-bottom: 0.5rem">
              {{example.title}}
            </p>
            <p>
              {{example.description}}
            </p>
          </b-col>
        </b-row>
      </b-card>

      <b-card
        id="products"
        bg-variant="dark"
        class="w-90 mx-auto mb-4 py-4"
      >
        <b-card-title class="mb-4">
          Our Primary Products
        </b-card-title>

        <b-row
          v-for="(product, idx) in products"
          :key="idx"
          :id="product.id"
          :class="['pt-4', idx < products.length-1 ? 'pb-4' : '']"
          :style="idx < products.length-1 ? { 'border-bottom': '1px solid rgba(0,0,0,0.2)' } : {}"
          no-gutters
        >
          <b-col md="4" class="mb-4 pr-2 my-md-auto">
            <b-card-text style="font-weight: bold; font-size: 1.1rem">
              {{product.title}}
            </b-card-text>
          </b-col>
          <b-col md="8">
            <b-card-text style="text-align: left">
              {{product.description}}
            </b-card-text>
          </b-col>
        </b-row>
      </b-card>
    </b-card-group>
  </div>
</template>

<script>
import Vue from 'vue';
import Component from 'vue-class-component';
import {
  BCard, BCardGroup, BCardTitle, BCardText, BRow, BCol,
} from 'bootstrap-vue';
import HoverCard from '@/components/HoverCardComponent.vue';
import GrabberCard from '../components/GrabberCardComponent.vue';
import constants from '../assets/constants';

@Component({
  components: {
    HoverCard,
    BCard,
    BCardGroup,
    BCardText,
    BCardTitle,
    BRow,
    BCol,
    GrabberCard,
  },
})
export default class ServicesView extends Vue {
  intro = [
    'At CDA, we believe that companies win or lose new business based primarily on their relative competitiveness '
    + 'in the markets they pursue.',

    'That competitiveness is the result of company decisions made over a long '
    + 'period of time. Were those decisions made on the basis of factual data or on the basis of internal '
    + 'myths? Markets favor companies with a competitive advantage. Is that you, or someone else? How would you know? '
    + 'And how do you know you\'re leveraging it on a specific pursuit\'s proposal?',

    'CDA uses factual market data to answer those questions. Our predictive models and techniques can tell '
    + 'you with 94% accuracy how likely you are to win a pursuit and what you can do to increase your '
    + 'probability of winning, months or even years before the competition occurs. You can use that information '
    + 'to prioritize opportunities in your strategic plan, determine the resources needed to reach your bookings '
    + 'goals, and prioritize investment decisions that increase Pwin. As you approach your bid '
    + 'submission, we can tell you within a percentage point just how much your Probability of Win will '
    + 'change if you alter price or product performance by a specified amount.',

    'Our models are calibrated with more than a decade of prediction and outcome data -- literally hundreds of '
    + 'pursuits -- backed by experienced analysts who lived them. We\'ve worked in government and in industry, '
    + 'in business development and in execution, both domestic and international. We have a deep understanding '
    + 'of the systems in which you compete, their rules, their competitors, and how new business is actually '
    + 'won. In the last 4 years alone, we\'ve supported both large and small companies pursuing contracts '
    + 'worth a total of $32B. Give us a call and let\'s see what CDA can do to help you win more business.',
  ];

  howToUse = {
    intro: 'All of our products and services are designed to support specific decision points along your competitive '
    + 'pursuit journey. To maximize our value to you, everything we do has a defined purpose to help you win '
    + 'new business; nothing is accomplished as "process for process sake." Some examples of how our work is '
    + 'used:',
    examples: [
      {
        title: 'Opportunity Pipeline Prioritization',
        description: 'Which opportunities should get our time, our people, and our resources?',
        icon: 'add_circle',
      },
      {
        title: 'New Business Investment Decisions',
        description: 'Where should we invest to improve our competitiveness? Which investments will have the biggest impact?',
        icon: 'account_balance',
      },
      {
        title: 'Win Strategy Decisions',
        description: 'What win strategy alternatives are we facing? What are their likely outcomes? How do we choose between them?',
        icon: 'model_training',
      },
      {
        title: 'Bid Aggressiveness Decisions',
        description: 'What are our chances of winning if we bid normally? How does it change if we bid more aggressively '
        + 'and by how much? What if we bid less aggressively than normal?',
        icon: 'payments',
      },
      {
        title: 'Proposal Decisions',
        description: 'How do we turn competitive advantage into a winning proposal? How do we ensure '
          + 'that the Government evaluators will agree with our proposition? What "rules of the road" are '
          + 'we missing?',
        icon: 'task',
      },
      {
        title: 'Lessons-Learned',
        description: 'How did we really win or lose? What does it tell us about our competitiveness for future pursuits? '
        + 'What decisions should we make differently going forward?',
        icon: 'school',
      },
    ],
  };

  products = [
    {
      id: 'black-hat',
      title: '"Black Hat" Competitive Analysis',
      description: constants.products.blackHat,
    },
    {
      id: 'ptw',
      title: 'Price-To-Win Analysis',
      description: constants.products.priceToWin,
    },
    {
      id: 'win-loss-analysis',
      title: 'Win/Loss Forensic Analysis',
      description: constants.products.forensicAnalysis,
    },
    {
      id: 'strategic-planning',
      title: 'Data-based Strategic Planning',
      description: constants.products.strategicPlanning,
    },
    {
      id: 'tactical-support',
      title: 'Data-based Tactical Support',
      description: constants.products.tacticalSupport,
    },
  ];

  mounted() {
    if (this.$route.hash) {
      // eslint-disable-next-line no-restricted-globals
      location.href = this.$route.hash;
    }
  }
}
</script>

<style scoped lang="scss">
  @import 'src/assets/scss/colors.scss';

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

  .divider {
    border-bottom: 1px solid rgba(0,0,0,0.2);
  }
</style>
