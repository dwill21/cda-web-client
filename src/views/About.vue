<template>
  <div id="main-content" class="mx-auto">
    <h2 class="mt-4 pt-4">Who We Are</h2>

    <b-card-group style="display:block">
      <b-card bg-variant="light" text-variant="dark" class="my-4 py-4">
        <b-card-title class="w-70 mx-auto mb-4" style="text-shadow:none">{{intro[0]}}</b-card-title>
        <b-card-text class="w-70 mx-auto" style="text-align:center">{{intro[1]}}</b-card-text>
      </b-card>

      <b-card title="CEO Experience" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-card-text v-for="line in ceoExperience.split('\n')" :key="line" class="mt-3">{{line}}</b-card-text>
      </b-card>

      <b-card title="Market Types" :sub-title="marketTypes[0]" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <ul class="mt-4 mb-0">
          <li v-for="type in marketTypes[1].split('\n')" :key="type">{{type}}</li>
        </ul>
      </b-card>

      <b-card title="Markets" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-row no-gutters>
          <b-col v-for="(_, idx) in Array(3)" :key="idx" md="4">
            <ul class="mt-2 mb-0">
              <li v-for="market in markets[idx].split('\n')" :key="market">{{market}}</li>
            </ul>
          </b-col>
        </b-row>
      </b-card>

      <b-card title="International Customers" bg-variant="dark" class="w-90 mx-auto mb-4 py-4">
        <b-row no-gutters>
          <b-col v-for="(_, idx) in Array(3)" :key="idx" md="4">
            <ul class="mt-2 mb-0">
              <li v-for="customer in internationalCustomers[idx].split('\n')" :key="customer">{{customer}}</li>
            </ul>
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
    name: 'About',
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
          'We are a highly experienced group of quantitative data analysts who focus on the other extreme of the\n' +
          '"big data" problem: what do you do when the available data is very limited, uncertain and even\n' +
          'contradictory?',

          'This is the world of any company that bids against competitors in response to Requests\n' +
          'for Proposal, a world in which CDA personnel have each built multiple careers. We have worked in the\n' +
          'US federal procurement system, in industry, on acquisition staffs, as users, as consultants, as program\n' +
          'managers, as capture managers, and as engineers. We have been in the quantitative data analysis field\n' +
          'for more than a decade, honing our data collection, analysis, extrapolation, correlation and "what does\n' +
          'it mean/what do we do" skills and predictive models. Some say, "A predictive models is only as good as\n' +
          'the assumptions that go into it." At CDA, we approach it differently: "A predictive model is only as good\n' +
          'as the data that go into it." Our analysts know our models, because we are the ones who created them,\n' +
          'tested them, used them, and calibrated them to the real world. We know the difference between data\n' +
          'and assumptions, and how focusing on the former reduces the weaknesses of the latter.'
        ],
        ceoExperience: 'Program Manager in both US Government and in Industry\n' +
          'Capture Manager for pursuits totaling more than $9M in bid value\n' +
          'Highly experienced in both Government and Industry\n' +
          'US Air Force Acquisition Officer - 26 years, including program management assignments in 5 Major Defense Acquisition Programs, 3 of them joint-service; served on Air Force and Joint Staff acquisition staffs\n' +
          'Industry - 17 years, including program management, capture management, strategy at Lockheed Martin and Raytheon, the world\'s two largest defense companies; 12 years developing ground-breaking market data-based analytical concepts, predictive methods and tools, strategies and tactics for winning competitive pursuits\n' +
          'Proven track record: over a span of 13 years, and more than 260 pursuits, totaling more than $XXB total bids, his team of Competitive Intelligence and PTW analysts compiled a record of competitor bid price prediction within an average of 8% of actual bids; Pwin predictions within 6% of actual win rate',
        markets: [
          'Agricultural Data Products\n' +
          'Air & Missile Defense Radars\n' +
          'Air to Air Missiles\n' +
          'Air to Ground Missiles\n' +
          'Air Traffic Control Management Systems\n' +
          'Air Traffic Control Radars\n' +
          'Airborne ISR Platforms & Systems\n' +
          'Aircraft Avionics\n' +
          'Aircraft Maintenance Training\n' +
          'Airport Security\n' +
          'Aircraft Self Protection Systems\n' +
          'Archive & Records Operations\n' +
          'Armored Vehicle Modernization\n' +
          'Bomb Racks\n' +
          'Border Security Systems\n' +
          'Command & Control Systems\n' +
          'Communications & Data Networks\n' +
          'Cyber Managed Services',

          'Cyber Products\n' +
          'Cyber Security Operations Center\n' +
          'Data Analytics\n' +
          'Data Center Construction and O&M\n' +
          'Data Warehouse\n' +
          'EMP Hardening\n' +
          'EO/IR Systems\n' +
          'Facilities Construction\n' +
          'GEOINT Engineering Services\n' +
          'Ground Terminal Infrastructure\n' +
          'Ground Launched Missile Systems\n' +
          'High Performance Computing\n' +
          'Highway Tolling Systems\n' +
          'IT Managed Services\n' +
          'Intelligence Data Processing\n' +
          'ISR Sensors\n' +
          'Equipment Leasing\n' +
          'Logistics Support Services',

          'Military & Law Enforcement Training\n' +
          'Maritime Radars\n' +
          'Material Management\n' +
          'Military Communications Systems\n' +
          'Public Safety Communications Systems\n' +
          'SATCOM\n' +
          'Satellite Ground Segments\n' +
          'Sensor Product Processing\n' +
          'SIGINT Engineering Services\n' +
          'Software Development\n' +
          'Strategic ISR Systems\n' +
          'Tactical ISR Systems\n' +
          'Test & Training Range Support\n' +
          'Training Device Maintenance\n' +
          'UAVs\n' +
          'Vehicle-Mounted Sensors and Weapons\n' +
          'Watercraft Upgrades\n' +
          'Weather Information Systems'
        ],
        internationalCustomers: [
          'Australia\n' +
          'Bahamas\n' +
          'Bahrain\n' +
          'Canada\n' +
          'Chile\n' +
          'Germany\n' +
          'Hong Kong\n' +
          'India\n' +
          'Israel',

          'Jordan\n' +
          'Kingdom of Saudi Arabia\n' +
          'Kuwait\n' +
          'Mexico\n' +
          'Oman\n' +
          'Peru\n' +
          'Philippines\n' +
          'Poland',

          'Romania\n' +
          'South Korea\n' +
          'Thailand\n' +
          'United Arab Emirates\n' +
          'United Kingdom\n' +
          'United States\n' +
          'Vietnam\n' +
          'Zambia'
        ],
        marketTypes: [
          'Our experience spans the following market types, on pursuits ranging from as small as $1M to as large as $9B (average size is $275M)',

          'State & Local, Federal and International\n' +
          'Military and Commercial\n' +
          'Technology Demonstrations, Development, Production, Sustainment and Operations\n' +
          'Classified and Unclassified\n' +
          'Low-Cost/Simple to High-Cost Complex opportunities'
        ]
      }
    }
  }
</script>

<style scoped>
  h2, h4 {
    text-shadow: 1px 1px black;
  }

  p {
    text-align: left;
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

  .card-subtitle /deep/ {
    color: white !important;
    opacity: 0.7;
  }
</style>
