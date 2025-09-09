import { NahuatlParser } from './parser/NahuatlParser.js';

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
  //const words = ["tlaittalli", "tocihuaxochitl", "notlacualli", "pitzalli", "tlapitzalli", "tlahtolmatini"]; // random words
  //const words = ["cua", "tlacua", "nicua", "nitlacua"];
  //const words = ['atl', 'etl', 'ichcatl', 'ohtli', 'pamitl', 'tocatl', 'cacaoh', 'lemeni', 'tomin', 'nesi', 'ehecatl', 'hueyi', 'yayahuic', 'ce', 'chahuiztli', 'xoxoctic', 'tzapotl', 'tlalli', 'cuahuitl', 'yollo', 'noteco', 'tonatiuh', 'nocniuh', 'necuhtli', 'nicnequi', 'niccaqui', 'canin', 'mocauhqui', 'quitzacqui', 'tlacualli', 'tecciztli', 'chichi', 'notlacauh', 'nocihuauh', 'tototl', 'quetzalcoatl', 'cocolia', 'mococoa', 'coatl', 'niccohua', 'nimotlaloa', 'tetiya', 'nictequihuia', 'chichi', 'tlatia', 'toca', 'amo', 'quena', 'nanan', 'tetic', 'noyollo', 'nonantzin', 'tlayi', 'ahui', 'cihuatl', 'cuahuitl', 'tzahtzi', 'ahhua', 'nechuitzin', 'mochiuhtoc', 'tlazcamati', 'tlazohcamati']; // modern vocabulary, set 1
  //const words = ['coyotl', 'amatl', 'camohtli', 'pahtli', 'calli', 'tamalli', 'citlalin', 'michin', 'mizton', 'cahuayoh', 'patox', 'nomichin', 'michimeh', 'tlalli', 'nemilistli', 'cihuapil', 'cuapuertah', 'tepostli', 'tlaltipactli', 'tlatsotsontli', 'macehualli', 'coyomeh', 'miztonmeh', 'macehualmeh', 'chichimeh', 'ocuilimeh', 'pantalon', 'tepetl', 'oquichpil', 'ocuilin', 'altepetl', 'pitzotl', 'amoxtli', 'tepetl', 'ce', 'ome', 'eyi', 'nahui', 'macuilli', 'chicuace', 'chicome', 'chicueyi', 'chicnahui', 'mahtlactli', 'nitlacatl', 'titlacatl', 'titlacameh', 'intlacameh', 'tlacameh', 'maxochitl', 'telpocatl', 'ichpocatl', 'momachtianih', 'momachtihquetl', 'papalotl', 'ayotl', 'inin', 'inon', 'zayolin', 'cuecuetztzin', 'namantzin', 'piyo', 'huacax', 'toroh', 'cuatochin']; // modern vocabulary, set 2
  //const words = ['tecactli', 'notecac', 'nochichi', 'nochichihuan', 'noyollo', 'motlayi', 'motlayihuan', 'noicnihuan', 'iicnihuan', 'toicniuh', 'inmoicniuh', 'ininicniuh', 'ininicnihuan', 'mocahuayoh', 'ininpitzo', 'motamal', 'nocoton', 'noeuh', 'noauh', 'icnitl', 'noicniuh', 'noahuacauh', 'notocah', 'motocah', 'itocah', 'queniuhqui', 'ichichi', 'inantzin', 'itlayi', 'ichan', 'notlalhui', 'nopahui', 'yeyohtli', 'noyeyohwi', 'cotomitl', 'nocoton', 'tocaitl', 'cueitl', 'nocue', 'cualtitoc', 'nimitztlahpaloz', 'tatah', 'notzontecon', 'noixtiyol', 'nonacaz', 'notzoncal', 'noyacatzol', 'noixxayac']; // modern vocabulary, set 3
  const words = ['nehua', 'tehua', 'ehua', 'tehuah', 'amehuah', 'ehuah', 'nimiqui', 'timiqui', 'miqui', 'timiquih', 'ammiquih', 'miquih', 'nichoca', 'anchocah', 'niyoli', 'anyolih', 'nitzahtzi', 'antzahtzih', 'nicochi', 'ancochih', 'cochi', 'in', 'cihuatl', 'cuica', 'cuicah', 'cihuah', 'tlacatl', 'tlacah', 'mexihcatl', 'mexihcah', 'choca', 'nicuica', 'titzahtzih', 'ticochi', 'yolih']; // classical vocabulary, set 1
  //const words = ['tlayi'];
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
  const onlyTests = true;

  if (!onlyTests) {
    console.log('=== DEBUGGING WORD ===\n');
  }

  const parser = new NahuatlParser();
  const word = input;

  if (!onlyTests) {
    console.log(`Input word: "${word}"`);
  }

  // Run the actual parser
  if (!onlyTests) {
    console.log('\n--- PARSER EXECUTION ---');
  }
  const result = parser.analyze(word);

  if (!onlyTests) {
    console.log('Parse successful:', result.success);
  }

  if (result.success) {
    if (!onlyTests) {
    	console.log('Generated test:');
    }
    console.log(`assert.strictEqual(JSON.stringify(parser.analyze('${word}')), '${JSON.stringify(result)}', '${word}');`);
    result.parsings.forEach((parsing) => {

      if (!onlyTests) {
        console.log('Parsed morphemes:');
        parsing.morphemes.forEach((m, i) => {
          console.log(`  ${i + 1}. "${m.morpheme}" -> ${m.details.type} (${m.details.english || m.details.category})`);
        });
      }
    });
  } else {
    if (!onlyTests) {
      console.log('Parse failed:', result.error);
      console.log('Generated placeholder test:');
    }
    console.log(`//assert.strictEqual(JSON.stringify(parser.analyze('${word}')), '', '${word}');`);
  }

  return result.success;
}

// Run the debug function
debug();
