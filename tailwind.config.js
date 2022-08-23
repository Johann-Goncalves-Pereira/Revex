/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      //& Surface
      "surface-100": "hsl(var(--clr-surface-100) / <alpha-value>)",
      "surface-200": "hsl(var(--clr-surface-200) / <alpha-value>)",
      "surface-300": "hsl(var(--clr-surface-300) / <alpha-value>)",
      "surface-400": "hsl(var(--clr-surface-400) / <alpha-value>)",
      "surface-500": "hsl(var(--clr-surface-500) / <alpha-value>)",
      "surface-600": "hsl(var(--clr-surface-600) / <alpha-value>)",
      "surface-700": "hsl(var(--clr-surface-700) / <alpha-value>)",
      "surface-800": "hsl(var(--clr-surface-800) / <alpha-value>)",
      "surface-900": "hsl(var(--clr-surface-900) / <alpha-value>)",
      // & Brand
      "brand-200": "hsl(var(--clr-brand-0) / <alpha-value>)",
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
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
