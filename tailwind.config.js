module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      "surface-0": "#050606",
      "surface-1": "#101215",
      "surface-2": "#23282c",
      "surface-3": "#353c43",
    },
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
