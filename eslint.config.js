import js from "@eslint/js";
import globals from "globals";
import { defineConfig } from "eslint/config";

export default defineConfig([
  {
    ignores: ["dist/**", "node_modules/**", "webpack.config.js"],
  },

  // 1. Main configuration for all JavaScript files
  {
    files: ["**/*.{js,mjs,cjs}"], // This pattern covers your application files and config files
    
    // --- Ignore the 'dist' folder ---
    // In flat config, you specify ignored files/folders directly within the config array.
    // This replaces the need for a separate .eslintignore file.
   
    // Ignoring specific files or directories
    //ignores: ["node_modules/", "dist/"],
 

    plugins: {
      js,
    },
    extends: [
      js.configs.recommended, // Equivalent to "eslint:recommended"
    ],
    languageOptions: {
      // --- Address "Parsing error: Unexpected token assert" ---
      // Set ecmaVersion to 'latest' to enable parsing of all new ECMAScript features,
      // including the 'assert { type: "json" }' syntax from ES2023 (or later).
      ecmaVersion: "latest",
      sourceType: "module", // Essential for ES Modules like your webpack.config.js

      // Combine browser and Node.js globals
      // Your application code runs in a browser (hence `globals.browser`).
      // Your `webpack.config.js` runs in a Node.js environment, so it needs Node.js globals.
      // Combining them here ensures both contexts are covered.
      globals: {
        ...globals.browser, // Includes browser globals (e.g., window, document)
        ...globals.node,    // Includes Node.js globals (e.g., process, require, module, __dirname, __filename)
      },
      parserOptions: {
        ecmaVersion: "latest",
        sourceType: "module",
      },
    },
    rules: {
      // You can add or override specific rules here if needed
      // Example: 'no-unused-vars': 'warn',
    },
  },
]);
