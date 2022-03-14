#!/usr/bin/env node

const prompt = require("prompt");

const properties = [
  {
    name: "route",
    // validator: /^[^A-Z\.a-z\S\D][^_\^-]+$/,
    warning: "Route must be only letters, underlines or dashes",
  },
];

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

prompt.start();

prompt.get(properties, function (err, result) {
  if (err) {
    return onErr(err);
  }

  console.log(`A route was created on https://website/${result.route}`);
  console.log(
    `And a file was created on ./src/Pages/${capitalizeFirstLetter(
      result.route
    )}.elm`
  );
});

function onErr(err) {
  console.log(err);
  return 1;
}
