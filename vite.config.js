import { defineConfig, loadEnv } from "vite";

import elm from "vite-plugin-elm";
import legacy from "@vitejs/plugin-legacy";

import postcss from "./postcss.config.js";
import { addSassVar } from "./src/Ts/Load/sassEnv";

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd(), "");

  addSassVar(mode);

  return {
    plugins: [
      elm(),
      legacy({
        targets: ["defaults", "not IE 11"],
      }),
    ],
    server: {
      host: "0.0.0.0",
      port: 5123,
    },
    // preview: {
    // port: 8080,
    // },
    define: {
      env: env.APP_ENV,
    },
    css: {
      postcss,
    },
  };
});
