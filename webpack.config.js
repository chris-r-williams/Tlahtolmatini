import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import { readFileSync } from 'fs';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const { version } = JSON.parse(readFileSync(new URL('./package.json', import.meta.url), 'utf8'));

export default {
    mode: 'production',
    entry: './src/index.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: `tlahtolmatini.v${version}.min.js`,
        chunkFilename: '[name].tlahtolmatini.js',
        clean: {
            // Keep the separately distributed SWI-Prolog WASM bundle.
            keep: /swipl-bundle/,
        },
        library: 'Tlahtolmatini',
        libraryTarget: 'umd',
        umdNamedDefine: true,
        globalObject: 'typeof self !== "undefined" ? self : this',
        publicPath: 'dist/',
    },
    externals: {
        // Use the SWI-Prolog WASM bundle loaded from the official GitHub
        // Pages build (it exposes a global `SWIPL`).
        'swipl-wasm': 'SWIPL',
        // Do not bundle the Node.js filesystem module. The browser build
        // never executes the Node branch; webpack still needs to resolve it.
        'fs': 'commonjs fs',
        'node:fs': 'commonjs fs'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/preset-env']
                    }
                }
            }
        ]
    },
    resolve: {
        extensions: ['.js', '.json']
    }
};