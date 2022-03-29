module.exports = (env) => ({
  plugins: {
    autoprefixer: {},
    doiuse: {},
    cssnano: {
      preset: ["default", { cssDeclarationSorter: false }],
    },
    "postcss-color-alpha": {},
    "postcss-custom-media": {},
    "postcss-custom-selectors": {},
    "postcss-inline-svg": {},
    "postcss-jit-props": require("open-props"),
    "postcss-plugin": {},
    "postcss-preset-env": {},
    "postcss-pseudo-class-enter": {},
    "postcss-utilities": {},
    tailwindcss: {},
    "rucksack-css": {},
  },
});

//* Instructions
//& DoIUse Config
// doiuse: { browsers: ["ie >= 8", "> 1%"],}

//& Open-Props Config
// 'postcss-jit-props': require('open-props'),
//*  or
// 'postcss-jit-props': {
//   files: [require.resolve('open-props/style'),require.resolve('open-props/normalize')],
// },
