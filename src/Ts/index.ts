import { Elm } from "../Main.elm";
import { Storage, StorageFlag } from "./Ports/storage";

import "./Load/loadStyles.ts";

//? Initialize our Elm app
const RootNode = document.querySelector("#root");

const app: Elm = Elm.Main.init({
  node: RootNode,
  flags: StorageFlag,
});

Storage(app);
