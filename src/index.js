import { Elm } from "./Main.elm";

//? Import css but need to have a index on the folder of the css files.
// const stylesIndex = import.meta.globEager("./Styles/**/_index.scss");
//? Import every css on the Styles folder, but custom-property don't work.
// const stylesEvery = import.meta.globEager("./Styles/**");
//? Just import the index.scss no side effect, but need to import everything manually.
import "./Styles/_index.scss";

// Initialize our Elm app
const app = Elm.Main.init();
