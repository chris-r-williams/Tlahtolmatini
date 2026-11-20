import SWIPL from 'swipl-wasm';
import fs from 'fs';
import path from 'path';

// Define the paths to your Prolog files
const testFilePath = path.resolve(process.cwd(), 'src/prolog/test.pl');
const parserFilePath = path.resolve(process.cwd(), 'src/prolog/parser.pl');
const lexiconFilePath = path.resolve(process.cwd(), 'src/prolog/lexicon.pl');

async function runWasmTests() {
    console.log('Loading SWIPL WASM...');

    // 1. Read the file contents
    const testFileContent = fs.readFileSync(testFilePath, 'utf8');
    const parserFileContent = fs.readFileSync(parserFilePath, 'utf8')
        + '\n' + fs.readFileSync(lexiconFilePath, 'utf8');

    // 2. Initialize SWIPL
    const pl = await SWIPL();

    // 3. Consult test.pl
    console.log('Consulting test.pl...');
    await pl.prolog.load_string(parserFileContent);
    await pl.prolog.load_string(testFileContent);

    // 4. Run the tests
    console.log('Running tests...');
    try {
        // This should now find the test suite
        await pl.prolog.call('run_tests(andrews_grammar).');
        await pl.prolog.call('run_tests(learn_nahuatl).');
        await pl.prolog.call('run_tests(book12_ch1).');
    } catch (error) {
        console.error('An error occurred during test execution:', error);
        process.exit(1);
    }
}

runWasmTests();