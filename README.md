# An Boilerplate to work with Elm
Features and tools:

- Build
  - [X] [Vite](https://vitejs.dev)
  - [X] [EsBuild](https://esbuild.github.io)
  - [X] [Elm-Spa](https://elm-spa.dev)
  - [ ] [Docker](https://www.docker.com)
- Code
  - [X] [Elm](https://elm-lang.org)   
  - [X] [JavaScript](https://www.typescriptlang.org)
  - [X] [TypeScript](https://www.typescriptlang.org)
- Style
  - [X] [Sass](https://sass-lang.com)
  - [X] [PostCss](https://postcss.org) ++ _Plugins_
  - [X] [Open-Props](https://open-props.style)
  - [X] [Tailwind](https://tailwindcss.com)
- Formatting
  - [X] [EditorConfig](https://editorconfig.org)

# Run the project
If you want to see the _demo_ before, start coding: 
[Demo - Revex](https://main--revex.netlify.app)

## Dependencies
This project requires [Node.js](https://nodejs.org/) version _16.14.2 - LTS_ or above. <br/>
And I recommend the use of [yarn](https://yarnpkg.com).

## Installation
To start, you have two options:
  1. Make a fork from this repository. _not recommended_
  2. Press the `Use this template` button and follow the GitHub instructions. _recommended_


Then, on the project `folder/directory`, run the command to install all the dependencies.
```bash
yarn install
```

_You can use `npm` if you prefer_

# Run Locally
Because of Vite, when all the dependencies are installed, it's super simple to start a local server.

### Development.
This should make a local server on the port 3000.
```bash
yarn dev
```
With the code running, go to: [http://localhost:3000](http://localhost:3000)

## Production.
This command will generate a production version of your code.
```bash
yarn build
```

And to check production locally. _(need to run build first)_
```bash
yarn preview
```

## How to deploy your code to show to the world what can you do.
This project has a [Netlify](https://www.netlify.com) base settings. _You can see this on the [netlify.toml](https://github.com/Johann-Goncalves-Pereira/Revex/blob/main/netlify.toml) file_.

So if you want to follow this path of deploying it. It is super **easy** and **simple**. Just go to Netlify website, make an account or login in.
Add your `repository` with this template and follow the instructions of Netlify. <br/>
<p>
 <img  align="left" width="45%"ima src="https://user-images.githubusercontent.com/62612685/163657110-20c17e3a-71c6-46c1-9be9-d598387008a5.png" alt="Netlify Config" />
  <- When you get to this point: <br/>
  &nbsp;&nbsp;&nbsp;&nbsp;Don't change anything if you don't know what are you doing.
  <br/><br/>
 <strong>If you see this logs, your site is up for everyone to see ✨</strong><br/>
 <img width="45%" src="https://user-images.githubusercontent.com/62612685/163657208-681fc2f0-397b-4cd0-9d3b-cf2c0c5767b9.png" alt="Netlify Config" />
</p>

