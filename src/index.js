import { Elm } from "./Main.elm";

const stylesL00 = import.meta.globEager("./Styles/*.scss");
const stylesL01 = import.meta.globEager("./Styles/**/*.scss");

const app = Elm.Main.init();
