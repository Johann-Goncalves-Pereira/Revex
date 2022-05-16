function withOpacityValue(variable) {
  return ({ opacityValue }) => {
    if (opacityValue === undefined) {
      return `hsl(var(${variable}))`;
    }
    return `hsl(var(${variable}), ${opacityValue})`;
  };
}

module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      //& Surface
      "surface-0": withOpacityValue("--clr-surface-0"),
      "surface-1": withOpacityValue("--clr-surface-1"),
      "surface-2": withOpacityValue("--clr-surface-2"),
      "surface-3": withOpacityValue("--clr-surface-3"),
      // & Text
      "text-0": withOpacityValue("--clr-text-0"),
      "text-1": withOpacityValue("--clr-text-1"),
      "text-2": withOpacityValue("--clr-text-2"),
      // & Brand
      "brand-0": withOpacityValue("--clr-brand-0"),
    },
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
