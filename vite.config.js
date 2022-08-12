import { defineConfig, loadEnv } from "vite";

import elm from "vite-plugin-elm";
import legacy from "@vitejs/plugin-legacy";

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd(), "");

  return {
    plugins: [
      elm(),
      legacy({
        targets: ["defaults", "not IE 11"],
      }),
    ],
    server: {
      host: "0.0.0.0",
      port: 3000,
    },
    preview: {
      port: 8080,
    },
    define: {
      __APP_ENV__: env.APP_ENV,
    },
  };
});
