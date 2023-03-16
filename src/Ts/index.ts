import { Elm } from "../Main.elm";
import { Storage, StorageFlag } from "./Ports/storage";

import "./Load/loadStyles";

//? Initialize our Elm app
export const RootNode = document.querySelector("#root");

const app: Elm = Elm.Main.init({
  node: RootNode,
  flags: StorageFlag,
});

Storage(app);
