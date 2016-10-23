/* global process */

var AutoPrefixer = require('autoprefixer');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var ExtractTextPlugin = require('extract-text-webpack-plugin');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var UnminifiedWebpackPlugin = require('unminified-webpack-plugin');
var Webpack = require('webpack');
var WebpackMerge = require('webpack-merge');


var npm_target = process.env.npm_lifecycle_event;
var environment;

if (npm_target === 'start') {
  environment = 'development';
} else {
  environment = 'production';
}

var common = {
  entry: {
    app: './build/app.js',
    vendor: './build/vendor.js'
  },

  resolve: {
    modulesDirectories: ['node_modules'],
    extensions: ['', '.js', '.elm']
  },

  module: {
    loaders: [{
      test: /\.(eot|svg|ttf|woff|woff2)(\?v=\d+\.\d+\.\d+)?/,
      loader: 'file'
    }],

    noParse: /^(?!.*Stylesheets).*\.elm$/
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: 'build/index.tpl.html'
    }),
    new Webpack.optimize.CommonsChunkPlugin({
      name: "init",
      minChunks: Infinity
    }),
    new Webpack.optimize.OccurenceOrderPlugin()
  ],

  postcss: [AutoPrefixer({
    browsers: ['last 2 versions']
  })],

  target: 'web'
};

var extractCssVendor = null;

if (environment === 'development') {
  console.log('running development');
  extractCssVendor = new ExtractTextPlugin('vendor.css');

  var devOnly = {
    output: {
      filename: '[name].js'
    },

    module: {
      loaders: [
        {
          test: /\.css$/,
          loader: extractCssVendor.extract('style', 'css')
        },

        {
          test: /build\/Stylesheets.elm$/,
          loaders: [
            'style',
            'css?sourceMap',
            'postcss',
            'elm-css-webpack'
          ]
        },

        {
          test: /\.elm$/,
          exclude: [
            /elm-stuff/,
            /node_modules/,
            /build\/Stylesheets.elm/
          ],
          loaders: [
            'elm-hot',
            'elm-webpack?verbose=true&warn=true'
          ]
        }
      ]
    },

    plugins: [
      extractCssVendor
    ],

    devServer: {
      progress      : true,
      port          : 7777,
      stats         : 'errors-only'
    }
  };

  module.exports = WebpackMerge(common, devOnly);
} else {
  console.log('building for production');
  extractCssVendor = new ExtractTextPlugin('vendor-[chunkhash].css');
  var extractCssApp = new ExtractTextPlugin('app-[chunkhash].css', {
    allChunks: true
  });

  var prodOnly = {
    output: {
      path: './dist',
      filename: '[name]-[chunkhash].min.js',
      chunkFilename: '[name]-[chunkhash].min.js'
    },

    module: {
      loaders: [
        {
          test: /\.css$/,
          loader: extractCssVendor.extract('style', 'css')
        },

        {
          test: /build\/Stylesheets.elm/,
          loader: extractCssApp.extract(
            'style', [
              'css',
              'postcss',
              'elm-css-webpack'
            ])
        },

        {
          test: /\.elm$/,
          exclude: [
            /elm-stuff/,
            /node_modules/,
            /build\/Stylesheets.elm$/
          ],
          loader: 'elm-webpack'
        }
      ]
    },

    plugins: [
      new CopyWebpackPlugin([{
        from: 'src/index.html'
      }, {
        from: 'src/assets',
        to: 'assets'
      }]),
      extractCssApp,
      extractCssVendor,
      new UnminifiedWebpackPlugin(),
      new Webpack.optimize.UglifyJsPlugin({
        compress: {
          warnings: false
        }
      })
    ]
  };

  module.exports = WebpackMerge(common, prodOnly);
}
