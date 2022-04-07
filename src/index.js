import { Elm } from "./Main.elm";

//Lazy
const styles = import.meta.globEager("./Styles/**/*.scss");
// import "./Styles/_index.scss";

const app = Elm.Main.init();
