var path              = require('path');
var webpack           = require('webpack');
var merge             = require('webpack-merge');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var autoprefixer      = require('autoprefixer');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var entryPath         = path.resolve(__dirname, 'app/assets/index.js');
var outputPath        = path.resolve(__dirname, 'public');

console.log( 'WEBPACK GO!');

// determine build env
var TARGET_ENV = process.env.npm_lifecycle_event === 'build' ? 'production' : 'development';
var outputFilename = TARGET_ENV === 'production' ? '[name]-[hash].js' : '[name].js'

// common webpack config
var commonConfig = {

  output: {
    path:       outputPath,
    filename:   outputFilename,
    publicPath: '/'
  },

  resolve: {
    extensions: ['.js', '.elm']
  },

  module: {
    // noParse: /\.elm$/,
    rules: [
      {
        test: /\.(eot|ttf|woff|woff2|svg)$/,
        use:  'file-loader'
      }
    ]
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: 'app/assets/index.html',
      inject:   'body',
      filename: 'index.html'
    })
  ]

}

// additional webpack settings for local env (when invoked by 'npm start')
if ( TARGET_ENV === 'development' ) {
  console.log('Serving locally...');

  module.exports = merge(commonConfig, {

    entry: [
      'webpack-dev-server/client?http://localhost:7777',
      entryPath
    ],

    devServer: {
      // serve index.html in place of 404 responses
      contentBase: outputPath,
      historyApiFallback: true,
      inline: true,
      port: 7777
    },

    module: {
      rules: [
        {
          test:    /\.elm$/,
          exclude: [/elm-stuff/, /node_modules/, /Stylesheets\.elm$/],
          use: [
            'elm-hot-loader',
            'elm-webpack-loader?verbose=true&warn=true&debug=true'
          ]
        },
        {
          test: /Stylesheets\.elm$/,
          use: [
            'style-loader',
            'css-loader',
            'postcss-loader',
            'elm-css-webpack-loader'
          ]
        }
      ]
    }

  });
}

// additional webpack settings for prod env (when invoked via 'npm run build')
if ( TARGET_ENV === 'production' ) {
  console.log('Building for prod...');

  module.exports = merge(commonConfig, {

    entry: entryPath,

    module: {
      rules: [
        {
          test:    /\.elm$/,
          exclude: [/elm-stuff/, /node_modules/, /Stylesheets\.elm$/],
          use:     'elm-webpack-loader'
        },
        {
          test: /Stylesheets\.elm$/,
          use: ExtractTextPlugin.extract({
            fallback: "style-loader",
            use: [
              'css-loader',
              'postcss-loader',
              'elm-css-webpack-loader'
            ]
          })
        }
      ]
    },

    plugins: [
      new CopyWebpackPlugin([
        {
          from: 'app/assets/images/',
          to:   'images/'
        },
        {
          from: 'app/assets/icons/favicon.ico'
        }
      ]),

      new webpack.optimize.OccurrenceOrderPlugin(),

      // extract CSS into a separate file
      new ExtractTextPlugin('[name]-[hash].css'),

      // minify & mangle JS/CSS
      new webpack.optimize.UglifyJsPlugin({
          minimize:   true,
          compressor: { warnings: false }
          // mangle:  true
      })
    ]

  });
}
