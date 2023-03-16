import autoprefixer from "autoprefixer";
import cssnano from "cssnano";

import postcssCustomMedia from "postcss-custom-media";
import postcssCustomProperties from "postcss-custom-properties";
import postcssInlineSvg from "postcss-inline-svg";
import postcssPresetEnv from "postcss-preset-env";

import tailwind from "tailwindcss";
import tailwindConfig from "./tailwind.config.js";
import tailwindNesting from "tailwindcss/nesting";

export default {
  plugins: [
    autoprefixer,
    tailwind(tailwindConfig),
    tailwindNesting,
    cssnano({
      preset: [
        "default",
        {
          cssDeclarationSorter: false,
          reduceIdents: false,
        },
      ],
    }),
    postcssCustomMedia,
    postcssCustomProperties,
    postcssInlineSvg,
    postcssPresetEnv({
      precalculate: false,
      features: {
        "logical-properties-and-values": false,
      },
    }),
  ],
};
