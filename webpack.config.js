var webpack = require('webpack');
var path = require('path');

module.exports = {
    context: __dirname,
    entry: {
        application: './app/assets/javascripts/entry.cjsx'
    },
    output: {
        path: path.join(__dirname, 'app', 'assets', 'javascripts'),
        filename: 'application.js',
        devtoolModuleFilenameTemplate: '[resourcePath]',
        devtoolFallbackModuleFilenameTemplate: '[resourcePath]?[hash]'
    },
    resolve: {
        extensions: ['', '.js', '.coffee', '.jsx', '.cjsx', '.css'],
        modulesDirectories: [ 'node_modules' ]
    },
    plugins: [
        new webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery'
        }),
        new webpack.DefinePlugin({
            'process.env': {
                'NODE_ENV': process.env.NODE_ENV
            }
        })
    ],
    module: {
        loaders: [
            { test: /\.cjsx$/, loaders: ['coffee', 'cjsx'] },
            { test: /\.coffee$/, loader: 'coffee' },
            { test: /\.jsx$/, loader: 'jsx-loader?insertPragma=React.DOM&harmony' },
            { test: /\.(png|jpg|jpeg|gif)$/, loader: 'file-loader' },
            { test: /\.woff2?([\?\#]{1,}.*)?$/, loader: 'url-loader?mimetype=application/font-woff' },
            { test: /\.ttf([\?\#]{1,}.*)?$/, loader: 'file-loader' },
            { test: /\.eot([\?\#]{1,}.*)?$/, loader: 'file-loader' },
            { test: /\.svg([\?\#]{1,}.*)?$/, loader: 'file-loader' }
        ]
    }
};
