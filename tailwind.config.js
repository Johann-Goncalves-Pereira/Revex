/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      //& Surface
      "surface-0": "hsla(var(--clr-surface-0-hsl) / <alpha-value>)",
      "surface-1": "hsla(var(--clr-surface-1-hsl) / <alpha-value>)",
      "surface-2": "hsla(var(--clr-surface-2-hsl) / <alpha-value>)",
      "surface-3": "hsla(var(--clr-surface-3-hsl) / <alpha-value>)",
      // & Text
      "text-0": "hsla(var(--clr-text-0-hsl) / <alpha-value>)",
      "text-1": "hsla(var(--clr-text-1-hsl) / <alpha-value>)",
      "text-2": "hsla(var(--clr-text-2-hsl) / <alpha-value>)",
      // & Brand
      "brand-0": "hsla(var(--clr-brand-0-hsl) / <alpha-value>)",
    },
    fontSize: {
      00: "var(--fsf-00)",
      01: "var(--fsf-01)",
      02: "var(--fsf-02)",
      03: "var(--fsf-03)",
      04: "var(--fsf-04)",
      05: "var(--fsf-05)",
      06: "var(--fsf-06)",
      07: "var(--fsf-07)",
    },
    fontWeight: {
      100: 100,
      100: 100,
      200: 200,
      300: 300,
      400: 400,
      500: 500,
      600: 600,
      700: 700,
      800: 800,
      900: 900,
    },

    // extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
