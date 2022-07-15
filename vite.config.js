import { defineConfig, loadEnv } from "vite";

import elm from "vite-plugin-elm";
import legacy from "@vitejs/plugin-legacy";

export default defineConfig(({ command, mode }) => {
  const env = loadEnv(mode, process.cwd(), "");

  return {
    plugins: [
      elm(),
      legacy({
        targets: ["defaults", "not IE 11"],
      }),
    ],
    server: {
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
