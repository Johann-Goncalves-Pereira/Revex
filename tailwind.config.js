function withOpacityValue(variable) {
  return ({ opacityValue }) => {
    if (opacityValue === undefined) {
      return `hsl(var(${variable}))`;
    }
    return `hsla(var(${variable}), ${opacityValue})`;
  };
}

module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx,elm}"],
  theme: {
    colors: {
      //& Surface
      "surface-0": withOpacityValue("--clr-surface-0-alpha"),
      "surface-1": withOpacityValue("--clr-surface-1-alpha"),
      "surface-2": withOpacityValue("--clr-surface-2-alpha"),
      "surface-3": withOpacityValue("--clr-surface-3-alpha"),
      // & Text
      "text-0": withOpacityValue("--clr-text-0-alpha"),
      "text-1": withOpacityValue("--clr-text-1-alpha"),
      "text-2": withOpacityValue("--clr-text-2-alpha"),
      // & Brand
      "brand-0": withOpacityValue("--clr-brand-0-alpha"),
    },
    extend: {},
  },
  plugins: [],
  corePlugins: {
    preflight: false,
  },
};
