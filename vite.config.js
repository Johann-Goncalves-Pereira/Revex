import { defineConfig } from "vite";
import elm from "vite-plugin-elm";
import globalStyle from "@originjs/vite-plugin-global-style";

export default {
  plugins: [
    elm(),
    globalStyle({
      sourcePath: "./src/Styles/",
      lessEnabled: false,
      stylusEnabled: false,
    }),
  ],
  build: {
    outDir: "build",
    target: "es2020",
  },
};
