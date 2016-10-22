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
      loader: 'file-loader'
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
var extractCssApp = null;

if (environment === 'development') {
  console.log('running development');
  extractCssVendor = new ExtractTextPlugin('vendor.css');
  extractCssApp = new ExtractTextPlugin('app.css');

  var devOnly = {
    output: {
      filename: '[name].js'
    },

    module: {
      loaders: [{
        test: /\.css$/,
        loader: extractCssVendor.extract('style-loader', 'css-loader')
      },

      {
        test: /build\/Stylesheets.elm$/,
        loader: extractCssApp.extract(
          'style-loader', [
            'css-loader',
            'postcss-loader',
            'elm-css-webpack-loader'
        ])
      },

      {
        test: /\.elm$/,
        exclude: [
          /elm-stuff/,
          /node_modules/,
          /build\/Stylesheets.elm$/
        ],
        loaders: [
          'elm-hot-loader',
          'elm-webpack-loader'
        ]
      }
      ]
    },

    plugins: [
      extractCssApp,
      extractCssVendor,
    ],

    devServer: {
      inline        : true,
      progress      : true,
      hot           : true,
      port          : 7777,
      'content-base': 'src/',
      stats         : 'errors-only'
    }
  };

  module.exports = WebpackMerge(common, devOnly);
} else {
  console.log('building for production');
  extractCssVendor = new ExtractTextPlugin('vendor-[chunkhash].css');
  extractCssApp = new ExtractTextPlugin('app-[chunkhash].css', {
    allChunks: true
  });

  var prodOnly = {
    output: {
      path: './dist',
      filename: '[name]-[chunkhash].min.js',
      chunkFilename: '[name]-[chunkhash].min.js'
    },

    module: {
      loaders: [{
        test: /\.css$/,
        loader: extractCssVendor.extract('style-loader', 'css-loader')
      },

      {
        test: /build\/Stylesheets.elm/,
        loader: extractCssApp.extract(
          'style-loader', [
            'css-loader',
            'postcss-loader',
            'elm-css-webpack-loader'
          ])
      },

      {
        test: /\.elm$/,
        exclude: [
          /elm-stuff/,
          /node_modules/,
          /build\/Stylesheets.elm$/
        ],
        loader: 'elm-webpack-loader'
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
