import { Elm } from "./Main.elm";

// Import the CSS files
const styles = import.meta.globEager("./Styles/**/*.scss");
// Initialize our Elm app
const app = Elm.Main.init();
