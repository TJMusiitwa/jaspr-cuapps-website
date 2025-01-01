/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./{lib,web}/**/*.dart'],
  theme: {
    extend: {
      colors: {
        'curious-blue': {
          '50': '#f2f9fd',
          '100': '#e3f0fb',
          '200': '#c2e2f5',
          '300': '#8ccaed',
          '400': '#4eb0e2',
          DEFAULT: '#35a0d9',
          '600': '#1977b0',
          '700': '#155f8f',
          '800': '#155177',
          '900': '#174463',
          '950': '#0f2c42',
        },
        'jacarta': {
          '50': '#f1f0fd',
          '100': '#e6e4fb',
          '200': '#d2cef7',
          '300': '#b9b0f1',
          '400': '#a391e8',
          '500': '#9476de',
          '600': '#845bd0',
          '700': '#744bb7',
          '800': '#5e3f94',
          DEFAULT: '#47346c',
          '950': '#2f2145',
        },
        'gulf-blue': {
          '50': '#e8f5ff',
          '100': '#d5ecff',
          '200': '#b3daff',
          '300': '#86c0ff',
          '400': '#5795ff',
          '500': '#306bff',
          '600': '#0d3dff',
          '700': '#0433fe',
          '800': '#072fcc',
          '900': '#10309f',
          DEFAULT: '#091854',
        },
      },
    },
  },
  plugins: [],
}

