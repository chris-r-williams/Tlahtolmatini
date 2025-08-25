import path from 'path';
import { fileURLToPath } from 'url';
import pkg from './package.json' with { type: 'json' };

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const { version } = pkg;

export default {
  entry: './src/index.js',
  output: {
    filename: `tlahtolmatini.v${version}.min.js`,
    path: path.resolve(__dirname, 'dist'),
    library: 'Tlahtolmatini',
    libraryTarget: 'umd',
    globalObject: 'this',
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
    ],
  },
  mode: 'production',
  optimization: {
    minimize: true,
  },
  resolve: {
    extensions: ['.js'],
  },
};
