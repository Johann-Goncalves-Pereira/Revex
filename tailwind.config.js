/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    // colors: {},
    extend: {
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
    },
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
