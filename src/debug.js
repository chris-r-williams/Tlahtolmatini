import { NahuatlParser } from './parser.js';

function debug() {
  // grammar
  //let words = ["imeuh"]; // ambiguous words
  //let words = ["ahmo", "tlein", "nican"]; // invariable words
  //let words = ["coyotl", "molli", "cactli", "cacahuatl"]; // singular absolutive suffixes
  //let words = ["ichcame", "cihuameh", "oquichtin", "cihuah"]; // plural absolutive suffixes
  //let words = ["nitlacatl", "titlacatl", "titlacah", "antlacah", "tlacah"]; // predicate nouns
  //let words = ["nomol", "mocihuauh", "ichichiuh", "notlacahuan", "mocihuahuan", "ichichihuan"]; // singular possessive prefixes and suffixes
  //let words = ["tomol", "amocihuauh", "imchichiuh", "totlacahuan", "amocihuahuan", "imchichihuan"]; // plural possessive prefixes and suffixes
  //let words = ["cahua", "nechcahua", "mitzcahua", "quicahua", "techcahua", "amechcahua","quincahua"]; // third person singular verbs
  //let words = ["cahuah", "nechcahuah", "mitzcahuah", "quicahuah", "techcahuah", "amechcahuah", "quincahuah"]; // third person plural verbs
  //let words = ["ticahua", "tinechcahua", "ticcahua", "titechcahua", "tiquincahua"]; // second person singular verbs
  //let words = ["ancahuah", "annechcahuah", "anccahuah", "antechcahuah", "anquincahuah"]; // second person plural verbs
  //let words = ["nicahua", "nimitzcahua", "niccahua", "namechcahua", "niquincahua"]; // first person singular verbs
  //let words = ["ticahuah", "timitzcahuah", "ticcahuah", "tamechcahuah", "tiquincahuah"]; // first person plural verbs
  //let words = ["cacahuacomitl", "cuauhtemoc", "noxochicihuatl"]; // compound words
  //let words = ["ninoitta", "timoitta", "moitta", "titoitta", "ammoitta"]; // reflexive

  // vocabulary
  //let words = ["tamolnamacac", "tamol", "nenamacac", "mepahuax", "toquichtli", "amoquichtequiuh", "nichpochtli", "tinochpoch", "iacal"]; // lockhart lesson 1
  //let words = ["tlaittalli", "tocihuaxochitl", "notlacualli", "pitzalli", "tlapitzalli", "tlahtolmatini"]; // random words
  //let words = ["cua", "tlacua", "nicua", "nitlacua"];
  //const words = ["atl", "etl", "ichkatl", "ohtli", "pamitl", "tocatl", "cacaoh", "lemeni", "tomin", "nesi", "ehecatl", "hueyi", "yayahuic", "ce", "chahuistli", "xoxoctic", "tzapotl", "tlalli", "cuahuitl", "noteco", "tonatiuh", "nocniuh", "necuhtli", "nicnequi", "niccaqui", "canin", "mocauhqui", "quitzauhcuhqui", "tlacualli", "teczistli", "chichi", "notlacauh", "nocihuauh", "tototl"]; // garcia, learn nahuat, 1. pronunciation
  const words = ['tlaittalli'];
  const numWords = words.length;
  let successful = 0;

  words.forEach((word) => {
    if(analyze(word)) {successful++;}
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
    	console.log('assert.strictEqual(JSON.stringify(parser.analyze("' + word + '")), `' + JSON.stringify(result) + '`, "");');

    	result.parsings.forEach((parsing) => {
      console.log('Parsed morphemes:');
        	parsing.morphemes.forEach((m, i) => {
            	console.log(`  ${i + 1}. "${m.morpheme}" -> ${m.details.type} (${m.details.english || m.details.category})`);
        	});
    });
  } else {
    console.log('Parse failed:', result.error);
  }

  return result.success;
}

// Run the debug function
debug();
