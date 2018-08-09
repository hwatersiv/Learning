//info on Webpack's Node Api https://webpack.github.io/docs/node.js-api.html
//Allowing console calls below since this is a build file
/*eslint-disable no-console*/
import webpack from 'webpack';
import webpackConfig from '../webpack.config.prod';
import colors from 'colors';

process.env.NODE_ENV = 'production'; // this assures the Babel dev config (for hot reloading) doesn't apply.

console.log ("generating minified bundle for production via Webpack this will take a moment...".blue);

webpack(webpackConfig).run((err, stats) => {
  if(err){ //so a fatal error occured stop here
    console.log(err.bold.red);
    return 1;
  }

  const jsonStats = stats.toJson();

  if(jsonStats.hasErrors) {
    return jsonStats.errors.map(error => console.log(error.red));
  }

  if(jsonStats.hasWarnings) {
    console.log('Webpack generated the following warnings: '.bold.yellow);
    return jsonStats.warning.map(warning => console.log(warning.yellow));
  }

  console.log(`Webpack stats: ${stats}`);

  //if we got this far. the build suceeded
  console.log("Your app has been compiled in productionmode and written to /dist. It\'s readyto roll!".green);

  return 0;
});