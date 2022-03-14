import { Elm } from "./Main.elm";

const modules = import.meta.globEager("./Styles/*.scss");

const app = Elm.Main.init();
