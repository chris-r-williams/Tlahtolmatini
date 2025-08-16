import { NahuatlParser } from './parser/index.js';

function debug() {
  // grammar
  //const words = ["imeuh"]; // ambiguous words
  //const words = ["ahmo", "tlein", "nican"]; // invariable words
  //const words = ["coyotl", "molli", "cactli", "cacahuatl"]; // singular absolutive suffixes
  //const words = ["ichcame", "cihuameh", "oquichtin", "cihuah"]; // plural absolutive suffixes
  //const words = ["nitlacatl", "titlacatl", "titlacah", "antlacah", "tlacah"]; // predicate nouns
  //const words = ["nomol", "mocihuauh", "ichichiuh", "notlacahuan", "mocihuahuan", "ichichihuan"]; // singular possessive prefixes and suffixes
  //const words = ["tomol", "amocihuauh", "imchichiuh", "totlacahuan", "amocihuahuan", "imchichihuan"]; // plural possessive prefixes and suffixes
  //const words = ["cahua", "nechcahua", "mitzcahua", "quicahua", "techcahua", "amechcahua","quincahua"]; // third person singular verbs
  //const words = ["cahuah", "nechcahuah", "mitzcahuah", "quicahuah", "techcahuah", "amechcahuah", "quincahuah"]; // third person plural verbs
  //const words = ["ticahua", "tinechcahua", "ticcahua", "titechcahua", "tiquincahua"]; // second person singular verbs
  //const words = ["ancahuah", "annechcahuah", "anccahuah", "antechcahuah", "anquincahuah"]; // second person plural verbs
  //const words = ["nicahua", "nimitzcahua", "niccahua", "namechcahua", "niquincahua"]; // first person singular verbs
  //const words = ["ticahuah", "timitzcahuah", "ticcahuah", "tamechcahuah", "tiquincahuah"]; // first person plural verbs
  //const words = ["cacahuacomitl", "cuauhtemoc", "noxochicihuatl"]; // compound words
  //const words = ["ninoitta", "timoitta", "moitta", "titoitta", "ammoitta"]; // reflexive

  // vocabulary
  //const words = ["tamolnamacac", "tamol", "nenamacac", "mepahuax", "toquichtli", "amoquichtequiuh", "nichpochtli", "tinochpoch", "iacal"]; // lockhart lesson 1
  //const words = ["tlaittalli", "tocihuaxochitl", "notlacualli", "pitzalli", "tlapitzalli", "tlahtolmatini"]; // random words
  //const words = ["cua", "tlacua", "nicua", "nitlacua"];
  const words = ['atl', 'etl', 'ichcatl', 'ohtli', 'pamitl', 'tocatl', 'cacaoh', 'lemeni', 'tomin', 'nesi', 'ehecatl', 'hueyi', 'yayahuic', 'ce', 'chahuiztli', 'xoxoctic', 'tzapotl', 'tlalli', 'cuahuitl', 'yollo', 'noteco', 'tonatiuh', 'nocniuh', 'necuhtli', 'nicnequi', 'niccaqui', 'canin', 'mocauhqui', 'quitzacqui', 'tlacualli', 'tecciztli', 'chichi', 'notlacauh', 'nocihuauh', 'tototl', 'quetzalcoatl', 'cocolia', 'mococoa', 'coatl', 'niccohua', 'nimotlaloa', 'tetiya', 'nictequihuia', 'chichi', 'tlatia', 'toca', 'amo', 'quena', 'nanan', 'tetic', 'noyollo', 'nonantzin', 'tlayi', 'ahui', 'cihuatl', 'cuahuitl', 'tzahtzi', 'ahhua', 'nechuitzin', 'mochiuhtoc', 'tlazcamati', 'tlazohcamati']; // garcia, learn nahuat, 1. pronunciation
  //const words = ['tlaittalli'];
  const numWords = words.length;
  let successful = 0;

  words.forEach((word) => {
    if (analyze(word)) {
      successful++;
    }
  });

  console.log(`\n${successful}/${numWords} successful parsings`);
}

// Debug test case
function analyze(input) {
  console.log('=== DEBUGGING WORD ===\n');

  const parser = new NahuatlParser();
  const word = input;

  console.log(`Input word: "${word}"`);

  // Run the actual parser
  console.log('\n--- PARSER EXECUTION ---');
  const result = parser.analyze(word);

  console.log('Parse successful:', result.success);

  if (result.success) {
    	console.log('Generated test:');
    	console.log(`assert.strictEqual(JSON.stringify(parser.analyze("${word}")), \`${JSON.stringify(result)}\`, "${word}");`);

    	result.parsings.forEach((parsing) => {
      console.log('Parsed morphemes:');
        	parsing.morphemes.forEach((m, i) => {
            	console.log(`  ${i + 1}. "${m.morpheme}" -> ${m.details.type} (${m.details.english || m.details.category})`);
        	});
    });
  } else {
    console.log('Parse failed:', result.error);
    console.log('Generated placeholder test:');
    console.log(`//assert.strictEqual(JSON.stringify(parser.analyze("${word}")), \`\`, "${word}");`);

  }

  return result.success;
}

// Run the debug function
debug();
