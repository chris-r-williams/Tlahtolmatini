import js from '@eslint/js';
import globals from 'globals';

const INDENT_LEVEL = 2;

export default [
  {
    ignores: ['dist/**'],
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
      'space-before-function-paren': ['error', {
        'anonymous': 'always',
        'named': 'never',
        'asyncArrow': 'always',
      }],
      'keyword-spacing': ['error', { 'before': true, 'after': true }],
      'brace-style': ['error', '1tbs', { 'allowSingleLine': false }],
      'comma-spacing': ['error', { 'before': false, 'after': true }],
      'computed-property-spacing': ['error', 'never'],
      'func-call-spacing': ['error', 'never'],
      'space-before-blocks': 'error',
      'key-spacing': ['error', { 'beforeColon': false, 'afterColon': true }],
      'array-bracket-spacing': ['error', 'never'],
      'block-spacing': 'error',
      'computed-property-spacing': ['error', 'never'],
      'no-multiple-empty-lines': ['error', { 'max': 1, 'maxEOF': 0 }],
      'newline-per-chained-call': ['error', { 'ignoreChainWithDepth': 2 }],
      'no-duplicate-imports': 'error',
    },
  },
  {
    files: ['src/debug.js'],
    rules: {
      'no-console': 'off',
    },
  },
];