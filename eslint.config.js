import js from '@eslint/js';
import globals from 'globals';

const INDENT_LEVEL = 2;

export default [
  {
    ignores: ['dist/**', 'webpack.config.js'],
  },
  {
    files: ['**/*.{js,mjs,cjs}'],
    ...js.configs.recommended,
    languageOptions: {
      globals: globals.browser,
      ecmaVersion: 'latest',
      sourceType: 'module',
    },
    rules: {
      'indent': ['error', INDENT_LEVEL],
      'camelcase': 'error',
      'no-unused-vars': 'warn',
      'eqeqeq': 'error',
      'curly': 'error',
      'no-console': 'warn',
      'no-undef': 'error',
      'no-magic-numbers': ['warn', { ignore: [0, 1] }],
      'prefer-const': 'error',
      'no-var': 'error',
      'quotes': ['error', 'single', { 'avoidEscape': true }],
      'semi': ['error', 'always'],
      'arrow-parens': ['error', 'always'],
      'arrow-spacing': ['error', { 'before': true, 'after': true }],
      'no-trailing-spaces': 'error',
      'object-shorthand': 'error',
      'comma-dangle': ['error', 'always-multiline'],
      'no-multi-spaces': 'error',
    },
  },
  {
    files: ['src/debug.js'],
    rules: {
      'no-console': 'off',
    },
  },
];