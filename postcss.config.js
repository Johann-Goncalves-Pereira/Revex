module.exports = {
  plugins: {
    autoprefixer: {},
    doiuse: {},
    cssnano: {
      preset: [
        "default",
        {
          cssDeclarationSorter: false,
        },
      ],
    },
    "postcss-color-alpha": {},
    "postcss-custom-media": {},
    "postcss-custom-selectors": {},
    "postcss-inline-svg": {},
    "postcss-jit-props": {
      "open-props": {},
    },
    "postcss-plugin": {},
    "postcss-preset-env": {},
    "postcss-pseudo-class-enter": {},
    "postcss-utilities": {},
    tailwindcss: {},
    "rucksack-css": {},
  },
};

//! Do I Use Config
// browsers: ["ie >= 8", "> 1%"],
