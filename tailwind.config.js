import theme from "./Abstracts/_theme.json";
const { colors, light_colors } = theme;

const color = theme.schema === "dark" ? colors : light_colors;

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      //& Surface
      "surface-100": color.surface[100],
      "surface-200": color.surface[200],
      "surface-300": color.surface[300],
      "surface-400": color.surface[400],
      "surface-500": color.surface[500],
      "surface-600": color.surface[600],
      "surface-700": color.surface[700],
      "surface-800": color.surface[800],
      "surface-900": color.surface[900],
      // & Brand
      "brand-100": color.brand[100],
      "brand-200": color.brand[200],
      "brand-300": color.brand[300],
      "brand-400": color.brand[400],
      "brand-500": color.brand[500],
      "brand-600": color.brand[600],
      "brand-700": color.brand[700],
      "brand-800": color.brand[800],
      "brand-900": color.brand[900],
    },
    fontWeight: {
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
    extend: {
      borderRadius: {
        full: theme.border_radius.full,
      },
    },
  },
  plugins: [],
};
