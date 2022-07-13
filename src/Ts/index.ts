import { Elm } from "../Main.elm";
import { Storage } from "./Ports/storage";

import "./Load/loadStyles.ts";

//? Initialize our Elm app
const rootNode = document.querySelector("#root");

const app = Elm.Main.init({
  node: rootNode,
});

Storage(app);
