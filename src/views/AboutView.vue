<template>
  <div id="main-content" class="mx-auto">
    <h2 class="mt-4 pt-4">Who We Are</h2>

    <b-card-group style="display:block">
      <GrabberCard :bold="intro[0]" :text="intro[1]"></GrabberCard>

      <b-card
        title="Market Types"
        :sub-title="marketTypes.description"
        bg-variant="dark"
        class="w-90 mx-auto mb-4 py-4"
      >
        <b-row class="mt-4 pt-md-4" align-h="center" no-gutters>
          <b-col
            v-for="(type, idx) in marketTypes.examples"
            :key="idx"
            :class="[
              'mb-2',
              'pt-2',
              'pt-md-0',
              idx !== marketTypes.examples.length - 1 ? 'market-type' : ''
            ]"
            sm
          >
            <p style="font-weight: bold">{{ type }}</p>
          </b-col>
        </b-row>
      </b-card>

      <b-card title="Markets" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-row no-gutters>
          <b-col v-for="(marketsCol, idx) in markets" :key="idx" md="4">
            <ul class="mt-2 mb-0">
              <li v-for="market in marketsCol" :key="market">{{ market }}</li>
            </ul>
          </b-col>
        </b-row>
      </b-card>

      <b-card title="International Pursuit Customers" bg-variant="dark"
              class="w-90 mx-auto mb-4 py-4">
        <b-row no-gutters>
          <b-col v-for="(customersCol, idx) in internationalCustomers" :key="idx" md="4">
            <ul class="mt-2 mb-0">
              <li v-for="customer in customersCol" :key="customer">{{ customer }}</li>
            </ul>
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
  BCard, BCardGroup, BRow, BCol,
} from 'bootstrap-vue';
import GrabberCard from '../components/GrabberCardComponent.vue';

@Component({
  components: {
    BCard,
    BCardGroup,
    BRow,
    BCol,
    GrabberCard,
  },
})
export default class AboutView extends Vue {
  intro = [
    'We are a highly experienced group of quantitative data analysts who focus on the other extreme of the\n'
    + '"big data" problem: what do you do when the available data is very limited, uncertain and even\n'
    + 'contradictory?',

    'This is the world of any company that bids against competitors in response to Requests\n'
    + 'for Proposal, a world in which CDA personnel have each built multiple careers. We have worked in the\n'
    + 'US federal procurement system, in industry, on acquisition staffs, as users, as consultants, as program\n'
    + 'managers, as capture managers, and as engineers. We have been in the quantitative data analysis field\n'
    + 'for more than a decade, honing our data collection, analysis, extrapolation, correlation and "what does\n'
    + 'it mean/what do we do" skills and predictive models. Some say, "A predictive model is only as good as\n'
    + 'the assumptions that go into it." At CDA, we approach it differently: "A predictive model is only as good\n'
    + 'as the <span style="text-decoration:underline">data</span> that go into it." Our analysts know our models, because we are the ones who created them,\n'
    + 'tested them, used them, and calibrated them to the real world. We know the difference between data\n'
    + 'and assumptions, and how focusing on the former reduces the weaknesses of the latter.',
  ];

  markets = [
    [
      'Agricultural Data Products',
      'Air & Missile Defense Radars',
      'Air to Air Missiles',
      'Air to Ground Missiles',
      'Air Traffic Control Management Systems',
      'Air Traffic Control Radars',
      'Airborne ISR Platforms & Systems',
      'Aircraft Avionics',
      'Aircraft Maintenance Training',
      'Aircraft Modification & Certification',
      'Airport Security',
      'Aircraft Self Protection Systems',
      'Aircraft Supply Support',
      'Archive & Records Operations',
      'Armored Vehicle Modernization',
      'Bomb Racks',
      'Border Security Systems',
      'Command & Control Systems',
      'Communications & Data Networks',
      'Cyber Managed Services',
    ],
    [
      'Cyber Products',
      'Cyber Security Operations Center',
      'Data Analytics',
      'Data Center Construction and O&M',
      'Data Warehouse',
      'EMP Hardening',
      'EO/IR Systems',
      'Equipment Leasing',
      'Facilities Construction',
      'Flight Training',
      'GEOINT Engineering Services',
      'Ground Terminal Infrastructure',
      'Ground Launched Missile Systems',
      'High Performance Computing',
      'Highway Tolling Systems',
      'IT Managed Services',
      'Intelligence Data Processing',
      'ISR Sensors',
      'Logistics Support Services',
    ],
    [
      'Military & Law Enforcement Training',
      'Maritime Radars',
      'Material Management',
      'Military Communications Systems',
      'Naval Weapons Training',
      'Public Safety Communications Systems',
      'SATCOM',
      'Satellite Ground Segments',
      'Sensor Product Processing',
      'SIGINT Engineering Services',
      'Software Development',
      'Strategic ISR Systems',
      'Tactical ISR Systems',
      'Test & Training Range Support',
      'Training Device Maintenance',
      'UAVs',
      'Vehicle-Mounted Sensors and Weapons',
      'Watercraft Upgrades',
      'Weather Information Systems',
    ],
  ];

  internationalCustomers = [
    [
      'Australia',
      'Bahamas',
      'Bahrain',
      'Canada',
      'Chile',
      'Germany',
      'Hong Kong',
      'India',
      'Israel',
    ],
    [
      'Jordan',
      'Kingdom of Saudi Arabia',
      'Kuwait',
      'Mexico',
      'Oman',
      'Peru',
      'Philippines',
      'Poland',
    ],
    [
      'Romania',
      'South Korea',
      'Thailand',
      'United Arab Emirates',
      'United Kingdom',
      'United States',
      'Vietnam',
      'Zambia',
    ],
  ];

  marketTypes = {
    description: 'Our experience spans the following market types, on pursuits ranging from as small as $1M to as large as $9B (average size is $275M)',
    examples: [
      'State & Local, Federal and International',
      'Military and Commercial',
      'Technology Demonstrations, Development, Production, Sustainment and Operations',
      'Classified and Unclassified',
      'Low-Cost/Simple to High-Cost/Complex opportunities',
    ],
  };
}
</script>

<style lang="scss" scoped>
@import '../assets/scss/display-breakpoints.scss';

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

.card-subtitle::v-deep {
  color: white !important;
  opacity: 0.7;
}

@media (min-width: $bootstrap-md) {
  .market-type {
    border-right: 1px solid rgba(0, 0, 0, 0.2);
  }
}

@media (max-width: $bootstrap-md) {
  .market-type {
    border-bottom: 1px solid rgba(0, 0, 0, 0.2);
  }
}
</style>