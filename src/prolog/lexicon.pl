% ============================================================================
% NAHUATL LEXICON
% ============================================================================
% Lexical facts for parser.pl.  Load this file after parser.pl (the JS
% loaders concatenate the two).  Each table is alphabetized.

% ============================================================================
% CLOSED-CLASS LEXICON
% ============================================================================
% Closed-class words and particles. Each table is alphabetized.

% particle/1
particle('ach').
particle('anca').
particle('aoc').
particle('at').
particle('auh').
particle('āuh').
particle('ax').
particle('aya').
particle('ayoc').
particle('ca').
particle('cānin').  % Andrews says this is actually "cān in" but it is often written as a single interrogative particle
particle('cuix').
particle('elele').
particle('hue').
particle('hueya').
particle('hui').
particle('ihyo').
particle('in').
particle('iye').
particle('mā').
particle('mah').
particle('mec').
particle('nec').
particle('nō').
particle('o').
particle('ō').
particle('oc').
particle('quena').
particle('quin').
particle('tēl').
particle('tlā').
particle('xi').
particle('xiuh').
particle('yahua').
particle('ye').
particle('zā').
particle('zan').
particle('zo').

% closed_class_word/2
closed_class_word('aactihuetzi', irregular_verb).  % plunge in (first element opaque + -ti- + HUETZ(I) 'fall'; cf. K CACTIHUETZ(I))
closed_class_word('aactiuh', irregular_verb).  % attached, going along (defective -tiuh form)
closed_class_word('aaietixqueh', irregular_verb).  % they ... (opaque)
closed_class_word('aalacatoc', adjective).  % slippery (stative of *ālacati, not in K)
closed_class_word('ac', pronoun).  % who?
closed_class_word('aca', pronoun).  % someone; K ACAH (final h dropped in the sources)
closed_class_word('acā', adverb).  % somewhere (K ACĀ)
closed_class_word('acachto', adverb).  % first of all (K ACACHTO)
closed_class_word('acah', pronoun).  % someone (K ACAH)
closed_class_word('acalchimaleque', noun).  % war boatmen (ācal-li + chīmal-li + -eh)
closed_class_word('acalchīmalequeh', noun).  % those with war boats (acalchīmal-eh-queh)
closed_class_word('acalchimaltica', locative).  % by war boat (ācal-li + chīmal-li + -tica)
closed_class_word('ācalchīmaltica', adverb).  % with boat-shields (ĀCAL-LI + CHĪMAL-LI + -TICA)
closed_class_word('acalco', locative).  % place name Acalco; K ĀCAL-LI + -CO
closed_class_word('ācalco', locative).  % in the boat (ācal-li + -co)
closed_class_word('acalē', noun).  % boatman (ĀCAL-LI + -eh)
closed_class_word('acaleque', noun).  % boat people, those with boats (ācal-li + -eh)
closed_class_word('acalēqueh', noun).  % boatmen (ĀCAL-LI + -eh + -queh)
closed_class_word('acaloco', locative).  % at the canal (acalo + -co)
closed_class_word('acaltica', adverb).  % by boat (ĀCAL-LI + -TICA)
closed_class_word('acaltica', locative).  % by boat; ācal-tica (K ĀCAL-LI, -CA)
closed_class_word('ācaltitech', locative).  % in the boat (ācal-li + -ti- + -tech)
closed_class_word('ācameh', noun).  % reeds (omen context)
closed_class_word('acan', locative).  % nowhere; AHCAN with h dropped
closed_class_word('ācatl', noun).  % reed, cane; K ĀCA-TL (citation form, FC Ācatl)
closed_class_word('acazomo', adverb).  % perhaps not (K AHCAZOMŌ)
closed_class_word('achcamo', adverb).  % not yet (K ACHCAMO)
closed_class_word('achcan', adverb).  % often (K ACHCA; sources achcan)
closed_class_word('achi', adverb).  % a little; K ACHI
closed_class_word('achic', adverb).  % a little (K ACHIC)
closed_class_word('achica', adverb).  % a little while
closed_class_word('achiton', adverb).  % a little (K ACHITON)
closed_class_word('achitōn', adverb).  % a little (ACHI + -tōn)
closed_class_word('achitonca', adverb).  % for a little while (ACHI + -ton + -ca)
closed_class_word('achitoton', adverb).  % a little bit; K ACHIHTŌN (FC achitoton)
closed_class_word('achitzin', adverb).  % a little (ACHI + -tzin; K ACHI)
closed_class_word('achitzinca', adverb).  % in a little while (K ACHIHTZINCA)
closed_class_word('achto', adverb).  % first; K ACHTO
closed_class_word('achtopa', adverb).  % first (K ACHTOPA)
closed_class_word('acico', irregular_verb).  % arrived here (AHCI + -co; h-less)
closed_class_word('acitihuetzico', irregular_verb).  % they quickly arrived
closed_class_word('acitihui', irregular_verb).  % they go arriving (ACI + -ti-hui)
closed_class_word('acito', irregular_verb).  % he reached there (AHCI + -to)
closed_class_word('acolhuah', noun).  % Acolhuah, unmarked sources spelling (K ACŌLHUAH)
closed_class_word('ācolhuah', noun).  % person of Acolhuacan (K ACŌLHUAH)
closed_class_word('ahcan', locative).  % nowhere
closed_class_word('ahcico', irregular_verb).  % they arrived hither (ahci + -co)
closed_class_word('ahcihualoz', irregular_verb).  % one will arrive there (AHCI + -hualo passive + -z)
closed_class_word('ahmo', particle).  % not (negative particle)
closed_class_word('ahtitlemeh', pronoun).  % worthless ones, nobodies (AH- + TLEMEH; no K headword)
closed_class_word('ahtlatica', adverb).  % by water, on the water (Ā-TL + -TICA)
closed_class_word('ahtle', pronoun).  % nothing
closed_class_word('ahtleh', pronoun).  % nothing (K AHTLEH)
closed_class_word('ahuachpixauhtimani', irregular_verb).  % it was drizzling gently
closed_class_word('āhuachquiahuia', irregular_verb).  % it was drizzling (ĀHUACHQUIAHUI)
closed_class_word('ahuachquiauhtimani', irregular_verb).  % it was raining lightly
closed_class_word('ahuachtzetzeliuhtimani', irregular_verb).  % it was sprinkling
closed_class_word('ahuah', particle).  % no, not; K AHHUA
closed_class_word('ahuel', adverb).  % impossible, cannot; K AHHUEL
closed_class_word('ahuelitoctzin', noun).  % Ahuelitoctzin (personal name)
closed_class_word('ahuic', adverb).  % back and forth, to and fro (K AHUIC)
closed_class_word('aiac', pronoun).  % no one (K AYAC; written i for y)
closed_class_word('aiamo', adverb).  % not yet (K AYAMO)
closed_class_word('aiaxcān', adverb).  % with difficulty, for a long time; K ĀYĀXCĀN (FC i for y)
closed_class_word('aic', adverb).  % never (K AIC)
closed_class_word('aimel', adverb).  % in no way, not at all; no K headword
closed_class_word('ainnemachpan', adverb).  % without warning (AH- + NEN + MACH)
closed_class_word('albarado', noun).  % Albarado/Alvarado (Spanish name)
closed_class_word('āltepēhuah', noun).  % city people (āltepē-hua-h)
closed_class_word('āltepēhuahqueh', noun).  % city people (ĀLTEPĒHUA + -queh)
closed_class_word('alvarado', noun).  % Alvarado (Sp. surname)
closed_class_word('āmac', locative).  % at the edge of the water; K ĀMAC
closed_class_word('amahxitihuitzeh', irregular_verb).  % you come arriving
closed_class_word('amai', irregular_verb).  % what are you doing?
closed_class_word('amechiyōlihtlacocān', irregular_verb).  % may your hearts not grieve (AMĒCH- + IYŌL-LI + IHTLACOA + -CĀN)
closed_class_word('amehhuānti', pronoun).  % you (pl.) (K AMEHHUĀN)
closed_class_word('amehhuāntin', pronoun).  % you (pl.) (K AMEHHUĀN)
closed_class_word('amehuān', pronoun).  % you (pl.) (K AMEHHUĀN)
closed_class_word('amicatihuitzeh', irregular_verb).  % you come bringing
closed_class_word('amiqueh', pronoun).  % you (pl.) (ch. 2 variant of AMEHUĀN)
closed_class_word('amītic', adverb).  % inside you (pl.); am- + ītic
closed_class_word('amocenca', adverb).  % not very (ahmo + cenca)
closed_class_word('amoiauhqueh', irregular_verb).  % they did not go (ahmo + yāuh-queh, i for y)
closed_class_word('amotemoliz', irregular_verb).  % it will not be sought (AHMO + TEMOA)
closed_class_word('amotenāmiquiya', irregular_verb).  % you (pl.) were greeting him
closed_class_word('Ana', noun).  % Santa Ana (Spanish name; no macrons)
closed_class_word('ancateh', irregular_verb).  % you (pl) are
closed_class_word('anepantla', locative).  % on the other side (K NEPANTLA + a-?)
closed_class_word('anhuih', irregular_verb).  % you (pl) go
closed_class_word('anhuitzeh', irregular_verb).  % you (pl) come
closed_class_word('anoc', particle).  % perhaps, or (K AHNOCEH)
closed_class_word('anoce', particle).  % or (K AHNOCE)
closed_class_word('anozo', particle).  % or, perhaps; K AHNOZO (h dropped)
closed_class_word('anquichīhua', irregular_verb).  % you (pl) do it; final plural -h not written (cf. anquichīhuah)
closed_class_word('antica', adverb).  % opposite, on the other side; K ANTIC
closed_class_word('antlapalpopol', noun).  % you shameless ones (AN-TLAPALPOPOL)
closed_class_word('aocac', pronoun).  % no longer anyone (K AOCĀC)
closed_class_word('aocāc', pronoun).  % there is no longer anyone; K AOCĀC (AOC + AC)
closed_class_word('aocān', adverb).  % no longer anywhere (AOC + -cān)
closed_class_word('aoccampa', adverb).  % no longer anywhere (AOC + -CAMPA)
closed_class_word('aoccan', adverb).  % nowhere at all
closed_class_word('aocmo', adverb).  % no longer (K AOCMŌ)
closed_class_word('aocmō', adverb).  % no longer; K AOCMŌ
closed_class_word('aocmō', particle).  % no longer (K AOCMŌ)
closed_class_word('aoctle', pronoun).  % no longer anything; variant of AOCTLEH
closed_class_word('aoctleh', pronoun).  % nothing any more; K AOCTLE(H)
closed_class_word('aotechpopoloqueh', irregular_verb).  % we are not destroyed (AH- + O- + TECH- + POPOLOA + -QUEH)
closed_class_word('aotechtlamiqueh', irregular_verb).  % we are not finished (AH- + O- + TECH- + TLAM(I) + -QUEH)
closed_class_word('apizmic', irregular_verb).  % he died of hunger (APĪZMIQU(I))
closed_class_word('apizmicoac', irregular_verb).  % there was starvation (apizmic + -oac)
closed_class_word('aquen', particle).  % as if, like (K AQUEN)
closed_class_word('aquimōtlahtōltia', irregular_verb).  % he speaks for himself (AH- + QUIM- + O- + TLAHTŌLTIA)
closed_class_word('aquimottiliz', irregular_verb).  % he will not see it (AH- + QUIM- + ITTA)
closed_class_word('aquin', pronoun).  % (one) who; who?; K AQUIN
closed_class_word('aquique', pronoun).  % those who (K AQUIQUE)
closed_class_word('aquiqueh', pronoun).  % who? (pl.) (K AQUIQUEH)
closed_class_word('atel', particle).  % not so (AH- + TĒL)
closed_class_word('atenanticpac', locative).  % on the roof ridge (ā- + TENĀM(I)-TL 'wall' + -ti- + -CPAC); lexicalized, no K headword
closed_class_word('ātenco', locative).  % at the water's edge (K ĀTĒNCO)
closed_class_word('atetlachiyalti', adjective).  % making one see nothing (ah- + tē- + TLACHIYALTIA)
closed_class_word('atlacuīc', noun).  % water-fetcher (ā-tl + cuī 'take'); no K headword
closed_class_word('atlah', locative).  % in the water (Ā-TL + -TLAH)
closed_class_word('atlan', locative).  % at/on the water; ā-tlan (K Ā-TL + -TLAN)
closed_class_word('ātlan', locative).  % at the water (Ā-TL + -TLAN)
closed_class_word('atlatlacamati', irregular_verb).  % does not obey (a- + tla- + TLĀCAMATI)
closed_class_word('ātlauhco', locative).  % at the edge of the water (Ā-TL + -TLAUHCO)
closed_class_word('atle', pronoun).  % nothing (K AHTLE(H))
closed_class_word('axcan', adverb).  % now, today (K AXCAN)
closed_class_word('axcān', adverb).  % now
closed_class_word('ayā', adverb).  % not yet (K AYĀ)
closed_class_word('ayāac', pronoun).  % no one (AYAC, long ā as written)
closed_class_word('ayac', pronoun).  % no one; K AYAC (AH- + AC)
closed_class_word('ayacinca', adverb).  % never (AYAC + -INCA)
closed_class_word('ayahtleh', pronoun).  % and nothing (K AYAHTLEH)
closed_class_word('ayamō', adverb).  % not yet (K AYAMŌ)
closed_class_word('āyāxcān', adverb).  % not now, never (K AYĀXCĀN)
closed_class_word('azaca', adverb).  % perhaps (K AZACA)
closed_class_word('azo', adverb).  % perhaps (K AZO)
closed_class_word('azo', particle).  % perhaps; K AHZO (h dropped)
closed_class_word('bandera', noun).  % flag (Spanish loan)
closed_class_word('caana', adverb).  % somewhere (variant of CANAH)
closed_class_word('caanqueh', irregular_verb).  % they disregarded/left it ( prob. cāhua 'leave'; irregular)
closed_class_word('caantiquizqueh', irregular_verb).  % they went out
closed_class_word('caantiuh', irregular_verb).  % they went along grasping
closed_class_word('caballo', noun).  % horse (Sp. loan)
closed_class_word('caballos', noun).  % horses (Spanish loan)
closed_class_word('caballosmeh', noun).  % horses (Spanish loan + Nahuatl plural)
closed_class_word('cacactihuetz', irregular_verb).  % it fell clattering (CACACA + -TI- + HUETZ)
closed_class_word('cacah', particle).  % perhaps, is it?
closed_class_word('cacalacoac', irregular_verb).  % it went away rattling (CACALACA + -oac)
closed_class_word('cacalacti', irregular_verb).  % quickly (cacalac-ti)
closed_class_word('cacaltzalan', locative).  % between the houses (cācal + -tzālan)
closed_class_word('cacic', irregular_verb).  % it cracked/gave way (FC hapax)
closed_class_word('caciqueh', noun).  % cacique (Sp. loan) + -h
closed_class_word('cacoia', irregular_verb).  % she was heard (CAQU(I) + -ia)
closed_class_word('cactimanca', irregular_verb).  % there was silence (CACTI + MANCA)
closed_class_word('cactoc', adjective).  % silent, lying still (K CACTI + -toc)
closed_class_word('cactoc', irregular_verb).  % it was thus (CA + -toc); no K headword
closed_class_word('cah', irregular_verb).  % he/she/it is
closed_class_word('cahuallosti', noun).  % horse, with loan absolutive -ti (Sp. caballo)
closed_class_word('calacoaia', irregular_verb).  % they were entering (calaqui imperfect)
closed_class_word('calacoaya', irregular_verb).  % verb is not in the dictionary, so the form is licensed whole.
closed_class_word('calaquico', irregular_verb).  % they entered there (CALAQU(I) + -co)
closed_class_word('calhuitequi', irregular_verb).  % let him strike it (MĀ + C-AL-HUĪTEQUI)
closed_class_word('calihua', irregular_verb).  % there was fighting ( analysis uncertain)
closed_class_word('calihuatihuitz', irregular_verb).  % fighting came along
closed_class_word('caliticpa', locative).  % from inside the house (cal-li + itic + -pa)
closed_class_word('calla', irregular_verb).  % there are houses (CAL-LI + existential -la)
closed_class_word('callah', locative).  % among the houses (CAL-LI + -lah)
closed_class_word('calnepantla', locative).  % interior of house complex
closed_class_word('calpixqueh', noun).  % stewards, major-domos (K CALPIXQUI; attested preterit-agentive plural)
closed_class_word('calpulco', locative).  % in the calpolli temple (CALPUL-LI + -CO)
closed_class_word('caltenco', locative).  % at the house edge (CAL-LI + TĒN-TLI + -CO)
closed_class_word('caltzacuhtica', adverb).  % with the house closed (cal-li + tzacua + -tica)
closed_class_word('caltzalan', locative).  % between the houses (CAL-LI + -TZALAN)
closed_class_word('camoiauhqueh', irregular_verb).  % for they did not go (ca + ahmo + yāuh-queh)
closed_class_word('campa', locative).  % where to?
closed_class_word('campanel', adverb).  % where indeed?
closed_class_word('cana', adverb).  % somewhere
closed_class_word('canaco', irregular_verb).  % c-ana-co 'they took her there' (opaque preterit)
closed_class_word('canactontli', adjective).  % small, stunted (K CANACTŌN-TLI)
closed_class_word('canah', adverb).  % somewhere (CANAH, with final h)
closed_class_word('canel', particle).  % since, for
closed_class_word('caoaca', irregular_verb).  % there was shouting; no K headword
closed_class_word('capapachiuh', irregular_verb).  % it cracked (redup. PACHIHU(I))
closed_class_word('capitan', noun).  % capitán 'captain' (Sp. loan)
closed_class_word('capitán', noun).  % captain (Sp. capitán)
closed_class_word('capitulo', noun).  % capítulo '' (Sp. loan)
closed_class_word('caquiztic', adjective).  % audible (K CAQUIZTI)
closed_class_word('castañeda', noun).  % Castañeda (Sp. personal name)
closed_class_word('castilla', noun).  % Castile (Sp. loan)
closed_class_word('castillan', noun).  % Castile (Sp. Castilla + -tlan); place name
closed_class_word('cateh', irregular_verb).  % they are
closed_class_word('catzohua', irregular_verb).  % block (the canal road); fused form, probably CAL + TZOHUA
closed_class_word('caxitico', irregular_verb).  % c-axiti-co 'until he got him here'
closed_class_word('caxtōlpōhualli', numeral).  % 300 (15 x 20)
closed_class_word('caxtōltin', numeral).  % fifteen (people) (CAXTŌL-LI + -tin)
closed_class_word('cē', numeral).  % one
closed_class_word('cecemilhuitl', adverb).  % each day (CE + CEM + ILHUI-TL)
closed_class_word('ceceniaca', adverb).  % each one separately (CĒCEN + -yāca)
closed_class_word('cecenyaca', adverb).  % one by one (CECĒY(A) + -ca)
closed_class_word('ceceyohual', adverb).  % each night (CE + CEM + YOHUAL)
closed_class_word('cecni', adverb).  % each in a particular place (K CECNI)
closed_class_word('cehtlapal', noun).  % one side (CEM + TLAHPAL-LI)
closed_class_word('cehualcalco', locative).  % at the ice-house (cehual-li + cal-li + -co)
closed_class_word('cēltalli', adverb).  % in one mass; lexicalized cēl-tlāl-li
closed_class_word('cematl', adverb).  % as one, together (CEM + -tl)
closed_class_word('cēmāya', adverb).  % forever (K CĒMĀYA)
closed_class_word('cemēyehhuāntin', pronoun).  % all of us (K CEMĒYEHHUĀNTIN)
closed_class_word('cemilhuiltique', irregular_verb).  % they spent one day (CEM + ILHUI-TL + -ti-queh)
closed_class_word('cemimacaxtin', noun).  % those distributed one by one; no K headword
closed_class_word('cemolini', irregular_verb).  % they are stirred together (CEM- + OLINI)
closed_class_word('cemololihuhtihui', irregular_verb).  % they went rolling together (CEM- + OLOLIHUI + -TI-HUI)
closed_class_word('cempōhualli', numeral).  % twenty; K CEMPŌHUAL-LI
closed_class_word('cempōhualtica', numeral).  % by twenties
closed_class_word('cempōhualtique', numeral).  % twenty each
closed_class_word('cenca', adverb).  % very, very much (CENCAH)
closed_class_word('cencan', adverb).  % very (K CENCAN)
closed_class_word('cenhui', adverb).  % in one place, together (CEM- + -HUI)
closed_class_word('cenqui', pronoun).  % only one (K CENQUI)
closed_class_word('centecpantin', numeral).  % twenty (people)
closed_class_word('centepeuhtihui', irregular_verb).  % they went in a single line/group
closed_class_word('centlacuauh', adverb).  % at full speed
closed_class_word('centlalli', adverb).  % in one place, as one mass; lexicalized cen-tlāl-li
closed_class_word('centlapal', adverb).  % on one side (K CENTLAPAL)
closed_class_word('centzontli', numeral).  % 400
closed_class_word('cenyaotl', noun).  % Cenyaotl (personal name)
closed_class_word('cenyetihui', irregular_verb).  % they went together (CEM- + YE + -TI-HUI)
closed_class_word('ceppa', adverb).  % once; K CEPPA
closed_class_word('cequi', pronoun).  % some, a part
closed_class_word('cequin', pronoun).  % some (K CEQUĪN)
closed_class_word('cequintin', pronoun).  % some (plural)
closed_class_word('cēquīzah', irregular_verb).  % they each went out (CĒ- + QUĪZA)
closed_class_word('cētequiuh', noun).  % one day's work
closed_class_word('cētetl', numeral).  % to NĀUHTETL and MĀCUILTETL. CĒ itself stays a closed-class numeral only.
closed_class_word('ceton', numeral).  % one (person) (K CETON)
closed_class_word('cexiuhtico', adverb).  % a year later (CE-XIHUITL + -ti + -co)
closed_class_word('cexiuhtizquia', irregular_verb).  % it would be a year (future of CEXIHUI)
closed_class_word('chachacuanqueh', irregular_verb).  % they were covered with mud
closed_class_word('chalcopa', locative).  % toward Chalco (CHĀLCO + -pa)
closed_class_word('chānehqueh', noun).  % residents (K CHĀNEH + plural)
closed_class_word('chayāhuac', adjective).  % clear, translucent (K CHAYĀHU(I) 'spill down' + -c)
closed_class_word('chichipahuac', adjective).  % glistening (cf. CHIPĀHUAC)
closed_class_word('chichipahuaticac', adjective).  % glistening (chichipāhuac + -ti-cac)
closed_class_word('chichitocatiuh', irregular_verb).  % going along crackling
closed_class_word('chicnāhui', numeral).  % nine
closed_class_word('chicōme', numeral).  % seven
closed_class_word('chicōmpōhualtique', numeral).  % 140 each
closed_class_word('chicuacē', numeral).  % six
closed_class_word('chicuacempōhualtique', numeral).  % 120 each
closed_class_word('chicuei', numeral).  % eight (K CHICUEYI)
closed_class_word('chicuēi', numeral).  % eight (variant of CHICUĒYI, y lost)
closed_class_word('chicuepōhualtique', numeral).  % 160 each
closed_class_word('chicueyi', numeral).  % eight
closed_class_word('chicunāhui', numeral).  % nine (K CHICUĒNAHUI / CHICNĀHUI)
closed_class_word('chicunapōhualtique', numeral).  % 180 each
closed_class_word('chīlatequilo', irregular_verb).  % chile-water was poured on it
closed_class_word('chimaltica', locative).  % with shields (CHIMAL-LI + -tica)
closed_class_word('chipacpul', adjective).  % swept clean
closed_class_word('chipahuac', adjective).  % clean, clear (K CHIPĀHUAC)
closed_class_word('chipāhuac', adjective).  % K CHIPĀHUAC clean, pure
closed_class_word('chipahuati', irregular_verb).  % it cleared (CHIPĀHUA + -ti)
closed_class_word('ciacacpa', adverb).  % under the armpit; ciac(a)-tl + -pa (K CIAC(A)-TL)
closed_class_word('cihuācoatlē', noun).  % O Cihuācoatl! (vocative)
closed_class_word('cōātzontecomehtica', adjective).  % with serpent heads
closed_class_word('cocoiolloqueh', irregular_verb).  % they had bells (reduplicated)
closed_class_word('cocoltic', adjective).  % winding, twisted (K COCOL-TIC)
closed_class_word('cocototzauh', irregular_verb).  % they were disabled/paralyzed ( opaque)
closed_class_word('cocotztlāloaqueh', irregular_verb).  % they were covered with dirt
closed_class_word('cohuitiaya', irregular_verb).  % it was raining? (opaque)
closed_class_word('coiolequeh', irregular_verb).  % they had bells (coiōl-eh-queh)
closed_class_word('coiollotihuitzeh', irregular_verb).  % they came with bells; coiol-lo-ti-huitzeh
closed_class_word('cololhuih', irregular_verb).  % they went gathered/massed; no K headword
closed_class_word('cololhuitoqueh', irregular_verb).  % they were gathered
closed_class_word('cōlōloaia', irregular_verb).  % they piled them up; CŌLOĀ/OLOLOA, analysis uncertain
closed_class_word('cōmaquiaia', irregular_verb).  % he was putting it on him (opaque)
closed_class_word('comati', irregular_verb).  % each understands (CŌ-? + MATI)
closed_class_word('conacanaco', irregular_verb).  % he went to take it there (C-ON-AĀNA-CO)
closed_class_word('conanqueh', irregular_verb).  % they took them (C-ON-ANA-QUEH)
closed_class_word('conaquiqueh', irregular_verb).  % they put them in
closed_class_word('concalaquique', irregular_verb).  % they put it in
closed_class_word('concholōltico', irregular_verb).  % he went fleeing there (opaque)
closed_class_word('concuexcochhuīhuītecque', irregular_verb).  % they struck him on the nape (join of concuex + cochhuīhuītecque)
closed_class_word('concuitlahuiltequiltique', irregular_verb).  % they forced it down
closed_class_word('concuitlaxeloco', irregular_verb).  % they came twisting themselves
closed_class_word('coniaucuito', irregular_verb).  % c-on-iaucuito 'he gathered maize leaves'
closed_class_word('conixnāmictimoquetza', irregular_verb).  % he came to meet him face to face
closed_class_word('conmāpilhui', irregular_verb).  % he took it in his hand (C- + ON- + MĀ- + PILHUI)
closed_class_word('conmaquiaya', irregular_verb).  % they were giving them
closed_class_word('conmocozcatia', irregular_verb).  % he put a necklace on him (C-ON-MO-CŌZCATIA)
closed_class_word('conmocuiliqui', irregular_verb).  % he took it
closed_class_word('conmotoquilique', irregular_verb).  % they pursued him (C- + ON- + MO- + TOQUILIĀ + -queh)
closed_class_word('conquetzahto', irregular_verb).  % he went to set it up (C- + ON- + QUETZA + -to)
closed_class_word('contecaco', irregular_verb).  % they set it down there (C-ON-TECA-CO)
closed_class_word('contecatiaqueh', irregular_verb).  % they laid them down
closed_class_word('contepeuhtiquizque', irregular_verb).  % they went out conquering
closed_class_word('contetentihui', irregular_verb).  % they went filling it
closed_class_word('contetlazaltito', irregular_verb).  % he went to ... (opaque)
closed_class_word('contlamamaca', irregular_verb).  % he came to give him things (c-on-tla-MAMACA)
closed_class_word('contlapalotimani', irregular_verb).  % he goes along greeting them
closed_class_word('contlatlauhti', irregular_verb).  % he came to pray for him (c-on-tla-TLATLAUHTI)
closed_class_word('contlehcahuiqueh', irregular_verb).  % they climbed up
closed_class_word('contleminqueh', irregular_verb).  % they set fire to it
closed_class_word('cōntoquilitica', irregular_verb).  % they kept following him (C- + ŌN- + TOQUILI + -ti-ca)
closed_class_word('conxōchiapan', irregular_verb).  % he came to the flower garden (c-on-XŌCHIAPAN)
closed_class_word('cortés', noun).  % Cortés (personal name)
closed_class_word('coxōchimacac', irregular_verb).  % he gave him flowers (c-o- + XŌCHI + MACA)
closed_class_word('coyonqui', adjective).  % hollow, perforated; COYŌNQUI
closed_class_word('cozqueh', irregular_verb).  % they would go (COCHI? / YĀ?); analysis uncertain
closed_class_word('coztemiloltiqueh', irregular_verb).  % they were rolled in gold
closed_class_word('coztic', adjective).  % yellow, golden (K COZTIC)
closed_class_word('cōztic', adjective).  % yellow (K CŌZTIC)
closed_class_word('cualāqueh', irregular_verb).  % they got angry (CUALĀN(I) + -queh, n lost)
closed_class_word('cualcan', locative).  % a good place/time
closed_class_word('cualcān', adverb).  % a good place/time (K CUALCĀN)
closed_class_word('cualcān', locative).  % a good place (K CUALCAN + -cān)
closed_class_word('cualli', adjective).  % good
closed_class_word('cualoc', irregular_verb).  % it was eaten (CUĀLŌ + pret. -c)
closed_class_word('cualtitoc', adjective).  % fine, okay
closed_class_word('cuapitzāhuac', adjective).  % narrow, pointed (CUĀPITZĀHUAC)
closed_class_word('cuappitzāhuac', adjective).  % narrow (K CUAUHPITZĀHU(I))
closed_class_word('cuatzone', noun).  % one with a head (CUĀI-TL + -TZON + -EH)
closed_class_word('cuauhtenametoc', noun).  % wooden wall/barricade (cuāuh + tenamitl + -toc)
closed_class_word('cuauhtenanyotoc', noun).  % wooden wall/barricade (variant)
closed_class_word('cuauhtla', locative).  % in the forest (CUAHU(I)-TL + -TLA)
closed_class_word('cuauhtlachcāyōtica', adverb).  % with eagle-tail design (cuāuh + tlachcāyō + -tica)
closed_class_word('cuecuelpachtic', adjective).  % bent back and forth (K CUECUELPACH-TIC)
closed_class_word('cuecuenio', irregular_verb).  % it made a sound (onomatopoeic)
closed_class_word('cuecuentitihui', irregular_verb).  % they went in rows
closed_class_word('cuecuetztzin', adjective).  % small
closed_class_word('cuel', adverb).  % already (K CUĒL, short in sources)
closed_class_word('cuēl', adverb).  % already, soon; K CUĒL
closed_class_word('cuexpaltzine', noun).  % O Cuexpal! (vocative cuexpal-tzin-e)
closed_class_word('cuexpaltzitzineque', noun).  % O Cuexpals! (vocative pl. cuexpal-tzitzin-eque)
closed_class_word('cuīcoanolo', irregular_verb).  % singing was raised (CUĪCA + -ohua + nonact.; opaque)
closed_class_word('cuitlahuacae', noun).  % O Cuitlahuac! (vocative)
closed_class_word('cuitlaxeliuh', irregular_verb).  % it broke open
closed_class_word('cuzticqueh', adjective).  % they are yellow (CŌZTIC + -queh)
closed_class_word('de', particle).  % of, from (Sp. preposition)
closed_class_word('diablo', noun).  % Spanish loan 'devil'
closed_class_word('diablome', noun).  % devils (Sp. diablo + Nahuatl pl. -meh)
closed_class_word('diablomeh', noun).  % devils (Sp. diablo + Nahuatl plural -meh)
closed_class_word('don', noun).  % don (Spanish title)
closed_class_word('don', particle).  % don (Sp. title)
closed_class_word('eca', particle).  % untranslated particle at the end of the ch. 3 list (no K headword)
closed_class_word('ēca', particle).  % therefore (ĒCA)
closed_class_word('ēi', numeral).  % three (variant of ēyi, y lost)
closed_class_word('ēilhuitl', noun).  % three days (ĒYI + ILHUI-TL)
closed_class_word('ēne', adverb).  % a little later (FC ēne)
closed_class_word('epnepaniuhcayoh', adjective).  % with crossed shells (shell ornament; no K headword)
closed_class_word('epōhualilhuitl', noun).  % sixty days (ĒPŌHUAL-LI + ILHUI-TL)
closed_class_word('epōhualtōnal', noun).  % sixty days (ĒPŌHUAL-LI + TŌNAL-LI)
closed_class_word('español', noun).  % Spaniard (Sp. loan)
closed_class_word('españoles', noun).  % españoles 'Spaniards' (Sp. pl.)
closed_class_word('etc', noun).  % etc. (Latin abbreviation in the sources)
closed_class_word('etc', particle).  % etc. (abbreviation)
closed_class_word('ētetetia', adverb).  % in three parts (ē- + tetetia)
closed_class_word('ēteyetia', irregular_verb).  % it turned to stone (Ē-TEYE-TI-A)
closed_class_word('ēxpa', adverb).  % three times (K ĒXPA)
closed_class_word('ēyi', numeral).  % three
closed_class_word('ēyixtin', numeral).  % only three (ĒYI + -xtin)
closed_class_word('ezti', noun).  % blood (K EZ-TLI, ti-class variant)
closed_class_word('ha', particle).  % ah! (interjection)
closed_class_word('hahuic', adverb).  % hither, in this direction; no K headword (cf. HAHUIC)
closed_class_word('Hernando', noun).  % Hernando (personal name)
closed_class_word('hernando', noun).  % Hernando (Spanish given name)
closed_class_word('hihui', irregular_verb).  % they went back and forth
closed_class_word('hihuichachapanqui', adjective).  % with a bristling edge?; no K headword
closed_class_word('hiicicatihuitzeh', irregular_verb).  % they came panting (IHCICA + -ti-huitzeh)
closed_class_word('hin', demonstrative).  % this (in yeh hin)
closed_class_word('hiyacac', irregular_verb).  % he came ahead
closed_class_word('hual', particle).  % line-break fragment of huāl- (ch. 33)
closed_class_word('huala', irregular_verb).  % he comes (huāl + yā)
closed_class_word('hualachia', irregular_verb).  % they look hither (HUĀL + (TLA)CHIA)
closed_class_word('huālachixqueh', irregular_verb).  % they looked back
closed_class_word('hualachixtica', irregular_verb).  % he was looking down hither
closed_class_word('huālachixtihuetzqueh', irregular_verb).  % they quickly looked back
closed_class_word('huālācih', irregular_verb).  % they arrived here (huāl + āci + -h)
closed_class_word('hualacxipanhuihuitiaqueh', irregular_verb).  % they came with things on their heads
closed_class_word('hualah', irregular_verb).  % he came (huāl + yah; K HUĀLLAH)
closed_class_word('hualahcihui', irregular_verb).  % they arrived here (HUĀL + AHCI + -hui)
closed_class_word('hualālhuacāquīza', irregular_verb).  % it comes out at dawn
closed_class_word('huālālhuacāquīza', irregular_verb).  % it comes out at dawn (huāl + ALHUACĀ + QUĪZA)
closed_class_word('hualalhuaccaquizqueh', irregular_verb).  % they landed unopposed (hual- + alhuac + CAQUI + -z-queh)
closed_class_word('huālalhuaccaquizqueh', irregular_verb).  % HUĀL + alhuac + CAQUI + -z-queh 'they landed'
closed_class_word('hualaltotoca', irregular_verb).  % they came running
closed_class_word('hualama', irregular_verb).  % he came to take/possess it (hual- + AMA)
closed_class_word('huālama', irregular_verb).  % HUĀL + AMA 'he came to take it'
closed_class_word('hualamattia', irregular_verb).  % he came to take possession (hual- + AMA + -tia)
closed_class_word('huālamattia', irregular_verb).  % HUĀL + AMA + -tia 'he came to take possession'
closed_class_word('hualaqueh', irregular_verb).  % they entered hither (huāl + calaqui)
closed_class_word('hualauh', irregular_verb).  % he came (huāl + yauh)
closed_class_word('hualazqueh', irregular_verb).  % they will come; attested future form (analysis uncertain)
closed_class_word('huālazqueh', irregular_verb).  % HUĀL + (y)āzqueh 'they will come'
closed_class_word('hualcacamatlapan', irregular_verb).  % their heads split open
closed_class_word('hualcemolini', irregular_verb).  % all moved together
closed_class_word('hualehuaque', irregular_verb).  % they came out (huāl + ĒHUA + -queh)
closed_class_word('huālehuaque', irregular_verb).  % they came out (huāl + ĒHUA, pret. plural)
closed_class_word('huālhuicini', irregular_verb).  % it came humming
closed_class_word('huālihīyōcuitiquizqueh', irregular_verb).  % they came out recovering breath
closed_class_word('huālilōtqueh', irregular_verb).  % they turned back
closed_class_word('hualitztia', irregular_verb).  % it came to see
closed_class_word('hualitztiuh', irregular_verb).  % he came fleeing (huāl + itz-ti-uh)
closed_class_word('hualla', irregular_verb).  % he came (HUĀL + YĀUH suppletive)
closed_class_word('huallaihuaqueh', irregular_verb).  % they came
closed_class_word('huāllaihuaqueh', irregular_verb).  % they came (huāl + LAIHUA?)
closed_class_word('huallaltotoca', irregular_verb).  % he comes running
closed_class_word('huāllaltotoca', irregular_verb).  % let them come running (huāl + AL-TOTOCA)
closed_class_word('huallamīna', irregular_verb).  % it came shooting down
closed_class_word('huallamotla', irregular_verb).  % it came hurled down
closed_class_word('huallaqueh', irregular_verb).  % they came (HUALLA pret. pl.)
closed_class_word('huāllaqueh', irregular_verb).  % they came
closed_class_word('huallatepachoa', irregular_verb).  % it came stoning/covering
closed_class_word('huallatepozmihuia', irregular_verb).  % he came with iron weapons?; uncertain
closed_class_word('huāllatepozmihuia', irregular_verb).  % they came shooting with iron (huāl + TEPOZMIHUIA)
closed_class_word('hualmantiaqueh', irregular_verb).  % they came setting themselves (MAN(I) + -ti-aqueh)
closed_class_word('hualmauhcaquizaia', irregular_verb).  % they came out in alarm
closed_class_word('hualmauhcaquīzqueh', irregular_verb).  % they came out in fear (MAUHCA + QUĪZA)
closed_class_word('hualmehuatiquetz', irregular_verb).  % he rose up (huāl + MEHUATI + QUETZA)
closed_class_word('hualmelāhuah', irregular_verb).  % they go straight (HUĀL + MELĀHU(A))
closed_class_word('hualmelāhuaticac', adjective).  % coming straight (huāl + MELĀHUAC + -ti-cac)
closed_class_word('hualmomahuizzōtitiaqueh', irregular_verb).  % they came causing fear (HUĀL + MO- + MAHUIZZŌTITIA + -queh)
closed_class_word('huālmomamanaia', irregular_verb).  % they arranged themselves
closed_class_word('hualmomanato', irregular_verb).  % they came to ... (hual- + mo-MANA-to)
closed_class_word('hualmomāqueh', irregular_verb).  % they came and ... (opaque)
closed_class_word('hualmomātihui', irregular_verb).  % they came in formation
closed_class_word('hualmomāyāuh', irregular_verb).  % he threw himself into the water
closed_class_word('hualmonamic', irregular_verb).  % he came to meet him
closed_class_word('hualmopic', irregular_verb).  % he came to seize him
closed_class_word('hualmotēma', irregular_verb).  % he came down (huāl- + MO- + TĒM(A))
closed_class_word('huālmotepēhua', irregular_verb).  % they threw themselves down
closed_class_word('hualmotepetlatzatzacque', irregular_verb).  % they fortified themselves
closed_class_word('huālmotlahuiztitiaqueh', irregular_verb).  % they came arrayed
closed_class_word('huālmotlāloa', irregular_verb).  % they came running
closed_class_word('hualmotlamauhtilitiaqueh', irregular_verb).  % they came causing fear (HUĀL + MO- + TLAMAUHTILITIA + -queh)
closed_class_word('huālmotlamauhtilitiaqueh', irregular_verb).  % HUĀL + MO + TLAMAUHTILITIA + -queh
closed_class_word('huālmotzatzacutihuetzqueh', irregular_verb).  % they shut themselves in
closed_class_word('hualmotzineuh', irregular_verb).  % he was unhorsed
closed_class_word('hualmoyacapachotiaqueh', irregular_verb).  % they came bowing their heads
closed_class_word('huālmoyāōchīchīhuhtiaqueh', irregular_verb).  % they came armed
closed_class_word('hualmuchīuhtiuh', irregular_verb).  % it goes along being made
closed_class_word('hualnecuepalo', irregular_verb).  % they turned back
closed_class_word('huālnecuepalo', irregular_verb).  % they turned back hither (huāl + NECUEPA + -lo)
closed_class_word('hualneizahuiloia', irregular_verb).  % huāl-ne-izahuilo-ya
closed_class_word('hualneizahuiloya', irregular_verb).  % there was shouting
closed_class_word('hualnemamauhtiloia', irregular_verb).  % huāl-ne-mamauhtilo-ya
closed_class_word('hualnemamauhtilōya', irregular_verb).  % people were terrified
closed_class_word('huālnepanixtiaqueh', irregular_verb).  % they came together
closed_class_word('hualnetlālōlō', irregular_verb).  % they all moved
closed_class_word('huālnetlālōlō', irregular_verb).  % there was a running hither (huāl + NE-TLĀLŌLŌ)
closed_class_word('huālquechpilo', irregular_verb).  % he hung his head
closed_class_word('huālquechpilotimotlali', irregular_verb).  % he sat with head hung
closed_class_word('hualquīzque', irregular_verb).  % they came out (HUAL-QUĪZ-QUE, final h dropped)
closed_class_word('hualtemi', irregular_verb).  % he came down (huāl- + TEMI)
closed_class_word('huāltemi', irregular_verb).  % it came filling (huāl + TEMI)
closed_class_word('hualtepacholo', irregular_verb).  % they were thrown down
closed_class_word('huāltepacholo', irregular_verb).  % people were pressed hither (huāl + TEPACHOĀ + -lo)
closed_class_word('hualteyacā', irregular_verb).  % he who leads (HUAL + TĒYACĀ)
closed_class_word('hualteyacan', irregular_verb).  % he came leading
closed_class_word('hualtlalhuacaquizque', irregular_verb).  % they came onto dry land
closed_class_word('hualtlaquīxtilo', irregular_verb).  % things were brought out (HUĀL-TLA-QUĪXTILO)
closed_class_word('huāltolo', irregular_verb).  % he bowed
closed_class_word('huāltolotimotlali', irregular_verb).  % he bowed down
closed_class_word('hualtzatzaian', irregular_verb).  % they shouted here (HUĀL + TZATZAYA)
closed_class_word('huāltzatzaian', irregular_verb).  % entered whole elsewhere; the huāl- form is added here.
closed_class_word('hualyacattihui', irregular_verb).  % he comes leading
closed_class_word('huālyāhuiaqueh', irregular_verb).  % they came to fight
closed_class_word('hualyetiaque', irregular_verb).  % they came with (huāl + YĒTI + -queh)
closed_class_word('huālyetiaque', irregular_verb).  % they came to face them (huāl + YE-TI + YĀ, pret. plural)
closed_class_word('huālyohualcalacqueh', irregular_verb).  % they came in by night
closed_class_word('huānyōlqueh', noun).  % relatives (K -HUĀNYŌLQUI + plural)
closed_class_word('huēca', adverb).  % far away; K HUEHCA (unmarked), sources huēca
closed_class_word('huēcapan', adverb).  % far, high (K HUĒCAPAN)
closed_class_word('huēcatlan', locative).  % deep place (HUĒCA + -TLAN)
closed_class_word('huēcauhtica', adverb).  % for a long time; K HUEHCAUHTICA
closed_class_word('huehca', adverb).  % far (K HUEHCA, unmarked)
closed_class_word('huēhca', adverb).  % far, for a long time (K HUĒHCA)
closed_class_word('huehcahuetzito', irregular_verb).  % they went falling far away (HUĒHCA + HUETZI + -to)
closed_class_word('huehcapa', adverb).  % from afar (HUEHCA + -PA)
closed_class_word('huehcauh', adjective).  % old (K HUEHCAUH)
closed_class_word('huehhuetzin', irregular_verb).  % it went off (HUETZ(I) + honorific -tzin)
closed_class_word('huēhuehca', adverb).  % far apart (K HUĒHUEHCA)
closed_class_word('huēhuēi', adjective).  % very large; reduplicated HUĒI (K HUĒ(I))
closed_class_word('huehueichīhua', noun).  % the old ones (huēhuēi + chīhua 'act old'?); no K headword
closed_class_word('huēhuēipopul', adjective).  % huge-eared (huēi 'big' redup. + popul); no K headword
closed_class_word('huehuelocac', irregular_verb).  % it was knocked down in places
closed_class_word('huehuetitlan', locative).  % among the drums (HUĒHUĒ-TL + -TITLAN)
closed_class_word('huel', adverb).  % well; able; very
closed_class_word('hueli', irregular_verb).  % can, is able (K HUELI)
closed_class_word('huelic', adjective).  % tasty (K HUELIC)
closed_class_word('huetzico', irregular_verb).  % it fell there (HUETZ(I) + -co)
closed_class_word('huīa', irregular_verb).  % he went (HUI)
closed_class_word('huian', adverb).  % there, that way
closed_class_word('huih', irregular_verb).  % they go
closed_class_word('huihcēhuac', adjective).  % strong, brave (no K headword)
closed_class_word('huihui', adverb).  % back and forth
closed_class_word('huihuiloac', irregular_verb).  % everyone went away
closed_class_word('huīhuītectoc', irregular_verb).  % he lay struck
closed_class_word('huiloa', irregular_verb).  % it was dragged
closed_class_word('huītecoc', irregular_verb).  % it struck there (HUĪTEQU(I) pret.)
closed_class_word('huitlatoca', irregular_verb).  % he goes along (HUI + TLAHTOCA?)
closed_class_word('huītzantica', adverb).  % there was internal strife
closed_class_word('huitzeh', irregular_verb).  % they come
closed_class_word('huitzilihuitzin', noun).  % Huitzilihuitzin (personal name)
closed_class_word('huitzitzin', noun).  % Huitzitzin (personal name)
closed_class_word('huītztic', adjective).  % hummingbird-like (HUĪTZ-TLI + -tic)
closed_class_word('huīyac', adjective).  % long, tall (K HUĪYAC)
closed_class_word('iani', noun).  % one who goes (YĀUH agentive)
closed_class_word('iaque', irregular_verb).  % they went (YĀUH perf. + -que, i for y)
closed_class_word('iaqueh', irregular_verb).  % they went; variant spelling of yāqueh
closed_class_word('iatihuitze', irregular_verb).  % they came ahead (yā + -ti-huitz-e)
closed_class_word('iatihuitzeh', irregular_verb).  % they come quietly? (yā- + ti-huitzeh)
closed_class_word('iaztachimal', noun).  % Iaztachimal (personal name); no K headword
closed_class_word('ic', particle).  % then, thereby
closed_class_word('īc', particle).  % with it, thereby; K ĪC
closed_class_word('ica', adverb).  % by means of it (K ĪCA = ī- + -CA)
closed_class_word('ica', particle).  % with/by means of it; K ĪC + -CA (free postposition īca, written ica in the sources)
closed_class_word('īca', adverb).  % with it (ī- + -ca)
closed_class_word('īca', particle).  % with it (K ĪC + -CA; long ī)
closed_class_word('icaia', irregular_verb).  % stood there (ICAC + -ia)
closed_class_word('īcalaquiyampa', locative).  % where the sun sets (ī-cal-aqui-yampa)
closed_class_word('īcampa', locative).  % behind him (ī- + -CAMPA)
closed_class_word('icatihuitz', irregular_verb).  % he comes leading
closed_class_word('icatihuitzeh', irregular_verb).  % they came standing (IHCA + -ti-huitzeh)
closed_class_word('icatiuh', irregular_verb).  % it goes along (i-ca-ti-uh)
closed_class_word('īcaya', irregular_verb).  % it was there (K ĪCA, imperfect)
closed_class_word('icel', adverb).  % alone; K ICĒL
closed_class_word('īchiel', locative).  % for him to see
closed_class_word('īchihuil', noun).  % his possession (ī- + CHIHUIL-LI)
closed_class_word('īchimaltitlan', locative).  % behind his shield (CHĪMAL-LI + -TITLAN)
closed_class_word('ichtaca', adverb).  % secretly (K ICHTACA)
closed_class_word('ichtacamictiloqueh', irregular_verb).  % they were secretly killed (ICHTACA + MICTIA pass.)
closed_class_word('ichtacatzin', adverb).  % secretly (honorific)
closed_class_word('iciuhca', adverb).  % quickly (K (I)HCIUHCA)
closed_class_word('icozqui', noun).  % his yellow ornament (Ī- + COZQUI)
closed_class_word('icpac', locative).  % on top of it; K -(I)CPAC, lexicalized īcpac
closed_class_word('īcpac', locative).  % on top of him (ī- + -(I)CPAC)
closed_class_word('icten', adverb).  % to the brim, completely; no K headword
closed_class_word('īcuexcochtlampa', locative).  % behind him (CUEXCOCH-TLI + -TLAMPA)
closed_class_word('icuiliuhtoc', irregular_verb).  % it is painted (IHCUILOA nonact. + -toc)
closed_class_word('iehica', particle).  % because (variant of YEH ICA)
closed_class_word('ieietiuh', irregular_verb).  % opaque
closed_class_word('īelchiquipan', locative).  % at their breasts; no K headword
closed_class_word('iequene', adverb).  % at last (K IEQUENE)
closed_class_word('īetica', adverb).  % with his blood? (e-ti-ca); analysis uncertain
closed_class_word('īēticac', irregular_verb).  % it was there (ī- + ĒTI? + CA)
closed_class_word('ietinemi', irregular_verb).  % they go along thus (y- + eti- + nemi)
closed_class_word('ietiquizqueh', irregular_verb).  % they went out thus (y- + eti- + QUIZA)
closed_class_word('ietiuh', irregular_verb).  % as they went
closed_class_word('ihcīhuīoca', irregular_verb).  % it crackled, roared; K IHCOYOCA
closed_class_word('ihciuhca', adverb).  % quickly
closed_class_word('ihciuhtihuiya', adverb).  % in great haste (K IHCIUH- + -ti + -huiya)
closed_class_word('ihcuāc', adverb).  % when, then
closed_class_word('ihcuēl', adverb).  % at last, finally (K IHCUĒL)
closed_class_word('ihicopi', adverb).  % blinking (no K headword)
closed_class_word('īhīyō', noun).  % its breath/aroma (IHĪYŌ-TL)
closed_class_word('ihīyōcuiqueh', irregular_verb).  % they recovered their breath
closed_class_word('īhīyohcuiqueh', irregular_verb).  % they took breath (ī-hīyoh-cui-queh)
closed_class_word('ihuian', adverb).  % calmly, quietly; K IHUIYAN (sources ihuian)
closed_class_word('īhuicpa', locative).  % toward him (Ī- + -HUĪCPA)
closed_class_word('ihuihui', adverb).  % without reason (K IHUIHUI)
closed_class_word('ihuīptlaioc', adverb).  % at his [bad] moment (opaque)
closed_class_word('ihuiyan', adverb).  % calmly (K IHUIYAN)
closed_class_word('ilhuicac', locative).  % in heaven (K ILHUICAC)
closed_class_word('ilhuicacpa', locative).  % from heaven (ilhuicac + -pa); K ILHUICAC
closed_class_word('ilhuice', adverb).  % in vain (K ILHUIC)
closed_class_word('ilhuiceh', adverb).  % especially (K ILHUICEH)
closed_class_word('īlhuiceh', adverb).  % in vain, uselessly (variant of īlhuiz)
closed_class_word('ilhuitlamacho', irregular_verb).  % the feast was observed (impersonal of ILHUITLAMACHOA)
closed_class_word('ilhuiz', adverb).  % perhaps (K ILHUIZ)
closed_class_word('ilihuiz', adverb).  % without reason (K ILIHUIZ)
closed_class_word('illacqueh', irregular_verb).  % they submerged
closed_class_word('īmac', locative).  % in his hand (Ī- + MĀI-TL + -C)
closed_class_word('īmācalco', locative).  % in their boat
closed_class_word('imacaxoia', irregular_verb).  % they were held in awe (IMACAC(I), nonact. ĪMACAXŌ)
closed_class_word('īmacolpan', locative).  % at their shoulders
closed_class_word('īmaltepeuh', noun).  % his town (ĪM- + ALTEpē-TL)
closed_class_word('īmaltepēuh', noun).  % his town (īm- + AL-TEPĒ-TL possessed)
closed_class_word('īmātica', adverb).  % with his hands (ī-mā-tica)
closed_class_word('īmātitlech', locative).  % at their hands; mā-ti-tech
closed_class_word('īmaxtli', noun).  % his loincloth (ī- + MAX-TLI, absolutive retained)
closed_class_word('īmelchiquipan', locative).  % at their breasts
closed_class_word('imellel', adverb).  % opaque (im-ellel)
closed_class_word('īmellel', noun).  % their anger/venom; no K headword
closed_class_word('īmetzpan', locative).  % at their thighs
closed_class_word('īmicampa', locative).  % behind them (īm- + -icampa)
closed_class_word('īmīcampa', locative).  % behind them (īm- + -CAMPA)
closed_class_word('īmicpac', locative).  % on them
closed_class_word('īmīcpac', locative).  % above them (Ī- + -ĪCPAC)
closed_class_word('īmiloch', noun).  % their return; no K headword
closed_class_word('īmitipan', locative).  % at their stomachs
closed_class_word('īmīxāyo', noun).  % their ... (opaque)
closed_class_word('īmixco', locative).  % in their presence
closed_class_word('īmīxco', locative).  % before them (ĪM- + IX-TLI + -CO)
closed_class_word('īmixcuac', locative).  % at their foreheads
closed_class_word('īmixintequiuh', adverb).  % with eyes peeled; no K headword
closed_class_word('īmmaxtlatitlan', locative).  % at their hands; mā-xtla-titlan
closed_class_word('imohuicān', locative).  % their place
closed_class_word('īmonica', adverb).  % for that reason? (analysis uncertain)
closed_class_word('īmotōnoan', irregular_verb).  % their ... (analysis uncertain; possessed form)
closed_class_word('imoztlaioc', adverb).  % at midnight (MOZTLAC + -ioc)
closed_class_word('imoztlayōc', adverb).  % on the next day (K MOZTLAYŌC)
closed_class_word('impān', locative).  % on them
closed_class_word('īmpatilloan', noun).  % their [painted] devices (opaque, Sp. patilla?)
closed_class_word('inca', particle).  % for/about them; probably in + ca (article + emphatic particle), left unanalysed in the sources notes
closed_class_word('īncallah', locative).  % inside their house (īn- + cal-li + -lah)
closed_class_word('īncuēitlan', noun).  % their skirts (CUĒ(I)-TL + -tlan)
closed_class_word('īncuexcochtlan', locative).  % at their loins
closed_class_word('īniāhuān', noun).  % his enemies (ĪN- + YĀŌ-TL + -HUĀN)
closed_class_word('inic', particle).  % and then; ordinal particle (K INĪC)
closed_class_word('inīc', particle).  % with, by means of; so that
closed_class_word('inihhuāntin', pronoun).  % they
closed_class_word('inin', demonstrative).  % this
closed_class_word('inioiolipān', locative).  % in their hearts (in- + iyōl(lo) + -pan; y written i)
closed_class_word('iniyōlloco', noun).  % the brave ones; no K headword
closed_class_word('inmā', adverb).  % at that time (in ye inmā)
closed_class_word('inman', adverb).  % at that time (K INMAN)
closed_class_word('inmohhuāntin', pronoun).  % you (pl)
closed_class_word('inon', demonstrative).  % that
closed_class_word('intlā', particle).  % Conditional particle INTLĀ 'if' (long final ā; K INTLĀ).
closed_class_word('īntlā', adverb).  % at war; IN + TLĀ
closed_class_word('intlac', particle).  % if not (K INTLĀCA)
closed_class_word('īntlahuīlanalhuān', noun).  % those dragged with them
closed_class_word('intlan', locative).  % among them (ĪN-TLAN)
closed_class_word('intzōtecō', noun).  % their skulls (opaque possessed form)
closed_class_word('īnxillān', locative).  % at their abdomen
closed_class_word('ioc', adverb).  % also, likewise
closed_class_word('īohuatzinco', adverb).  % at dawn (K IHQUAC?; lexicalized ī-ohuatl-tzinco)
closed_class_word('iol', noun).  % life
closed_class_word('īpampa', adverb).  % because of him (ī- + -pampa)
closed_class_word('īpantlahtōzqueh', irregular_verb).  % they will speak about it (ĪPAN + TLAHTŌA)
closed_class_word('īpopolochcopa', adverb).  % in a babbling manner (possessed)
closed_class_word('iquezquilhuioc', adverb).  % at that moment (K IQUAC + -qui?
closed_class_word('iquezquilhuioc', irregular_verb).  % then it was said
closed_class_word('iquīzayanpa', locative).  % toward the east
closed_class_word('īquīzayanpa', locative).  % where it rises (ī-quīza-yan-pa)
closed_class_word('itacamama', irregular_verb).  % they carried provisions (i-taca-mama)
closed_class_word('itechixmamatiloz', irregular_verb).  % variant of titechixmamatilōz
closed_class_word('ītenpilol', noun).  % his ... (opaque)
closed_class_word('īteōcuitlamatemecauh', noun).  % his golden armband (possessed)
closed_class_word('īteōcuitlanacoch', noun).  % golden ... (opaque)
closed_class_word('ītepeioc', noun).  % his mountain-like thing; no K headword
closed_class_word('ītepēyōc', adverb).  % at its mountain place (ī-tepē-yō-c)
closed_class_word('ītepotzco', locative).  % behind him (ī- + TEPOTZ-TLI + -CO)
closed_class_word('īteyōc', noun).  % its fame/renown (ī-teyō-c)
closed_class_word('ītilmātitlech', locative).  % on their cloaks (TILMAH-TLI + -ti-tech)
closed_class_word('itla', pronoun).  % something; K ITLAH (final h dropped)
closed_class_word('itlah', pronoun).  % something (K ITLAH)
closed_class_word('itlanqui', irregular_verb).  % they made an effort
closed_class_word('ittoqueh', irregular_verb).  % they were seen
closed_class_word('itzeltix', irregular_verb).  % it shattered (opaque; cf. IZTELTI)
closed_class_word('ītzontlan', locative).  % at the head of his bed
closed_class_word('itzpatlacio', irregular_verb).  % it rose (stench; opaque)
closed_class_word('itztiaque', irregular_verb).  % they went to see (ITTA + -ti + YĀUH)
closed_class_word('itztiaqueh', irregular_verb).  % they went looking
closed_class_word('itztihui', irregular_verb).  % they go (itz- + ti-hui); analysis uncertain
closed_class_word('itztiohua', irregular_verb).  % they went whitening? (ITZTIA?); analysis uncertain
closed_class_word('itztiya', irregular_verb).  % it looked/was visible (ITZTIA)
closed_class_word('iuh', particle).  % thus (K IUH)
closed_class_word('iuhcan', adverb).  % there, thus (K IUHCAN)
closed_class_word('iuhqueh', pronoun).  % such ones (IUHQUI + plural)
closed_class_word('iuhqui', adverb).  % thus, like; K IUHQUI
closed_class_word('iuhquin', adverb).  % like, in the manner of
closed_class_word('iuhquinec', adverb).  % it was time; IUHQUI + NEC
closed_class_word('iuhtie', particle).  % so be it ( iuh 'thus' + tie)
closed_class_word('ixachi', adjective).  % extensive, dense; K IXACHI
closed_class_word('ixachin', noun).  % a great number
closed_class_word('ixachintin', pronoun).  % a huge number (IXACHI + -tin)
closed_class_word('īxcāhuālo', irregular_verb).  % he was not forsaken
closed_class_word('ixcahuilo', irregular_verb).  % faces were left (?) ( ix + cahua)
closed_class_word('ixcolehualo', irregular_verb).  % all was taken off (ĪX + COLEHUALO)
closed_class_word('īxcuāc', locative).  % in front of him (K -IXCUAC)
closed_class_word('īximachōa', irregular_verb).  % it is known (K ĪXIMACHŌ)
closed_class_word('īxīmachōz', irregular_verb).  % he will be ... (opaque)
closed_class_word('ixmachōa', irregular_verb).  % it is known (IXMACHŌA)
closed_class_word('ixpantilōc', irregular_verb).  % nonact. IXPANTIA, -lōc (K IXPANTILO)
closed_class_word('īxpoliuh', irregular_verb).  % he perished (ĪX- + POLIHUI)
closed_class_word('ixquich', pronoun).  % all, as much (K IXQUICH)
closed_class_word('īxquich', pronoun).  % all, everything; K ĪXQUICH (long ī)
closed_class_word('ixquichin', pronoun).  % all (variant of IXQUICH)
closed_class_word('īxquichin', pronoun).  % all of these
closed_class_word('ixquichtin', pronoun).  % all (pl.) (K IXQUICHTIN)
closed_class_word('īxquichtin', pronoun).  % all (pl.); K ĪXQUICH + -tin
closed_class_word('īxtenexiuhqueh', irregular_verb).  % their faces covered with lime
closed_class_word('ixtētenmotzoloa', irregular_verb).  % they rubbed their eyelids ( opaque compound)
closed_class_word('ixtlā', locative).  % in front, before (K IXTLĀ)
closed_class_word('īxtlahuico', irregular_verb).  % he went out to meet him
closed_class_word('īxtlāliuhqueh', irregular_verb).  % their faces covered with earth
closed_class_word('ixtlapal', adverb).  % sideways, across (K ĪXTLAPAL)
closed_class_word('ixtlapalhuihui', irregular_verb).  % goes sideways (variant)
closed_class_word('īyacactetentiuh', irregular_verb).  % gun at the prow (ī- + yacac + tetentiuh)
closed_class_word('iyian', adverb).  % quietly, peacefully (K IHUIYAN, variant)
closed_class_word('iyocuxca', adverb).  % quietly, calmly (K IYOCUXCA?)
closed_class_word('iyōlic', adverb).  % slowly (K IYŌLIC)
closed_class_word('iz', locative).  % here (K IZ)
closed_class_word('izqui', adverb).  % just as many
closed_class_word('izqui', pronoun).  % all, as much (K IZQUI)
closed_class_word('izquicampa', adverb).  % in all directions (IZQUI + -campa)
closed_class_word('izquicampa', locative).  % everywhere, in every direction
closed_class_word('izquican', adverb).  % everywhere (K IZQUICAN)
closed_class_word('izquican', locative).  % in so many places, everywhere; K IZQUICAN
closed_class_word('izquicān', locative).  % everywhere
closed_class_word('izquilhuitico', irregular_verb).  % all the days that passed (IZQUI + ILHUI-TL + -co)
closed_class_word('izquilhuitique', irregular_verb).  % all the days that passed (IZQUI + ILHUI-TL + -ti-queh)
closed_class_word('izquilhuitl', adverb).  % every day (K IZQUILHUITL)
closed_class_word('izquintin', pronoun).  % all (pl.) (K IZQUINTIN)
closed_class_word('iztac', adjective).  % white; K IZTAC
closed_class_word('latepizzotl', adjective).  % tight, close-fitting; no K headword
closed_class_word('maantimoquetz', irregular_verb).  % may you stand (mā + an + ti + mo-quetza)
closed_class_word('maca', particle).  % let not, do not (negative particle)
closed_class_word('macalhuītectihui', irregular_verb).  % they went striking with staves
closed_class_word('macamo', particle).  % let not (K MACAMO)
closed_class_word('macanaz', irregular_verb).  % so that they would not be grounded ( uncertain)
closed_class_word('macehualoc', irregular_verb).  % it was deserved/obtained
closed_class_word('macehualtin', noun).  % commoners (K MĀCĒHUAL-LI, pl. -TIN)
closed_class_word('mācēhualtzitzintin', noun).  % poor commoners (mācēhual + tzitzin + tin)
closed_class_word('mach', particle).  % it is said (K MACH)
closed_class_word('machiztic', adjective).  % known, famous (K MACHIZTIC)
closed_class_word('machiztico', irregular_verb).  % it became known
closed_class_word('machpan', adverb).  % first, beforehand; no K headword (cf. MACH)
closed_class_word('mācomantinemi', irregular_verb).  % they went about in a state of excitement
closed_class_word('macoquetz', irregular_verb).  % it rose (m-aco-quetza)
closed_class_word('mācuil', numeral).  % five
closed_class_word('macuilcan', numeral).  % in five places (K MACUILCAN)
closed_class_word('mācuillamantli', numeral).  % fifth (file); mācuil-li + tlamant-li
closed_class_word('mācuilli', numeral).  % five
closed_class_word('mācuīlli', numeral).  % five (K MACUĪL-LI; parser has mācuilli with wrong length)
closed_class_word('macuilpōhualtique', numeral).  % 100 each
closed_class_word('mācuīltin', numeral).  % five (people) (MĀCUĪL-LI + -tin)
closed_class_word('mahcoquetz', irregular_verb).  % it rose up (m-ahco-quetza)
closed_class_word('mahtlac', numeral).  % ten (combining form; K MAHTLAC-)
closed_class_word('mahtlacpōhualli', numeral).  % two hundred (MAHTLACTLI + PŌHUAL-LI)
closed_class_word('mahtlactin', numeral).  % ten (people) (K MAHTLACTLI + -TIN)
closed_class_word('mahtlactli', numeral).  % ten
closed_class_word('mahtlequiquizqueh', noun).  % harquebusiers
closed_class_word('mahueltitihui', irregular_verb).  % they go happily
closed_class_word('mahuizcuioac', irregular_verb).  % it was awe-inspiring; no K headword
closed_class_word('malacachtic', adjective).  % round (K MALACACHTIC)
closed_class_word('māmahuītzoc', noun).  % strong pointed sticks
closed_class_word('mamalacachtic', adjective).  % round, spherical (K MAMALACACHTIC)
closed_class_word('mamalti', noun).  % captives (K MAMALTI)
closed_class_word('mamana', irregular_verb).  % they did not move
closed_class_word('man', adverb).  % line-break fragment of niman (ch. 33)
closed_class_word('manel', particle).  % even if (K MĀNEL)
closed_class_word('mānozo', particle).  % or perhaps; K MĀNOZO
closed_class_word('mantinenca', irregular_verb).  % they went about on it (MANI + tinenca)
closed_class_word('mantiuh', irregular_verb).  % it went along full (MAN(I) + -ti-uh)
closed_class_word('mapizmiquili', irregular_verb).  % hunger-death (M-APĪZ-MIQUI-LI)
closed_class_word('maquiz', irregular_verb).  % to escape
closed_class_word('marques', noun).  % Marqués (Spanish title; sources without accent)
closed_class_word('marqués', noun).  % Marqués (Sp. title/name)
closed_class_word('martín', noun).  % Martín (personal name)
closed_class_word('matataco', irregular_verb).  % persistent inquiry (reduplicative; no K headword)
closed_class_word('matca', adverb).  % slowly, deliberately; K MATCA
closed_class_word('matlacpōhualli', numeral).  % two hundred (K MATLACPŌHUAL-LI)
closed_class_word('matlacpōhualtique', numeral).  % 200 each
closed_class_word('matlacteme', numeral).  % ten of them (MAHTLACTLI + -meh)
closed_class_word('matlactetl', numeral).  % ten (things) (MAHTLACTLI + -TETL)
closed_class_word('matlahuiqueh', irregular_verb).  % they were honored
closed_class_word('matlequiquicehqueh', noun).  % harquebusiers (lexicalized pl. of matlequiquizqui)
closed_class_word('mauhcac', adverb).  % in fear (K MAUHCĀ-TL, preterit mauhcac)
closed_class_word('mauhcaittoia', irregular_verb).  % they were regarded with fear (MAUHCAITTA + -ya)
closed_class_word('mauhcazonecqueh', irregular_verb).  % they became limp with fear (analysis uncertain)
closed_class_word('mauhcazonequia', irregular_verb).  % they only wanted to fear (mauhca + zo(n) 'only' + nequi-ya); contraction, no K headword
closed_class_word('maxitican', irregular_verb).  % may you arrive (MĀ-XI-AHCI-CĀN)
closed_class_word('maxitico', irregular_verb).  % he went to reach there (m- + AXITI + -co)
closed_class_word('maxīxaz', irregular_verb).  % he was to put on his breechcloth? (MAX-TLI); analysis uncertain
closed_class_word('mayahuini', noun).  % one able to throw others down (MAYAHU(I) + -NI)
closed_class_word('māyāhuīto', irregular_verb).  % he went to fight (m- + yāō- + -to?)
closed_class_word('mayānaia', irregular_verb).  % they were hungry (MAYĀNA + -ya)
closed_class_word('māzo', particle).  % although (K MĀZO)
closed_class_word('mēēltzotzona', irregular_verb).  % he beats his breast (m- + ēl-li + TZOTZONA)
closed_class_word('mehuatiquetz', irregular_verb).  % he rose up
closed_class_word('mehuqueh', irregular_verb).  % those who rose (ĒHUA pret. pl.)
closed_class_word('melāhuac', adjective).  % straight, true; MELĀHUAC
closed_class_word('melilpi', irregular_verb).  % it was tied on him
closed_class_word('mellacuahua', irregular_verb).  % be satisfied / take one's fill; MELLEL + CAHUA
closed_class_word('mexicae', noun).  % variant spelling
closed_class_word('mexicaē', noun).  % O Mexica! (vocative -ē)
closed_class_word('mēxico', noun).  % Mexico; c for h in the sources (K MĒXIHCO)
closed_class_word('mexihcopa', locative).  % toward Mexico
closed_class_word('micalizqueh', irregular_verb).  % they will fight (MICALIZ-TLI + -queh)
closed_class_word('micalizqueh', noun).  % those to be killed
closed_class_word('micaltihuitzeh', irregular_verb).  % they came to fight
closed_class_word('micoaia', irregular_verb).  % they were dying (MIQUI + -oa + -ia)
closed_class_word('mictilo', irregular_verb).  % people were killed
closed_class_word('mictiloqueh', irregular_verb).  % they were killed (MICTI-LŌ-QUEH)
closed_class_word('mictilozqueh', irregular_verb).  % they will be killed
closed_class_word('mictimotecac', irregular_verb).  % he lay as if dead
closed_class_word('miec', pronoun).  % much, many; K MIAC (variant MIEC)
closed_class_word('miecpa', adverb).  % many times (K MIECPA)
closed_class_word('miecquintin', pronoun).  % many (pl.) (MIEC + -quintin)
closed_class_word('miequin', pronoun).  % many (MIEC + in)
closed_class_word('miequintin', pronoun).  % many (plural; MIEC + -quintin)
closed_class_word('mihixiquetztiuh', irregular_verb).  % they went turning their faces (mo- + ixquetza + tiuh)
closed_class_word('mihīyocuitican', irregular_verb).  % may you take breath
closed_class_word('mihīyomictiqueh', irregular_verb).  % they killed themselves
closed_class_word('mihuin', irregular_verb).  % feigning drunkenness
closed_class_word('mīinaxtinenca', irregular_verb).  % went about hiding (m-īnaxti-nenca)
closed_class_word('mīmictiloqueh', irregular_verb).  % they were killed
closed_class_word('mimiltic', adjective).  % round, cylindrical (K MIMILTIC)
closed_class_word('mimimiltic', adjective).  % round (K MIMILTIC)
closed_class_word('minaloa', irregular_verb).  % they were taken prisoner (opaque)
closed_class_word('mīnaloc', irregular_verb).  % people were shot
closed_class_word('mīnāyazqueh', irregular_verb).  % they would shoot
closed_class_word('minoc', particle).  % perhaps (K MINOC?)
closed_class_word('mintoc', irregular_verb).  % he lay killed
closed_class_word('miquizquia', irregular_verb).  % he would die (MIQUI + -zquia)
closed_class_word('mītica', locative).  % with arrows (MĪ-TL + -tica)
closed_class_word('mitzacuilianih', irregular_verb).  % they will ... you (opaque)
closed_class_word('mitzalmomaquilia', irregular_verb).  % he gives himself to you (mitz- + al- + mo-MAQUILIA)
closed_class_word('mitzommotlapielilico', irregular_verb).  % he came to watch over you (FC)
closed_class_word('mitzonmotlapielilia', irregular_verb).  % he guards for you (MITZ-ON-MO-TLAPIELILIA)
closed_class_word('mīxcahuico', irregular_verb).  % they came to be born
closed_class_word('mixcoatlailotlac', noun).  % Mixcoatlailotlac (personal name)
closed_class_word('mixcoatlailotlactzin', noun).  % Mixcoatlailotlactzin (personal name)
closed_class_word('mixmapilxixili', irregular_verb).  % they jabbed fingers in each other's faces
closed_class_word('mīxpoloa', irregular_verb).  % he hid his face (M-ĪX-POLOĀ)
closed_class_word('mīxtlatiqueh', irregular_verb).  % they became dawn-like
closed_class_word('mizoquihuiqueh', irregular_verb).  % they got muddy (MO- + ZOQUIHUIA)
closed_class_word('moca', adverb).  % there, some there
closed_class_word('moca', relational).  % with respect to him (mo- + -CA)
closed_class_word('mocāhuhtiaz', irregular_verb).  % he will be left behind (MO- + CAHUA + -tia-z)
closed_class_word('mocāuh', irregular_verb).  % he remained (MO-CĀHUA)
closed_class_word('mocechtle', noun).  % O man of unique valor
closed_class_word('mocehuītzinocan', irregular_verb).  % may he rest (honorific)
closed_class_word('mocemitquic', irregular_verb).  % it was joined together
closed_class_word('mocencempōhua', irregular_verb).  % they all counted themselves (MO- + CEN- + CEMPŌHUA)
closed_class_word('mocenpōhualzauhque', irregular_verb).  % they counted themselves by twenties
closed_class_word('mocenten', adverb).  % all together (MOCH + CENTEN)
closed_class_word('mocentlaliticatca', irregular_verb).  % they were gathered
closed_class_word('mocexiuhzauhque', irregular_verb).  % they adorned themselves (CEXIUH + ZAUHUA)
closed_class_word('moch', pronoun).  % all; K MOCH (reduced MOCH(I))
closed_class_word('mochalaniticatca', irregular_verb).  % they were in a state of friction
closed_class_word('mochalcachīuh', irregular_verb).  % he made himself a Chalcan
closed_class_word('mochalcanenequi', irregular_verb).  % he pretended to be Chalcan
closed_class_word('mochi', pronoun).  % all; K MOCH(I)
closed_class_word('mochīcāhuah', irregular_verb).  % they were strong (MO- + CHĪCĀHUA + -h)
closed_class_word('mochīcauhqueh', irregular_verb).  % they strengthened themselves (MO- + CHĪCĀHUA)
closed_class_word('mochīchīhuaya', irregular_verb).  % they got themselves up
closed_class_word('mochintin', pronoun).  % all (K MOCHINTIN)
closed_class_word('mochipa', adverb).  % always (K MŌCHIPA)
closed_class_word('mochiuhtoc', irregular_verb).  % it has been done
closed_class_word('mococoliticatca', irregular_verb).  % they were sick (COCOYA + -ti-ca-ca)
closed_class_word('mocolonectihuitz', irregular_verb).  % it came twisting; no K headword
closed_class_word('mocolotilia', irregular_verb).  % it twisted itself; no K headword
closed_class_word('mocototztlāliaia', irregular_verb).  % he was crouching (opaque)
closed_class_word('mocototztlāliqueh', irregular_verb).  % they crouched down
closed_class_word('mocuacuacuecuechoa', irregular_verb).  % they writhe/toss about; no K headword
closed_class_word('mocuacuacuecuechoaia', irregular_verb).  % they shook their heads
closed_class_word('mocuacuecuechotihui', irregular_verb).  % they came shaking their heads
closed_class_word('mocualancaitzticatca', irregular_verb).  % they were angry with one another
closed_class_word('mocuecuētilia', irregular_verb).  % it changed itself; no K headword
closed_class_word('mocuēti', irregular_verb).  % she put on a skirt (MO- + CUĒTIĀ)
closed_class_word('mocuitlacoioni', irregular_verb).  % they made holes in it
closed_class_word('mocuitlacueptinemi', irregular_verb).  % they kept turning back (CUITLACUEP(A) + -ti-nemi)
closed_class_word('mocuitlapiltitiuh', irregular_verb).  % its tail went along
closed_class_word('mōhmōztla', adverb).  % daily
closed_class_word('mohuehuecatlano', irregular_verb).  % it became difficult
closed_class_word('mohuicantlali', irregular_verb).  % it was made difficult to pass
closed_class_word('moma', irregular_verb).  % he wondered/believed: m-o- + irregular perfective -mah of MAT(I) (Andrews 11.3), final h lost
closed_class_word('momauhticapul', noun).  % great coward
closed_class_word('momiccanenequia', irregular_verb).  % they feigned death (MICCA + NENEQUI)
closed_class_word('momiquili', irregular_verb).  % he died for him (MO- + MIQUI + -li)
closed_class_word('momozco', locative).  % at the altar (MOMŌZ-TLI + -CO)
closed_class_word('momozticpac', locative).  % on top of the altar platform (MOMOZ-TLI + -I-CPAC)
closed_class_word('monāhuatiqueh', irregular_verb).  % they agreed
closed_class_word('monecticacua', adjective).  % honeyed to eat (lexicalized mo-nec-ti-cacua)
closed_class_word('monemachti', irregular_verb).  % he is prepared/worthy (MO- + NEMACHTI)
closed_class_word('monenepanotoqueh', irregular_verb).  % they went about in confusion
closed_class_word('moneneuhcahuiah', irregular_verb).  % they were equal (opaque)
closed_class_word('monetechhuia', irregular_verb).  % it became difficult
closed_class_word('monetechmictiqueh', irregular_verb).  % they killed one another
closed_class_word('monomatlecahui', irregular_verb).  % it rose of itself
closed_class_word('mononōtztoca', irregular_verb).  % they were consulting
closed_class_word('mononōtztoqueh', irregular_verb).  % they were consulting (pl.)
closed_class_word('moococuauh', irregular_verb).  % he put on his ornaments (OCUAUH?); uncertain
closed_class_word('moohuihuiycantlali', irregular_verb).  % it was made very difficult
closed_class_word('moohuītili', irregular_verb).  % it was made difficult
closed_class_word('moolpia', irregular_verb).  % they girt themselves; m-o-olpia (MO- + ILPIA)
closed_class_word('mopachotoca', irregular_verb).  % they crouched, took cover
closed_class_word('mopapaquiltitihui', irregular_verb).  % they go rejoicing (PAHPAQUILTIA)
closed_class_word('mopipiazoa', irregular_verb).  % it coiled itself (opaque)
closed_class_word('moquenamictiuh', irregular_verb).  % he went to ...
closed_class_word('moquequentzah', irregular_verb).  % they dressed themselves (opaque)
closed_class_word('moquequentzayah', irregular_verb).  % they dressed themselves (opaque)
closed_class_word('moquequeztihui', irregular_verb).  % they go shaking themselves
closed_class_word('moquequeztinemi', irregular_verb).  % they went jostling each other
closed_class_word('moquetzticac', irregular_verb).  % he was standing (MO-QUETZA + -ticac)
closed_class_word('moquichchīchīuhque', irregular_verb).  % they arrayed themselves as men
closed_class_word('moquichquetzqueh', irregular_verb).  % they raised themselves
closed_class_word('moquichquetztihuitz', irregular_verb).  % he came raising himself
closed_class_word('moquiquixti', irregular_verb).  % it was removed (MO- + QUIXTIĀ)
closed_class_word('motecpana', irregular_verb).  % they formed up
closed_class_word('motehuilacachotiuh', irregular_verb).  % it went turning on itself
closed_class_word('motelchiuhtzin', noun).  % Motelchiuhtzin (personal name)
closed_class_word('motēnextiliaya', irregular_verb).  % it was revealing itself (MO-TĒNEXTILIA-YA)
closed_class_word('motēnhuitec', irregular_verb).  % he struck his mouth (mo-tēn-huītec)
closed_class_word('motēnhuītec', irregular_verb).  % he struck his mouth (mo-tēn-huītec)
closed_class_word('motēnhuītectiuh', irregular_verb).  % he goes insulting (TĒNHUĪTEQU(I))
closed_class_word('motēnoā', irregular_verb).  % they were named/famous (MO- + TĒNĒHU(A))
closed_class_word('motēnpapahuitihui', irregular_verb).  % they came shouting/hitting their mouths
closed_class_word('moteōcalhuiqueh', irregular_verb).
closed_class_word('moteohcalhuiqueh', irregular_verb).  % they cast themselves down
closed_class_word('motepexitenqueh', irregular_verb).  % they fell in a heap
closed_class_word('motepexiuiqueh', irregular_verb).  % they were scattered
closed_class_word('moteputztique', irregular_verb).  % they retreated
closed_class_word('moteputztiqueh', irregular_verb).  % they went away
closed_class_word('motetemmā', irregular_verb).  % there was fierce battle
closed_class_word('motetemman', irregular_verb).  % they fell upon one another (opaque)
closed_class_word('motetepexitz', irregular_verb).  % it was made steeper
closed_class_word('motētlāzaltiaya', irregular_verb).  % they threw themselves (MO- + TĒ- + TLĀZALTIA)
closed_class_word('motētoctitihuitz', irregular_verb).  % they came following behind
closed_class_word('motititzatlatoa', irregular_verb).  % he scolded them
closed_class_word('motlachiyalia', irregular_verb).  % it was alert
closed_class_word('motlaēlitzticatca', irregular_verb).  % they hated one another (TLĀĒLITTA + -ti-ca-ca)
closed_class_word('motlahuācanenequi', irregular_verb).  % he feigned drunkenness
closed_class_word('motlahuelquixtiqueh', irregular_verb).  % they were driven out
closed_class_word('motlalito', irregular_verb).  % he went and stayed
closed_class_word('motlālito', irregular_verb).  % he went to place himself (MO-TLĀLIA + -to)
closed_class_word('motlalozquia', irregular_verb).  % they tried to flee
closed_class_word('motlamelāuhcaquetztia', irregular_verb).  % they righted themselves
closed_class_word('motlamina', irregular_verb).  % it pierced itself (MO-TLAMINA)
closed_class_word('motlatemoliz', irregular_verb).  % it will not be sought (MO- + TLA- + TEMOA + -liz)
closed_class_word('motlātizqueh', irregular_verb).  % they would hide
closed_class_word('motlatlapantenque', irregular_verb).  % they regrouped
closed_class_word('motolinia', irregular_verb).  % he is poor (K MOTOLINIA)
closed_class_word('motoxahuato', irregular_verb).  % he went to spill himself (MO-TOXĀHUA + -to)
closed_class_word('motquitihuitzeh', irregular_verb).  % they came wearing it (mo- + ITQU(I) + -ti-huitzeh)
closed_class_word('motzatzatzilitihui', irregular_verb).  % shouting as they went
closed_class_word('motzopelicacua', adjective).  % sweet to eat (lexicalized mo-tzopelic-a-cua)
closed_class_word('motzopēlicacua', adjective).  % it is sweet to eat
closed_class_word('moyāōchīchīhuhtiaqueh', irregular_verb).  % they outfitted themselves for war
closed_class_word('moyāōchīchīhuhtihuitze', irregular_verb).  % they came armed for war
closed_class_word('moyāōchīchīhuhtihuitzeh', irregular_verb).  % they came outfitted for war
closed_class_word('moyāōchīchīuhque', irregular_verb).  % they arrayed themselves for war
closed_class_word('moyohualpoloque', irregular_verb).  % they disappeared by night
closed_class_word('moyōllochichili', irregular_verb).  % m-o-yōl-chīchīli 'he strengthened his heart'
closed_class_word('moyōllotechiuh', irregular_verb).  % m-o-yōl-techiuh 'he composed his heart'
closed_class_word('mozoquineloqueh', irregular_verb).  % they were dragged from the mud
closed_class_word('mozoquipetzcoqueh', irregular_verb).  % they were covered with mud
closed_class_word('moztla', adverb).  % tomorrow (K MŌZTLA)
closed_class_word('muchi', pronoun).  % all; variant of MOCH(I) with u
closed_class_word('muchīchīhua', irregular_verb).  % he prepares himself (mu- for mo- + CHĪCHĪHUA)
closed_class_word('muchīhuaia', irregular_verb).  % it was being done (mo-chīhua-ia)
closed_class_word('muchihuani', noun).  % one who does (CHĪHUA agentive)
closed_class_word('muchīhuaya', irregular_verb).  % it was being done
closed_class_word('muchīhuaz', irregular_verb).  % it will be done (mo-chīhua-z, FC u for o)
closed_class_word('muchintin', pronoun).  % all (pl.); variant of MOCHINTIN (u for o)
closed_class_word('muchioaya', irregular_verb).  % it was being done (mo-chīhua imperfect; u for o)
closed_class_word('muchiuh', irregular_verb).  % it happened (short-vowel spelling of mochīuh)
closed_class_word('muchīuh', irregular_verb).  % it happened; variant of mochīuh (K CHIHU(A), MO-)
closed_class_word('muchtin', pronoun).  % all (pl.) (K MOCHTĪN)
closed_class_word('nā', pronoun).  % I, me
closed_class_word('nāchcāuhtzine', noun).  % O Nāchcāuhtzin! (vocative)
closed_class_word('nahuat', irregular_verb).  % he spoke (nahua + t)
closed_class_word('nāhuatil', noun).  % command, order (K NAHUATIL-LI)
closed_class_word('nāhui', numeral).  % four
closed_class_word('nalquīza', irregular_verb).  % it comes out
closed_class_word('nāmāntzin', adverb).  % now
closed_class_word('namechcuicuitlahui', irregular_verb).  % I am alarmed about you
closed_class_word('namechnohuīquiliz', irregular_verb).  % I will take you (pl.)
closed_class_word('namēchnohuīquiliz', irregular_verb).  % he will take refuge from you (pl.)
closed_class_word('namoyeloc', irregular_verb).  % it was taken (NAMŌ? + -lōc)
closed_class_word('nanacacitztiuh', irregular_verb).  % shield-design phrase; analysis uncertain
closed_class_word('nanacaz', adverb).  % to the side, sideways; lexicalized (cf. NACAZ-TLI)
closed_class_word('nāppantin', numeral).  % fourth (file/ contingent); nāuh- + panti-n
closed_class_word('narváez', noun).  % Narváez (personal name)
closed_class_word('nāuhcan', locative).  % in four places; K NĀUHCAN
closed_class_word('nāuhcan', numeral).  % in four places (K NĀUHCAN)
closed_class_word('nāuhpa', numeral).  % four times, four directions (K NĀUHPA)
closed_class_word('nāuhpōhualtique', numeral).  % 80 each
closed_class_word('nāuhtemeh', numeral).  % four (counted horses); nāuh- + -temeh
closed_class_word('nāuhtetl', numeral).  % four (things) (K NAUHTE-TL)
closed_class_word('neāalāoalo', irregular_verb).  % there was a ... (analysis uncertain)
closed_class_word('necacahualoc', irregular_verb).  % they paused / there was a lull
closed_class_word('necacaltemaloc', irregular_verb).  % there was moaning in the houses ( passive of cacaltemaloa?)
closed_class_word('necalihua', irregular_verb).  % fighting began / there was fighting; analysis uncertain
closed_class_word('necalihuac', irregular_verb).  % there was fighting (perfective of necalihua)
closed_class_word('necalioa', irregular_verb).  % there was fighting
closed_class_word('necalioac', irregular_verb).  % there was fighting
closed_class_word('nececenquetzalo', irregular_verb).  % they were bunched together (opaque)
closed_class_word('nēchca', adverb).  % nearby (K NĒCHCA)
closed_class_word('nechichīhualo', irregular_verb).  % people were outfitted (impersonal NE- + CHĪCHĪHUA + -lō)
closed_class_word('nechīchīhualo', irregular_verb).  % people adorned him (NE- + CHĪCHĪHUA + -LŌ)
closed_class_word('nechihualoc', irregular_verb).  % there was attendance/service: ne- + CHĪHUALŌ + -c
closed_class_word('nechitlacalhuiti', irregular_verb).  % let it come to me (opaque)
closed_class_word('nechōquililo', irregular_verb).  % there was weeping for them
closed_class_word('nechōquiztlapalolli', noun).  % tearful greeting; no K headword
closed_class_word('nechoquiztlapalolo', irregular_verb).  % ne- + chōquiz-tlapalō-lō 'tearful greetings were made'
closed_class_word('nēchuitzin', noun).  % elder sister (honorific)
closed_class_word('necoc', adverb).  % on both sides; K NECOC
closed_class_word('necoccampa', adverb).  % toward both sides (short a; K NECOCCĀMPA)
closed_class_word('necoccāmpa', adverb).  % toward/from both sides; K NECOCCĀMPA
closed_class_word('necochhuāno', irregular_verb).  % as if stretching out to sleep
closed_class_word('necochmamauhtilotoc', irregular_verb).  % everyone lay stunned (NE + COCH + MAMAUHTI-LŌ-TOC)
closed_class_word('necocolo', irregular_verb).  % they were both ... (opaque)
closed_class_word('necocololoz', irregular_verb).  % NECOCOLOLOZ 'there will be anger/suffering'; the future vowel length of the unattested base is uncertain, so the form is accepted whole.
closed_class_word('necocomac', irregular_verb).  % there was giving (NE- + CO- + MACA + -C)
closed_class_word('necuicuitiuechotoc', irregular_verb).  % everyone was dazed (NE + CUICUITI + ...)
closed_class_word('necuitlahuīloa', irregular_verb).  % care was taken (nē- + CUITLAHUĪ-LŌ-HUA)
closed_class_word('necuitlahuiloqueh', irregular_verb).  % they were cared for: ne- + CUITLAHUILŌ + -queh
closed_class_word('neellacuaoalo', irregular_verb).  % ne- + ellacuahualo 'people were in distress'
closed_class_word('nehhuātl', pronoun).  % I (K NEHHUĀTL; cf. tehhuātl, yehhuātl)
closed_class_word('nehnehuialo', irregular_verb).  % people were summoned (NEHNEHUIALŌ)
closed_class_word('nehuaz', irregular_verb).  % I will set out
closed_class_word('nēhuiquililōzqueh', irregular_verb).  % they will be taken
closed_class_word('neihizahuilotoc', irregular_verb).  % everyone was startled (NE + IHIZAHUI-LŌ-TOC)
closed_class_word('neizahuiloia', irregular_verb).  % there was shouting
closed_class_word('nel', particle).  % indeed (K NEL)
closed_class_word('nēl', particle).  % in truth (K NĒL)
closed_class_word('nelicac', irregular_verb).  % to be able to endure (NELICAC)
closed_class_word('nellā', adverb).  % truly (K NELLĀ)
closed_class_word('nelli', adverb).  % truly (K NELLI)
closed_class_word('neltic', adjective).  % true (K NELTIC)
closed_class_word('nemachoc', irregular_verb).  % it was thought (NE- + MACHO + -c)
closed_class_word('nemamauhtilotoc', irregular_verb).  % everyone was terrified (NE + MAMAUHTI-LŌ-TOC)
closed_class_word('nemauhcaquixtilo', irregular_verb).  % everyone escaped in fear
closed_class_word('nemia', irregular_verb).  % they went about (NEM(I))
closed_class_word('nemimictiloc', irregular_verb).  % people were killed there
closed_class_word('nen', adverb).  % in vain
closed_class_word('nēn', adverb).  % in vain (variant of NEN)
closed_class_word('nenanacahuilo', irregular_verb).  % everyone was dazed (NE + NANACAHUILO)
closed_class_word('nenechcuīliuhtihuetzi', irregular_verb).  % they quickly came to seize me
closed_class_word('neneciuhtinemi', irregular_verb).  % they went about panting; lexicalized redup. + -ti-nemi
closed_class_word('nenecuiliuhtihuetzqueh', irregular_verb).  % they staggered and fell (redup. NENECUILOA + -ti-huetz-queh)
closed_class_word('nenecutic', adjective).  % honeyed (redup. NEC-TLI 'honey' + -tic)
closed_class_word('nenenepiloa', irregular_verb).  % they hung like tassels (redup. NEPILOA)
closed_class_word('nenenepilotinemi', irregular_verb).  % they went with tongues hanging; NENEPIL-LI + -ti-nemi
closed_class_word('nenepaniuhqui', adjective).  % with shells crossing (cf. NEPANIUHQUI 'crossed')
closed_class_word('nenonotzaloc', irregular_verb).  % it was discussed (nonact. NONŌTZ(A))
closed_class_word('nenpanca', adverb).  % in vain
closed_class_word('nenque', irregular_verb).  % they were (NENCA pret. pl.)
closed_class_word('neohoholololo', irregular_verb).  % ne- + oh-ololoa 'people came together'
closed_class_word('nēpa', adverb).  % there, at a distance
closed_class_word('nepacholo', irregular_verb).  % there is a pressing/scattering; prob. ne- + nonact. PACHOĀ
closed_class_word('nepantla', locative).  % in the middle; K NEPANTLAH (final h dropped)
closed_class_word('nepapan', pronoun).  % various (K NEPAPAN)
closed_class_word('nepapatzolō', irregular_verb).  % they were trampled (NONACT. PAPATZOLOA)
closed_class_word('nepepetzcolo', irregular_verb).  % there was a slipping (PEPETZOA nonact.)
closed_class_word('nequequezalōc', irregular_verb).  % they were shaken
closed_class_word('neteco', irregular_verb).  % people lay down
closed_class_word('netēnhuīteco', irregular_verb).  % people were struck on the mouth (nonact. of TĒNHUĪTEQUI)
closed_class_word('netēnhuītecoia', irregular_verb).  % there was an outcry
closed_class_word('netēnhuītecoya', irregular_verb).  % there was a striking of people (NE-TĒN-HUĪTECO-YA)
closed_class_word('netenmachoc', irregular_verb).  % ne- + tenmacho-c 'people were distressed'
closed_class_word('netequipacholo', irregular_verb).  % everyone was anguished (NE + TEQUIPACHO-LO)
closed_class_word('netētenantiloc', irregular_verb).  % walls were built (nē-tē-TENANTI-LŌ-C)
closed_class_word('netētenantlaliloc', irregular_verb).  % walls were laid (nē-tē-TENANTLALI-LŌ-C)
closed_class_word('netēuhtōaltemaloc', irregular_verb).  % the temple courtyard was filled; opaque
closed_class_word('netlālōlō', irregular_verb).  % there was a running; no K headword
closed_class_word('netlālōlōc', irregular_verb).  % they all moved together
closed_class_word('netlatetemolilo', irregular_verb).  % there was searching
closed_class_word('netlatilo', irregular_verb).  % it is sought (nē- + TLATI?); uncertain
closed_class_word('neutemalo', irregular_verb).  % people were consulted (NE- + UETEMALŌ?)
closed_class_word('nexoxocolō', irregular_verb).  % they were pressed
closed_class_word('nextic', adjective).  % ash-colored (NEXTIC)
closed_class_word('nēz', irregular_verb).  % it appeared (pret. of NĒCI); K NĒCI pret. NĒZ
closed_class_word('nēztiuh', irregular_verb).  % he went appearing (NĒCI + -ti + -uh)
closed_class_word('nicah', irregular_verb).  % I am
closed_class_word('nicān', locative).  % here
closed_class_word('Nicauhtzine', noun).  % O Nicauhtzin (vocative)
closed_class_word('niman', adverb).  % then, right away
closed_class_word('nimitzōnopielili', irregular_verb).  % I watch over you (FC)
closed_class_word('nipa', adverb).  % on this side (K NIPA)
closed_class_word('noceppa', adverb).  % once more (K NŌCEPPA)
closed_class_word('nochalchiuh', noun).  % my jade (NO- + CHĀLCHIHUI-TL)
closed_class_word('nocnē', noun).  % O my friend! (no- + CNĒ; vocative)
closed_class_word('nohma', adverb).  % still (K NŌHMA)
closed_class_word('nohuiampa', adverb).  % everywhere (K NŌHUIAMPA)
closed_class_word('nohuian', adverb).  % everywhere (K NŌHUIYĀN; sources nohuian)
closed_class_word('nohuiān', adverb).  % everywhere
closed_class_word('nōhuiān', adverb).  % everywhere; i for y (K NŌHUIYĀN)
closed_class_word('nohuiyampa', adverb).  % everywhere, in all directions; K NOHUIYAMPA
closed_class_word('nōhuiyān', adverb).  % everywhere; K NŌHUIYĀN
closed_class_word('nōncuah', adverb).  % apart, separately (K NŌNCUAH)
closed_class_word('nonitztica', irregular_verb).  % where I am (FC; analysis uncertain)
closed_class_word('Notēchihcahuān', noun).  % O our lord (vocative)
closed_class_word('notelpotziné', noun).  % O my young man! (NO-TELPŌ-TZIN-É, vocative)
closed_class_word('notenzac', noun).  % my lips (NO- + TĒN-TLI)
closed_class_word('noyēyohhui', noun).  % my new thing
closed_class_word('nozo', particle).  % or
closed_class_word('nozonel', particle).  % whatever
closed_class_word('oacico', irregular_verb).  % he arrived there (ō- + AHCI + -co)
closed_class_word('ōahcic', irregular_verb).  % he arrived (Ō + AHCI + -c)
closed_class_word('oahcico', irregular_verb).  % when they arrived
closed_class_word('ōahcito', irregular_verb).  % he went to arrive there (Ō + AHCI + -to)
closed_class_word('oamaxqueh', irregular_verb).  % they were given
closed_class_word('ōamaxqueh', irregular_verb).  % you were given (Ō- + AMA, pret. plural)
closed_class_word('oanmotlacneliliqueh', irregular_verb).  % you favored one another
closed_class_word('ōanmotlacneliliqueh', irregular_verb).  % you favoured one another (Ō- + AN- + MO- + TLACNELILI)
closed_class_word('ōanquiciauhqueh', irregular_verb).  % they came to rest there
closed_class_word('ōanquihīyōhuīqueh', irregular_verb).  % they came to be tired there
closed_class_word('oanquimictiqueh', irregular_verb).  % you (pl.) killed him (Ō-AN-QU-IM-MICTI)
closed_class_word('Oanquimihīyōhuiltiqueh', irregular_verb).  % you came to be tired
closed_class_word('oanquimihīyōhuiltiqueh', irregular_verb).  % you came to be tired
closed_class_word('oanquimociahuiltiqueh', irregular_verb).  % you refreshed him
closed_class_word('ōanquimociahuiltiqueh', irregular_verb).  % you refreshed him (Ō- + AN- + QUIM- + MO-CIAHUILTIĀ)
closed_class_word('oaxihuaqueh', irregular_verb).  % they arrived
closed_class_word('ocaaanqueh', irregular_verb).  % they remained
closed_class_word('ocaanqueh', irregular_verb).  % they remained (FC spelling)
closed_class_word('ocacoc', irregular_verb).  % it was heard (o + nonact. cacoc of CAQU(I))
closed_class_word('ocactihuetz', irregular_verb).  % he fell shouting (OCA + -ti + HUETZ)
closed_class_word('ocalaquico', irregular_verb).  % they entered hither (o-calaqui-co)
closed_class_word('ocalaquito', irregular_verb).  % when they had entered
closed_class_word('occequintin', pronoun).  % others (K OCCEQUĪNTĪN)
closed_class_word('ōcecenquīxohuac', irregular_verb).  % each came out (CĒCEN + QUĪZA + -huac)
closed_class_word('ocenquīzaco', irregular_verb).  % it all came out
closed_class_word('ōcenquīzaco', irregular_verb).  % it all came out (Ō- + CEN- + QUĪZA + -co)
closed_class_word('ocenquizqueh', irregular_verb).  % they were all assembled (OC + CENQUIZ- + -queh)
closed_class_word('ōcinchachan', irregular_verb).  % ō-c-in-chachan 'first they took them to their homes'
closed_class_word('ocōcaquiti', irregular_verb).  % he heard it there (O- + C- + Ō- + CAQU(I) + -TI)
closed_class_word('oconacanqueh', irregular_verb).  % they took it away
closed_class_word('oconahxitito', irregular_verb).  % they went to reach it (Ō + C- + ON- + AHCI + -ti-to)
closed_class_word('oconchichiuhque', irregular_verb).  % they finished adjusting them
closed_class_word('ōconchichiuhque', irregular_verb).  % they finished adjusting them (Ō- + C- + CON- + CHĪHUA)
closed_class_word('ōconilhuihuito', irregular_verb).  % he went to tell him
closed_class_word('oconitoqueh', irregular_verb).  % they said it there
closed_class_word('oconmocuiliqueh', irregular_verb).  % they took it from him (ō- + C- + ON- + MO- + CUILIA)
closed_class_word('oconnepanoto', irregular_verb).  % they went to join them (Ō + C- + ON- + NEPANOĀ + -to)
closed_class_word('ocontlālhuācaquīxtito', irregular_verb).  % they went to remove it from the ground
closed_class_word('ocontleminqueh', irregular_verb).  % they set fire to it (with o-)
closed_class_word('ocontzonquīxti', irregular_verb).  % he finished it (OPAQUE)
closed_class_word('ocuiltecayō', noun).  % ocuilteca style; no K headword
closed_class_word('ohiaqueh', irregular_verb).  % they went
closed_class_word('ohtenco', locative).  % at the edge of the road (OH-TLI + TĒN-TLI + -CO)
closed_class_word('ohtlahīyohui', irregular_verb).  % suffered on the road (OH- + TLA- + IHIYOHUI)
closed_class_word('ohtlalpan', locative).  % on the ground (OH-TLI + TLĀL-LI + -pan)
closed_class_word('ohtlathuic', irregular_verb).  % when dawn came (TLATHUI + -c)
closed_class_word('ohtlica', adverb).  % on the road (oh-tli + -tica)
closed_class_word('ohualalhuacaquizqueh', irregular_verb).  % they came to land: O- + HUAL- + ALHUACAQUI + -Z-QUEH (variant spelling)
closed_class_word('ohualālhuacāquīzqueh', irregular_verb).  % they came out at dawn
closed_class_word('ōhuālālhuacāquīzqueh', irregular_verb).  % they came out at dawn (Ō- + HUĀL- + ALHUACĀ + QUĪZA)
closed_class_word('ōhuallah', irregular_verb).  % he came (ō- + huāl + yah; K HUĀLLAH)
closed_class_word('ōhuāllahqueh', irregular_verb).  % they came
closed_class_word('ohualnahuatiloc', irregular_verb).  % it was commanded
closed_class_word('ōhuālnahuatiloc', irregular_verb).  % orders were given (Ō- + HUĀL- + NAHUATIĀ, nonact.)
closed_class_word('ohualtlamelāuhticac', irregular_verb).  % the road lay straight thither
closed_class_word('ōhuāltlamelāuhticac', irregular_verb).  % the road lay straight thither (Ō- + HUĀL- + TLAMELĀHUA + -ti-cac)
closed_class_word('ohualyetia', irregular_verb).  % it was dawning (hual- + YOHUALTIA)
closed_class_word('ohualyetiquizqueh', irregular_verb).  % they came out thus
closed_class_word('ōhuālyetiquizqueh', irregular_verb).  % they came out to face them (Ō- + HUĀL- + YE-TI + QUĪZA)
closed_class_word('ohuanhuallaqueh', irregular_verb).  % they came from there (ohuan + HUĀLLA + -queh)
closed_class_word('ohuanhuāllaqueh', irregular_verb).  % ohuan + HUĀLLA + -queh 'they came from there'
closed_class_word('ohuanmaxitico', irregular_verb).  % they arrived from there (ohuan + MAXITI + -co)
closed_class_word('ohuanquimihiyohuiltiqueh', irregular_verb).  % they came to trouble them (ohuan + quim- + IHIYŌHUILTIĀ)
closed_class_word('ohuanquimociahuiltiqueh', irregular_verb).  % they came to rejoice over them (ohuan + quim- + mo-CIYA.HUILTIĀ)
closed_class_word('ōhuia', irregular_verb).  % they went (ō-huī-ya)
closed_class_word('ōhuican', adjective).  % dangerous (FC ōhuican)
closed_class_word('ohuiti', irregular_verb).  % to be endangered
closed_class_word('oiaque', irregular_verb).  % they went (Ō + YĀ + -queh)
closed_class_word('ōiaqueh', irregular_verb).  % they went (Ō + YĀQUEH, attested i for y)
closed_class_word('oittoc', irregular_verb).  % it was seen (o-ittoc)
closed_class_word('ōittoque', irregular_verb).  % they were seen
closed_class_word('ololiuhtihuitzeh', irregular_verb).  % they came bunched together (OLOLOA + -ti-huitzeh)
closed_class_word('om', particle).  % one, a certain (numeral/particle)
closed_class_word('omach', irregular_verb).  % it was felt/known (Ō + MACHO + -c)
closed_class_word('omach', particle).  % perhaps (K OMACH)
closed_class_word('omachiztico', irregular_verb).  % it became known
closed_class_word('ōmachiztico', irregular_verb).  % ō-machizti-co 'it became known' (); MACHIZTIA with purposive -co.
closed_class_word('ōmachiztito', irregular_verb).  % word went to be known: ō- + MACHIZTIA + -to
closed_class_word('ōmachoc', irregular_verb).  % it became known (impersonal MATI)
closed_class_word('omah', pronoun).  % some
closed_class_word('omahuilti', irregular_verb).  % he mocked
closed_class_word('ōmahuilti', irregular_verb).  % ō-m-ahahuilti 'he mocked' (preterit ō-)
closed_class_word('ōme', numeral).  % two
closed_class_word('omēi', numeral).  % three (in counting: om-ēyi)
closed_class_word('ōmen', numeral).  % two (of them)
closed_class_word('ōmentin', numeral).  % two (people) (ŌME + -tin)
closed_class_word('ōmētin', numeral).  % two of them; ōme + -tin
closed_class_word('ōmexti', numeral).  % both (ŌME + -XTI)
closed_class_word('omēyi', numeral).  % plus three, -and-three (numbers); OM- + ĒYI
closed_class_word('omito', irregular_verb).  % it was said (o + nonact. mito of ITOĀ)
closed_class_word('omitztia', irregular_verb).  % he had gone that way: ō- + m(o)- + itztia; contracted, no K headword
closed_class_word('ommacā', irregular_verb).  % there were given (ON- + MACA passive)
closed_class_word('ommacalaquiqueh', irregular_verb).  % they embarked there (ON-MO-CALAQUI-QUEH, assimilated)
closed_class_word('ommācuilli', numeral).  % nine (K OMMĀCUILLI)
closed_class_word('ommahtlactli', numeral).  % ten more (OM- + MAHTLACTLI)
closed_class_word('ommāhuāqueh', irregular_verb).  % they were frightened there
closed_class_word('ommaquiaia', irregular_verb).  % he was putting it on them (opaque)
closed_class_word('ommaquiqueh', irregular_verb).  % they entered him
closed_class_word('ommatlactli', numeral).  % eleven (OM- + MAHTLACTLI)
closed_class_word('ommatoctiqueh', irregular_verb).  % they went in single file (FC; cf. matocti)
closed_class_word('ommatzop', irregular_verb).  % it was stopped up
closed_class_word('ōmmecatl', noun).  % cord (ŌM- + MECA-TL)
closed_class_word('ommic', irregular_verb).  % he died there
closed_class_word('ōmmicque', irregular_verb).  % they died there (Ō- + assimilated ON + MIQU(I))
closed_class_word('ōmmixtlatique', irregular_verb).  % they were annihilated there
closed_class_word('ommocohuihuitzoco', irregular_verb).  % they came twisting
closed_class_word('ommocuāquimiloā', irregular_verb).  % he wound it around his head (opaque)
closed_class_word('ommomotlac', irregular_verb).  % he threw himself down (ō- + MO- + TLĀZA)
closed_class_word('ommoneuhcaiotiqueh', irregular_verb).  % they took sustenance (ON- + MO- + NEUHCAIOTI + -QUEH)
closed_class_word('ommote', irregular_verb).  % they were hit
closed_class_word('ommotehuilacachoco', irregular_verb).  % they came turning
closed_class_word('ommotenqueh', irregular_verb).  % they formed up
closed_class_word('ommotepancaltemato', irregular_verb).  % he went to arrange himself in the palace
closed_class_word('ommotepeuhqueh', irregular_verb).  % they dropped/fell in
closed_class_word('ommotepēuhqueh', irregular_verb).  % they ... (opaque)
closed_class_word('ommotlachiyalito', irregular_verb).  % they went to look
closed_class_word('ommotlalica', irregular_verb).  % they had set themselves
closed_class_word('ommotlalico', irregular_verb).  % they came and settled (ON + MO-TLĀLIA + -co)
closed_class_word('ommotlalito', irregular_verb).  % they went to settle themselves
closed_class_word('ommotlatlachiyalito', irregular_verb).  % they went looking around
closed_class_word('ōmmotzacu', irregular_verb).  % ō-on-mo-tzacu 'it was closed off'
closed_class_word('ommotzcalo', irregular_verb).  % it inclined (of the sun)
closed_class_word('ommotzotzonaco', irregular_verb).  % they struck themselves there
closed_class_word('ommotzotzonato', irregular_verb).  % they went to drum
closed_class_word('ōmocacauhqueh', irregular_verb).  % they ... (opaque)
closed_class_word('omocacayauh', irregular_verb).  % he deceived/mocked
closed_class_word('ōmocacayauh', irregular_verb).  % ō-mo-cacayauh 'he was left abandoned' (preterit ō-)
closed_class_word('omocaltemato', irregular_verb).  % he went to arrange himself in the building
closed_class_word('omocuahuitec', irregular_verb).  % he struck himself on the head
closed_class_word('omomā', irregular_verb).  % they were taken (Ō + MO- + MĀ)
closed_class_word('omomān', irregular_verb).  % it was set up (ō- + MO- + MAN(I))
closed_class_word('ōmoman', irregular_verb).  % it was set down / rattled
closed_class_word('omōme', numeral).  % two (of people)
closed_class_word('omopachotoca', irregular_verb).  % he went along pressing himself (mo-PACHOTOCA)
closed_class_word('omoquimilo', irregular_verb).  % he wrapped himself
closed_class_word('ōmotēmacato', irregular_verb).  % he went to give himself (Ō + MO- + TĒ- + MACA + -to)
closed_class_word('omoteneuh', adjective).  % the aforementioned (MOTENEHUA)
closed_class_word('omottac', irregular_verb).  % it was seen (ō-mo-tta-c)
closed_class_word('omotzopnec', irregular_verb).  % he put on his cape (ō- + MO- + TZOPNEC)
closed_class_word('ōmotzopnec', irregular_verb).  % he put on his cape (Ō- + MO- + TZOPNEC)
closed_class_word('omoxiuhtlatique', irregular_verb).  % opaque (XIHUITL + TLATI)
closed_class_word('omoxixiuhtlati', irregular_verb).  % opaque
closed_class_word('ōmoxixiuhtlati', irregular_verb).  % they exhausted themselves (Ō- + MO- + XIXIUHTLATI)
closed_class_word('omozcali', irregular_verb).  % he came to his senses
closed_class_word('ōmpa', locative).  % there (distal)
closed_class_word('ompachihuito', irregular_verb).  % they went to satisfy themselves (FC)
closed_class_word('ōmpahti', irregular_verb).  % they healed
closed_class_word('ōmpanoqueh', irregular_verb).  % they crossed over there
closed_class_word('ompanotiaqueh', irregular_verb).  % they went crossing over
closed_class_word('ōmpehua', irregular_verb).  % then they set off (ŌM- 'on' + PĒHUA)
closed_class_word('ōmpet', adverb).  % in two places (ŌME + -pet)
closed_class_word('ompōhualli', numeral).  % forty (ŌM- + PŌHUAL-LI)
closed_class_word('ōmpōhualtica', numeral).  % by two twenties
closed_class_word('ōmpōhualtito', irregular_verb).  % they went by two twenties
closed_class_word('omumachiotih', irregular_verb).  % they marked themselves (ō- + MO- + MACHIOTIA)
closed_class_word('on', particle).  % indeed, completely
closed_class_word('onaaqui', irregular_verb).  % it is placed there
closed_class_word('onaci', irregular_verb).  % it reached there (ON- + AHCI)
closed_class_word('onacico', irregular_verb).  % they arrived there
closed_class_word('ōnacique', irregular_verb).  % they reached there (Ō + ON-AHCI-QUE)
closed_class_word('onahcico', irregular_verb).  % reached there
closed_class_word('onapanoqueh', irregular_verb).  % they crossed over the water
closed_class_word('onca', irregular_verb).  % there is/are
closed_class_word('oncan', locative).  % there (short-vowel spelling of ONCĀN)
closed_class_word('oncān', locative).  % there
closed_class_word('oncaxtōlli', numeral).  % fifteen; ON- + CAXTŌL-LI (K CAXTŌL-LI)
closed_class_word('oncē', numeral).  % eleven (K ONCĒ; mahtlactli oncē)
closed_class_word('onceceuh', irregular_verb).  % it paused (ON- + CECEHUI)
closed_class_word('oncenpanti', irregular_verb).  % they became one (cen-pan-ti)
closed_class_word('onchicōme', numeral).  % twenty-seven (ON- + CHICŌME)
closed_class_word('onchicōmilhuitico', irregular_verb).  % they arrived seven days later
closed_class_word('onchicomilhuitiqueh', irregular_verb).  % they passed seven days (ON- + CHICŌM-ILHUITI-QUEH)
closed_class_word('onchicuacēn', numeral).  % twenty-six (ON- + CHICUACĒN)
closed_class_word('onchicuei', numeral).  % eight (of them)
closed_class_word('onchicunāhui', numeral).  % nine (ON- + CHICUNĀHUI)
closed_class_word('oncoion', irregular_verb).  % holes were blown in it
closed_class_word('ōnechhuālhuīca', irregular_verb).  % he brought me here (Ō-NECH-HUĀL-HUĪCA)
closed_class_word('ōnecuitlahuīloc', irregular_verb).  % there was worrying (NECUITLAHUIA nonact.)
closed_class_word('onehuacoc', irregular_verb).  % it was ... (opaque)
closed_class_word('ōnehuacoc', irregular_verb).  % it leaned / was poised there (Ō- + NEHUACO-C)
closed_class_word('onehuah', irregular_verb).  % they got started (ON- + ĒHUA)
closed_class_word('onehualo', irregular_verb).  % people set out (ON- + ĒHUA + -LŌ)
closed_class_word('onehuazqueh', irregular_verb).  % they will set out (ON- + ĒHUA + -Z-QUEH)
closed_class_word('ōneltic', adjective).  % it was true (ō + NELTIC)
closed_class_word('onepantla', locative).  % in the middle (ON- + NEPANTLA)
closed_class_word('onēttitilo', irregular_verb).  % there they were shown (ON-Ē-ITTITILO)
closed_class_word('oneuhqueh', irregular_verb).  % they took sustenance (ON- + Euh + -QUEH)
closed_class_word('onhuehuat', irregular_verb).  % it did good
closed_class_word('onhui', adverb).  % it is so (ON + HUI)
closed_class_word('onia', irregular_verb).  % it went there (ō- + N- + YĀ)
closed_class_word('oniaqueh', irregular_verb).  % they went there (ON + YĀ + -queh)
closed_class_word('ōniaqueh', irregular_verb).  % they went there (Ō- + ON- + YĀ, pret. plural)
closed_class_word('oniatimani', irregular_verb).  % it goes along ... (analysis uncertain)
closed_class_word('ōniatimani', irregular_verb).  % they went along there (Ō- + ON- + YĀ + -ti-mani)
closed_class_word('onicma', irregular_verb).  % I found it out: ō-ni-c- + irregular pret. MAH of MAT(I), h lost (Andrews 11.3)
closed_class_word('oniehuatqueh', irregular_verb).  % they set out
closed_class_word('onimitznottili', irregular_verb).  % I have beheld you (FC honorific)
closed_class_word('ōnimitznottili', irregular_verb).  % ō-ni-mitz-nottili 'I have beheld you' (FC honorific, 12:16).
closed_class_word('onimitzonnotlapielili', irregular_verb).  % I have watched over you (FC honorific)
closed_class_word('ōnimitzonnotlapielili', irregular_verb).  % multiple object/directional prefixes plus applicative.
closed_class_word('onitztihui', irregular_verb).  % they went looking about
closed_class_word('ōnixpoliuhque', irregular_verb).  % they perished (opaque)
closed_class_word('onmamayahuito', irregular_verb).  % they went carrying it there
closed_class_word('onmixtilquetzato', irregular_verb).  % they were dumbfounded
closed_class_word('onmocacaltemato', irregular_verb).  % he went to arrange himself in the buildings
closed_class_word('onmocniuhtlaqueh', irregular_verb).  % they became friends (ON- + MO- + CNĪUHTLA + -QUEH)
closed_class_word('onmotemato', irregular_verb).  % they went down there (ON + MO-TEMOA + -to)
closed_class_word('onnahuatqueh', irregular_verb).  % they were silent
closed_class_word('onnāhui', numeral).  % plus four, -and-four (numbers); ON- + NĀHUI
closed_class_word('onnāuhtetix', irregular_verb).  % four became (ON- + NĀUHTETL?)
closed_class_word('onne', numeral).  % there were two (ON + ŌME)
closed_class_word('onnecxitlalilo', irregular_verb).  % ō-nē-cxī-tlalī-lō 'people were placed at the feet'
closed_class_word('onnecxitlalīlō', irregular_verb).  % ō-nē-cxī-tlalī-lō 'people were placed at the feet'
closed_class_word('onneltic', adverb).  % on + nelti-c 'it came to nothing'
closed_class_word('onoac', irregular_verb).  % they lay there
closed_class_word('onoc', irregular_verb).  % it lies there (ON- + O, pret. OC)
closed_class_word('onoca', irregular_verb).  % there lies (ON- + O 'be lying' + -ca)
closed_class_word('onoconittac', irregular_verb).  % what I saw
closed_class_word('ōnoconittac', irregular_verb).  % then he saw it (ō-n-ocon-itta-c)
closed_class_word('ononnentlamatticatca', irregular_verb).  % I have been wondering (FC)
closed_class_word('ōnonnentlamatticatca', irregular_verb).  % NENTLAMATTI is not in the lexicon; the parser knows only the whole form.
closed_class_word('onontlachix', irregular_verb).  % he looked there
closed_class_word('onotihuitzeh', irregular_verb).  % they come lying (ON- + O 'be lying' + -ti-huitzeh)
closed_class_word('onotinemi', irregular_verb).  % they were going along there
closed_class_word('onteaxitiloc', irregular_verb).  % there was arrival (NEXTIA nonact.?)
closed_class_word('ōnteaxitiloc', irregular_verb).  % it was reached there (Ō- + ON- + TE- + AXITI + -lo-c)
closed_class_word('ontecpantli', numeral).  % one more (twenty-count)
closed_class_word('onteixnāmictihui', irregular_verb).  % they went facing people
closed_class_word('ontēmictico', irregular_verb).  % they finished the killing
closed_class_word('ontēmictiqueh', irregular_verb).  % they killed people there
closed_class_word('ontenāmoieloz', irregular_verb).  % there was to be plundering
closed_class_word('ontepehualōya', irregular_verb).  % it was being conquered (ō- + ON- + TEPĒHUALŌ + -ya)
closed_class_word('ontetīzahuilo', irregular_verb).  % let captives be chalked
closed_class_word('ōntetzontecomehqueh', irregular_verb).  % they had two heads (ōn-tetzontecon-meh-queh)
closed_class_word('ōntetzontecomēqueh', noun).  % two-headed ones
closed_class_word('ontexixilqueh', irregular_verb).  % they spread out there
closed_class_word('ontimalihuiz', irregular_verb).  % will you flourish?
closed_class_word('ontlamalacachoco', irregular_verb).  % they came spinning
closed_class_word('ōntlamantin', numeral).  % second (file/contingent); ōn- + tlamanti-n
closed_class_word('ontlamictiloc', irregular_verb).  % there was killing (TLA- + MICTIA nonact.)
closed_class_word('ontlanāhuhtimotlali', irregular_verb).  % he sat silent
closed_class_word('ontlatoquiliqueh', irregular_verb).  % they were buried (TLA- + TOQUILIA)
closed_class_word('ōntlaxiltihui', irregular_verb).  % they went searching there (opaque)
closed_class_word('ontlayahualloco', irregular_verb).  % they came going in circles
closed_class_word('ontlecoque', irregular_verb).  % they climbed up
closed_class_word('ontletlehco', irregular_verb).  % fire rose there (on- + TLEHLEHCO)
closed_class_word('ontonacamicqueh', irregular_verb).  % they died there in abundance
closed_class_word('ontzonquiz', irregular_verb).  % it will conclude (ON- + TZONQUI + -z)
closed_class_word('oomicallo', irregular_verb).  % it was like?; analysis uncertain
closed_class_word('opanhuetzito', irregular_verb).  % they fell onto them
closed_class_word('ōppa', adverb).  % twice (K ŌPPA)
closed_class_word('oquetzticac', irregular_verb).  % he was standing (QUETZA + -ticac)
closed_class_word('oquicacquenec', irregular_verb).  % when they heard this, as it were
closed_class_word('oquicconchichiuhque', irregular_verb).  % they finished it
closed_class_word('ōquicconchichiuhque', irregular_verb).  % they finished it (Ō- + QU-I-C-CON- + CHĪHUA)
closed_class_word('oquicheuhtihui', irregular_verb).  % they went beginning to do it
closed_class_word('ōquicheuhtihui', irregular_verb).  % they went to get it ready
closed_class_word('oquichīcatihuitzeh', irregular_verb).  % they came standing as men
closed_class_word('oquima', irregular_verb).  % he knew it (Ō-QUI-MATI)
closed_class_word('ōquima', irregular_verb).  % when he heard/knew it (ō + quima)
closed_class_word('oquimauhcacauhtiquizqueh', irregular_verb).  % they went out leaving it to him
closed_class_word('oquimaxitico', irregular_verb).  % he went to reach it (ō- + QUIM- + AXITI + -co)
closed_class_word('ōquimaxitico', irregular_verb).  % he went to reach it (Ō- + QUIM- + AXITI + -co)
closed_class_word('oquimāyāhuīto', irregular_verb).  % he went to fight it
closed_class_word('ōquimāyāhuīto', irregular_verb).  % he went to fight it (Ō- + QUIM- + MĀYĀHUĪ + -to)
closed_class_word('oquimociāhuiltiqueh', irregular_verb).  % they refreshed him
closed_class_word('oquimonhuīhuītequito', irregular_verb).  % they struck them repeatedly
closed_class_word('ōquimonittaco', irregular_verb).  % he went to see it (ō-qui-m-on-ITTA-co)
closed_class_word('oquinquīxtito', irregular_verb).  % they went to remove them
closed_class_word('oquipantito', irregular_verb).  % they went to take it
closed_class_word('ōquipantito', irregular_verb).  % they went to take it (Ō- + QU-I- + PANTI + -to)
closed_class_word('oquittaqu', irregular_verb).  % tokenizer form of oquittaquê
closed_class_word('oquittaquê', irregular_verb).  % when they saw it
closed_class_word('oquixilico', irregular_verb).  % they lanced him
closed_class_word('oquīzato', irregular_verb).  % they went out there
closed_class_word('otechmocneliliqueh', irregular_verb).  % he favored us
closed_class_word('otēmictitiquizqueh', irregular_verb).  % they went out killing people
closed_class_word('otēnoaqueh', irregular_verb).  % they had places at the side
closed_class_word('otēntli', noun).  % the roadside
closed_class_word('otentoc', irregular_verb).  % it was full (O-TĒN-TOC)
closed_class_word('ōticmihiyohuīlti', irregular_verb).  % you have troubled yourself (ō-ti-c-m-IHIYŌHUILTI)
closed_class_word('ōticmociyahuilti', irregular_verb).  % you have rejoiced (ō-ti-c-mo-CIYAHUILTI)
closed_class_word('otictomacacqueh', irregular_verb).  % we have come to the end
closed_class_word('ōtictomacacqueh', irregular_verb).  % ō-ti-c-tomacac-queh 'we have given it' (preterit ō-)
closed_class_word('otihuallaqueh', irregular_verb).  % we came (ō-ti-huāl-yā-queh)
closed_class_word('ōtimoquīxtico', irregular_verb).  % you came out hither (ō-ti-mo-QUĪXTI-co)
closed_class_word('ōtiohualaqui', irregular_verb).  % you came to enter (ō-ti-o-hual-AQUI)
closed_class_word('ōtiohualmohuicac', irregular_verb).  % you came here (ō-ti-o-hual-mo-HUĪCAC)
closed_class_word('otlācaixpolo', irregular_verb).  % he destroyed people
closed_class_word('ōtlācaixpolo', irregular_verb).  % ō-tlāca-ixpolo 'he destroyed the people' (preterit ō-)
closed_class_word('ōtlainmantic', irregular_verb).  % the moment had come (opaque)
closed_class_word('otlaltitech', adverb).  % on the ground (ō + tlāl-ti-tech)
closed_class_word('otlanamoyeloc', irregular_verb).  % things were taken there
closed_class_word('otlanez', irregular_verb).  % it dawned; K TLĀNEZ
closed_class_word('otlathuic', irregular_verb).  % it dawned; K TLATHUI
closed_class_word('otlatlaco', irregular_verb).  % he did wrong
closed_class_word('otzatzioac', irregular_verb).  % there was shouting (ō- + TZAHTZI + -oa-c)
closed_class_word('ōtzatzioac', irregular_verb).  % there was shouting (Ō- + TZAHTZI + -oa-c)
closed_class_word('oxixilioaque', irregular_verb).  % they stabbed them (Ō + XIXILIOA + -queh)
closed_class_word('ōyāqueh', irregular_verb).  % they went (ō + yāqueh)
closed_class_word('ozacohqueh', irregular_verb).  % they were barricaded
closed_class_word('ōzacohqueh', irregular_verb).  % preterit passive -h and plural -queh.
closed_class_word('ōztoc', locative).  % in a cave (ŌZTŌ-TL + -c; K ŌZTŌ-TL)
closed_class_word('pa', locative).  % toward (suffix -pa; hyphenation artifact in ch. 29)
closed_class_word('pachiuhtiuh', irregular_verb).  % the weapons clashed
closed_class_word('pánfilo', noun).  % Pánfilo (personal name)
closed_class_word('pani', adverb).  % above (K PANI)
closed_class_word('pani', locative).  % below, underneath (K PANI)
closed_class_word('papachiuhtihuetzi', irregular_verb).  % it sank
closed_class_word('patito', irregular_verb).  % they went to fetch (water)
closed_class_word('patlāhuac', adjective).  % wide (K PATLĀHUAC)
closed_class_word('pedro', noun).  % Pedro (Sp. personal name)
closed_class_word('pehual', noun).  % beginning
closed_class_word('pehualtih', irregular_verb).  % they began (PĒHUALTIA, h-less pret.)
closed_class_word('pepechiuhqui', noun).  % that which covers
closed_class_word('pepechtic', adjective).  % covered, spread over
closed_class_word('pepenaloqueh', irregular_verb).  % they were chosen (PEHPEN(A) passive + -queh)
closed_class_word('pepepetlacatihuitz', irregular_verb).  % it came shining brightly
closed_class_word('pepetlacayihuitzeh', irregular_verb).  % they came gleaming (PEPETLACA + -yi-huitzeh)
closed_class_word('pepetlalo', irregular_verb).  % redup. passive 'heads were stroked'
closed_class_word('pepetlauhtihuitz', irregular_verb).  % it came shining
closed_class_word('petlacalco', locative).  % in the storehouse (PETLACAL-LI + -co)
closed_class_word('petlanqui', irregular_verb).  % it shone (PETLĀNQUI)
closed_class_word('petlauhtzin', noun).  % Petlauhtzin (personal name)
closed_class_word('petzcauhtimoquetz', irregular_verb).  % he slipped (PETZCAHUI + mo-QUETZA)
closed_class_word('pilcatia', irregular_verb).  % it hangs (PILCA + -ti-ca)
closed_class_word('pipilcac', irregular_verb).  % they were hanging (reduplicated PILCAC)
closed_class_word('pipilcatihuitz', irregular_verb).  % he comes panting (PIPILCA + -ti-huitz)
closed_class_word('pipilhui', irregular_verb).  % they ... (analysis uncertain)
closed_class_word('pīpixāhuhticaca', irregular_verb).  % it was drizzling
closed_class_word('pīpixāhuhtiuh', irregular_verb).  % it went drizzling
closed_class_word('pīpixāuhticaca', adjective).  % glistening, drizzling (PĪPIXĀHUA + -ti-caca)
closed_class_word('pōctica', adverb).  % with smoke; pōc-tli + -tica (cf. acaltica), K PŌC-TLI
closed_class_word('poctlehuatoc', irregular_verb).  % it was smoking (POCTLI + EHUA + -TOC)
closed_class_word('polacqueh', irregular_verb).  % they sank
closed_class_word('popolacqueh', irregular_verb).  % they were drowned
closed_class_word('popolhuihuito', irregular_verb).  % it disappeared there
closed_class_word('popolochcopa', adverb).  % in a babbling manner (POPOLOCA + -COPA)
closed_class_word('que', particle).  % that (Sp. que)
closed_class_word('quē', pronoun).  % what? (K QUĒ)
closed_class_word('quēmmā', adverb).  % whenever (K QUĒMMAN variant)
closed_class_word('quēmmantzin', adverb).  % sometimes
closed_class_word('quen', adverb).  % how? (K QUĒN)
closed_class_word('quēn', adverb).  % how (K QUĒN)
closed_class_word('quenami', adverb).  % what is he like? (K QUĒNAM(I))
closed_class_word('quenami', particle).  % like, as (K QUENAMI)
closed_class_word('quenamican', adverb).  % at some time (K QUĒNMAN)
closed_class_word('quenamiqueh', pronoun).  % what are they like? (K QUENAMIH, pl. QUENAMIHQUEH)
closed_class_word('quene', particle).  % as if, like (K QUENE)
closed_class_word('queneh', particle).  % indeed, as is said (K QUĒN + -EH)
closed_class_word('quenin', adverb).  % how? in what manner?
closed_class_word('quēniuhqui', adverb).  % how
closed_class_word('quenman', adverb).  % when (K QUENMAN)
closed_class_word('quēnman', adverb).  % when (K QUĒNMAN)
closed_class_word('quēnmanian', adverb).  % sometimes (K QUĒNMANIAN)
closed_class_word('quēnmaniyān', adverb).  % sometimes (K QUĒNMANIYĀN)
closed_class_word('Quennel', adverb).  % what can be done? (K QUENNEL)
closed_class_word('queoa', irregular_verb).  % lift up, raise; variant of CUEHUA / QUETZA
closed_class_word('quepantin', numeral).  % third (file); no K headword
closed_class_word('quequetzal', noun).  % plumes; see noun stem
closed_class_word('quetzalpaniotiuh', irregular_verb).  % going with a quetzal banner (quetzal- + -tiuh)
closed_class_word('quetzaltenzouhtiuh', irregular_verb).  % going with quetzal-rimmed edge (quetzal- + -tiuh)
closed_class_word('quexquich', pronoun).  % how much (K QUĒXQUICH)
closed_class_word('quexquichtin', pronoun).  % how many (pl.) (K QUEXQUICHTIN)
closed_class_word('quezpan', adverb).  % next, following; K QUEZPAN
closed_class_word('quezqui', adverb).  % how many
closed_class_word('quezquin', pronoun).  % how many (K QUEZQUIN)
closed_class_word('quezzo', adverb).  % how is it that? (FC; K QUEZZO)
closed_class_word('quia', irregular_verb).  % they drank it; preterit of I 'drink' (K I)
closed_class_word('quiāpapachiuh', irregular_verb).  % it covered it (ĀPAPACHOA)
closed_class_word('quiātēquiaya', irregular_verb).  % it was pouring it (ĀTĒQUIA)
closed_class_word('quic', particle).  % ever (aoc quic)
closed_class_word('quicāuhtiquizqueh', irregular_verb).  % they left it and went out
closed_class_word('quicehualcaltiqueh', irregular_verb).  % they ... (C- + EHUA + -lcal-ti-queh)
closed_class_word('quicemitoque', irregular_verb).  % they decided
closed_class_word('quicenmantiquizqueh', irregular_verb).  % they will keep it whole (CEM- + MANI + QUIZA)
closed_class_word('quicētlāz', irregular_verb).  % he sent them all
closed_class_word('quichimaltopehua', irregular_verb).  % they pushed aside with shields
closed_class_word('quichixtoqueh', irregular_verb).  % they are waiting for him (CHIYA + -toc-queh)
closed_class_word('quicocoyōniqueh', irregular_verb).  % they pierced them
closed_class_word('quicualittaque', irregular_verb).  % they liked them (QUI-CUALITTA-QUE)
closed_class_word('quīcuep', irregular_verb).  % he turned it (QU-Ī-CUEP)
closed_class_word('quicuique', irregular_verb).  % they took them
closed_class_word('quihualanqueh', irregular_verb).  % they came angry (CUALĀN(I) + -queh)
closed_class_word('quihualcaquitiaia', irregular_verb).  % he reported it to him (QUI- + HUĀL- + CAQUITIA imperfect, y written i twice)
closed_class_word('quihualhui', irregular_verb).  % he came (QU- + I- + HUĀL- + HUI)
closed_class_word('quihualhuīcatic', irregular_verb).  % he came bringing it (opaque)
closed_class_word('quihualixti', irregular_verb).  % he brought it out (huāl- + IXTIA?)
closed_class_word('quihuālixti', irregular_verb).  % he came out to meet them (QU-I- + HUĀL- + IXTI)
closed_class_word('Quihuālīxtia', irregular_verb).  % he brings them out
closed_class_word('quihualiyāhuallali', irregular_verb).  % he set it out here? (huāl- + IYĀHUAL-LALIA)
closed_class_word('quihuallāz', irregular_verb).  % he came and threw it (QU-I-HUĀL-LĀZ)
closed_class_word('quihualma', irregular_verb).  % he came to take it (qui-hual-MĀ)
closed_class_word('quihuālma', irregular_verb).  % qui-HUĀL-MĀ 'he came to take it'
closed_class_word('quihualmācaya', irregular_verb).  % he was giving it to him (huāl- + MACA + -ya)
closed_class_word('quihualmāyāuhque', irregular_verb).  % they threw him on his back
closed_class_word('quihuālmāyāuhque', irregular_verb).  % they came with their hands (QU-I- + HUĀL- + MĀYĀHUA, pret. plural)
closed_class_word('quihualmelāuhqueh', irregular_verb).  % they went straight (QUI- + HUĀL- + MELĀHU(A) + -queh)
closed_class_word('quihualmetzhui', irregular_verb).  % he came to ... them (opaque)
closed_class_word('quihualmottiliqueh', irregular_verb).  % they came to see it
closed_class_word('quihuālmottiliqueh', irregular_verb).  % they came to see it (QU-I- + HUĀL- + MO- + ITTA, pret. plural)
closed_class_word('quihualnapalotiquizqueh', irregular_verb).  % they came to take him in their arms
closed_class_word('quihualnelhuihuitiaqueh', irregular_verb).  % they came poling it
closed_class_word('quihualquitzquitiaqueh', irregular_verb).  % they came raising them
closed_class_word('quihualtamachiuh', irregular_verb).  % he came to measure it (huāl- + TAMACHIUA)
closed_class_word('quihuāltlazazquia', irregular_verb).  % he would hurl them
closed_class_word('quihualtotocatiquizqueh', irregular_verb).  % they will come following
closed_class_word('quihualtzineuhque', irregular_verb).  % they unhorsed him
closed_class_word('quihualyacatitihui', irregular_verb).  % he comes leading them
closed_class_word('quihuīcatiāque', irregular_verb).  % they had him taken
closed_class_word('quihuīcatiaqueh', irregular_verb).  % they went carrying it
closed_class_word('quihuīcatiuitzeh', irregular_verb).  % they come bringing him (HUĪCA + ti + huitzeh)
closed_class_word('quihuilanah', irregular_verb).  % they dragged it hither
closed_class_word('quiixcatzitztihuitzeh', irregular_verb).  % they aimed them (crossbows)
closed_class_word('quil', irregular_verb).  % he said to them (qu-ilhui; suppletive ILHUIĀ)
closed_class_word('quil', particle).  % they say (K QUIL)
closed_class_word('quilhuico', irregular_verb).  % they came to tell him
closed_class_word('quilhuiquīxtiliaia', irregular_verb).  % they were announcing it to him (ILHUI + QUĪXTILIA)
closed_class_word('quilmach', particle).  % it is said that (K QUILMACH)
closed_class_word('quima', irregular_verb).  % he thought/believed (FC spelling of quimati; cf. ch.3 notes)
closed_class_word('quimaantihui', irregular_verb).  % they went taking/capturing them
closed_class_word('quimacuilito', irregular_verb).  % he took it from his hands
closed_class_word('quimahxitito', irregular_verb).  % he went to reach them (opaque)
closed_class_word('quimamanticatca', irregular_verb).  % he was carrying him (MAMA + -ti-ca-tca)
closed_class_word('quimantihui', irregular_verb).  % he goes taking them (MAMA + -ti-hui)
closed_class_word('quimaquixtiqueh', irregular_verb).  % they removed them (QUIM- + A- + QUĪXTI + -QUEH)
closed_class_word('quimatataquilia', irregular_verb).  % he gave them drink (QU-I-M-ĀTIA?)
closed_class_word('quimāyāhuhtihui', irregular_verb).  % he goes fighting them
closed_class_word('quimāyāhuīto', irregular_verb).  % he went to fight it
closed_class_word('quimeltetequi', irregular_verb).  % he cut open their chests
closed_class_word('quimhuihuīcatze', irregular_verb).  % he came singing to them (opaque)
closed_class_word('quimicahuaztihui', irregular_verb).  % he went pushing them (ICAHUAZ + -TI-HUI)
closed_class_word('quimicaoaztihui', irregular_verb).  % they went shouting at them
closed_class_word('quimilhuihi', irregular_verb).  % they wrapped their bodies (QUIMILHUIĀ, attested form)
closed_class_word('quimimachitiqueh', irregular_verb).  % they did not recognize him
closed_class_word('quimimachititi', irregular_verb).  % he made them known (QUIM- + MACHITITI)
closed_class_word('quimittihui', irregular_verb).  % they went along seeing him
closed_class_word('quimixnāmictihuitz', irregular_verb).  % he comes to meet them
closed_class_word('quimnictiqueh', irregular_verb).  % they killed them
closed_class_word('quimocaltechpachoto', irregular_verb).  % he went to ... at his house (opaque)
closed_class_word('quimocaquiti', irregular_verb).  % he understood it (QUIM- + MO- + CAQUI + -ti)
closed_class_word('quimocaquitin', irregular_verb).  % may they hear it (CAQU(I) admonitive)
closed_class_word('quimocaquiz', irregular_verb).  % he will hear it (QU-I-MOCAQUI-Z)
closed_class_word('quimōciauhcahuato', irregular_verb).  % he went to ... (analysis uncertain)
closed_class_word('quimocnotlatlauhtilia', irregular_verb).  % they pray to him humbly
closed_class_word('quimocuētiqueh', irregular_verb).  % they dressed them (QUIM- + MO- + CUĒTIĀ + -queh)
closed_class_word('quimohualnāmiqui', irregular_verb).  % he came to meet him (opaque)
closed_class_word('Quimōhuīcanato', irregular_verb).  % they went to guide them hither (QUIM- + Ō- + HUĪCA + -to)
closed_class_word('quimohuipiltiqueh', irregular_verb).  % they put shirts on them
closed_class_word('quimolhuiltocaqueh', irregular_verb).  % they went saying it to one another
closed_class_word('quimololhuītihui', irregular_verb).  % he goes rolling them
closed_class_word('quimololotica', irregular_verb).  % it lies rolled up (MOLOLOA + -ti-ca)
closed_class_word('quimolpilitica', irregular_verb).  % they kept tying them (QUIM- + OLPILIA + -ti-ca)
closed_class_word('quimomachitocaca', irregular_verb).  % quim-o-machi-toc-ca 'they were thinking'
closed_class_word('quimomamaltia', irregular_verb).  % he takes him captive
closed_class_word('quimomomacato', irregular_verb).  % they went to give themselves (QUIM- + MO- + MACA + -to)
closed_class_word('quimonaaquique', irregular_verb).  % they put [the garments] on them (opaque)
closed_class_word('quimonāmictito', irregular_verb).  % they went to meet them
closed_class_word('quimoncaoato', irregular_verb).  % they went to leave them; CAHUA compound
closed_class_word('quimoncuitlachīhuito', irregular_verb).  % he went to see them
closed_class_word('quimonitztica', irregular_verb).  % he was looking out at them
closed_class_word('quimonitzticac', irregular_verb).  % he was watching them (opaque)
closed_class_word('quimonitztocque', irregular_verb).  % they were watching them (QUIM- + ON- + ITZTOC + -queh)
closed_class_word('quimonixicaoato', irregular_verb).  % they went to await them; no K headword
closed_class_word('quimonmonāmictico', irregular_verb).  % they came to contend with them
closed_class_word('quimōnnahuatiqueh', irregular_verb).  % he gave them orders
closed_class_word('quimontemohuiqueh', irregular_verb).  % they looked for them
closed_class_word('quimontepēhuato', irregular_verb).  % he went to push them down (opaque)
closed_class_word('quimontepotzcaoato', irregular_verb).  % they went following them; TEPOTZCAHUA
closed_class_word('quimontlahtlāzacoh', irregular_verb).  % they cast him down
closed_class_word('quimontlahtōlehuito', irregular_verb).  % he went to speak to them
closed_class_word('quimooxquiaiā', irregular_verb).  % he ... them (analysis uncertain)
closed_class_word('quimoquechilitihui', irregular_verb).  % they went arranging them
closed_class_word('quimotechtia', irregular_verb).  % he treats him
closed_class_word('quimotequilitihui', irregular_verb).  % they went following them
closed_class_word('quimotetzahui', irregular_verb).  % they took it as an omen
closed_class_word('quimotlaqueh', irregular_verb).  % they fired at them
closed_class_word('quimotlaxilitihui', irregular_verb).  % they went serving them
closed_class_word('quimotocti', irregular_verb).  % he went to bury him (opaque)
closed_class_word('quimotoctitimanca', irregular_verb).  % they were taking shelter
closed_class_word('quimototoctiticaca', irregular_verb).  % they were pursuing them
closed_class_word('quimototoctitimani', irregular_verb).  % he goes along following him
closed_class_word('quimotoxahuato', irregular_verb).  % he went to scatter them into the water (QUIM- + TOXĀHUA + -to)
closed_class_word('quimotquiliqueh', irregular_verb).  % they carried it (QUIM- + MO- + ITQUI + -li-queh)
closed_class_word('quimottilia', irregular_verb).  % they inspected them
closed_class_word('quimottiliqueh', irregular_verb).  % they saw him (QU-IM-ITTILI + -queh)
closed_class_word('quimōttitia', irregular_verb).  % they showed them (QUIM- + Ō- + ITTITIA)
closed_class_word('quimoyohuitihui', irregular_verb).  % they went along fleeing from him
closed_class_word('quimpetla', irregular_verb).  % he ... them (opaque)
closed_class_word('quimploaia', irregular_verb).  % he was ... (opaque)
closed_class_word('quimploaya', irregular_verb).  % he was counting them (QUIM- + PŌHUA, imperfect)
closed_class_word('quinamuxque', irregular_verb).  % they surrendered
closed_class_word('quinanquilizquia', irregular_verb).  % he would answer them
closed_class_word('quincacacahuatiuh', irregular_verb).  % he goes along shouting at them
closed_class_word('quincalaquito', irregular_verb).  % they went to put them inside; CALAQUI compound
closed_class_word('quincaltechpachoto', irregular_verb).  % he forced them to the wall
closed_class_word('quincamāicuilōqueh', irregular_verb).  % they ... them (CAMĀICUI)
closed_class_word('quincamatlatiqueh', irregular_verb).  % they informed them (CAMATLATI)
closed_class_word('quinchi', pronoun).  % them (FC variant of quim-)
closed_class_word('quincotonazquia', irregular_verb).  % he would cut them up
closed_class_word('quincuacuauhzoh', irregular_verb).  % he ... their heads (CUĀCUAUH + -zoh)
closed_class_word('quincuitlapanhuītihui', irregular_verb).  % they went ... (opaque)
closed_class_word('quincuitlazo', irregular_verb).  % he stabbed them in the intestines (opaque)
closed_class_word('quinenechicoaia', irregular_verb).  % they gathered them (NECHICOĀ)
closed_class_word('quinhualitztoqueh', irregular_verb).  % they are watching them
closed_class_word('quinhuālitztoqueh', irregular_verb).  % they came to watch them (QU-IM- + HUĀL- + ITZTOQUEH)
closed_class_word('quinhuallalochtocaqueh', irregular_verb).  % they came chasing them
closed_class_word('quinhuāllalochtocaqueh', irregular_verb).  % they came running after them (QU-IM- + HUĀL- + LALOCHTOCA, pret. plural)
closed_class_word('quinhualmochiyaltique', irregular_verb).  % they waited for them (CHIYALIA)
closed_class_word('quinhualnotzāya', irregular_verb).  % he was summoning them
closed_class_word('quinhuehcapahuitihui', irregular_verb).  % they went along mocking them
closed_class_word('quiniacantihuitzeh', irregular_verb).  % they came leading them (YACANA + -ti-huitzeh)
closed_class_word('quiniyacacotonazqueh', irregular_verb).  % they would cut them off
closed_class_word('quiniyacanaia', irregular_verb).  % he was guiding them
closed_class_word('quiniyacantihuitz', irregular_verb).  % he came leading them
closed_class_word('quiniyacatzacuilico', irregular_verb).  % he came to cut them off
closed_class_word('quiniyacatzacuilito', irregular_verb).  % he went to shut them in front
closed_class_word('quiniyacatzacuilizquia', irregular_verb).  % they wanted to intercept them (YACATZACUA)
closed_class_word('quinma', irregular_verb).  % he thought them: quim- + irregular pret. MAH of MAT(I), h lost
closed_class_word('quinminatihui', irregular_verb).  % they went shooting them (MINA + -ti + HUI)
closed_class_word('quinminti', irregular_verb).  % they killed them (variant of MICTIA)
closed_class_word('quinmochielti', irregular_verb).  % quim-mo-chielti 'he awaited them'
closed_class_word('quinmomacaz', irregular_verb).  % he will give himself to them
closed_class_word('quinmopachihuaya', irregular_verb).  % he hid himself from them
closed_class_word('quinmottitizqueh', irregular_verb).  % they would show them
closed_class_word('quinnachcapahuitihui', irregular_verb).  % they went along greeting them
closed_class_word('quinnamictiuh', irregular_verb).  % he went to meet them
closed_class_word('quinnamiquico', irregular_verb).  % they came to meet them
closed_class_word('quinnamoxqueh', irregular_verb).  % they surrendered to them
closed_class_word('quinnāmoyezqueh', irregular_verb).  % they would plunder them
closed_class_word('quinneinailiznequia', irregular_verb).  % quim-neinaili-z-nequi-a 'he wanted to hide from them'
closed_class_word('quinnemītiqueh', irregular_verb).  % they went on living?; uncertain
closed_class_word('quinnenotzallani', irregular_verb).  % he had them summoned ( not segmentable with the current grammar)
closed_class_word('quinnixcāhuāya', irregular_verb).  % he was not letting him out of sight
closed_class_word('quinnonōtz', irregular_verb).  % he called them (QUIN- + NŌNOTZA, pret. without h)
closed_class_word('quinohualhuīcaqueh', irregular_verb).  % they came bringing them (QUIM- + ON- + HUĀL- + HUĪCA + -queh)
closed_class_word('quinōhuālhuīcaqueh', irregular_verb).  % then they brought them hither (QUIM- + Ō- + HUĀL- + HUĪCA, pret.)
closed_class_word('quinohualiacantiaqueh', irregular_verb).  % they came leading them hither (YACANTIA)
closed_class_word('quinohuālilhui', irregular_verb).  % he answered him
closed_class_word('quinohuālnanquili', irregular_verb).  % he answered him
closed_class_word('quinonotzaco', irregular_verb).  % he came to speak with him
closed_class_word('quinpaccaceliqueh', irregular_verb).  % they received them gladly
closed_class_word('quinpepetlauhqueh', irregular_verb).  % they shone before them
closed_class_word('quinpetlaqueh', irregular_verb).  % they broke through them
closed_class_word('quinpetztoccauhqueh', irregular_verb).  % they lay smooth before them
closed_class_word('quinpoyomictizquia', irregular_verb).  % they would kill them by stealth
closed_class_word('quinsozohqueh', irregular_verb).  % they wounded them (SOZOHUA)
closed_class_word('quinteimachitia', irregular_verb).  % they warned them
closed_class_word('quintemolia', irregular_verb).  % he looked for them for him
closed_class_word('quintēnicuilōqueh', irregular_verb).  % they ... them by the mouth
closed_class_word('quinteōcalhuiqueh', irregular_verb).  % entered whole (cf. the parser's teohcalhuia entry).
closed_class_word('quinteohcalhuiqueh', irregular_verb).  % they cast them down
closed_class_word('quintepachotihui', irregular_verb).  % he goes pressing them down
closed_class_word('quintepēhuaco', irregular_verb).  % he came to drive them out
closed_class_word('quintepēhuitihuitze', irregular_verb).  % they came pushing them down (opaque)
closed_class_word('quintepotzhuītihui', irregular_verb).  % they go following behind them
closed_class_word('quintētenqueh', irregular_verb).  % they stoned them
closed_class_word('quintetlāzalti', irregular_verb).  % he made them let people go
closed_class_word('quinteuh', irregular_verb).  % he took them for gods: quim- + TĒUH
closed_class_word('quintlacomotlāzqueh', irregular_verb).  % they threw themselves into their midst
closed_class_word('quintlacuicuiliqueh', irregular_verb).  % they painted them
closed_class_word('quintlāieltiaya', irregular_verb).  % they ... them (TLĀĒLTIA)
closed_class_word('quintlaixtlatitihui', irregular_verb).  % they went pointing out the way to them
closed_class_word('quintlaixtlatizque', irregular_verb).  % they will pay them (quim + tla + IXTLATIA)
closed_class_word('quintlaīyecālhuītiuh', irregular_verb).  % they went preparing them (opaque)
closed_class_word('quintlamahuizzōltizqueh', irregular_verb).  % they will honor them (quim + tla + MAHUIZZŌLTIA)
closed_class_word('quintlanamaquiltito', irregular_verb).  % they went to sell to them
closed_class_word('quintlatepehuiliqueh', irregular_verb).  % they shoved them
closed_class_word('quintlattitizque', irregular_verb).  % they will show them (quim + tla + ITTITIA)
closed_class_word('quintololti', irregular_verb).  % they forced something down
closed_class_word('quinxīxīltihui', irregular_verb).  % they went lancing them
closed_class_word('quinxopiloa', irregular_verb).  % they surround them (XOPILOĀ)
closed_class_word('quinyacantiuh', irregular_verb).  % he went along leading them
closed_class_word('quinzazacaqueh', irregular_verb).  % they opened their mouths at them
closed_class_word('quipehualtia', irregular_verb).  % he began it
closed_class_word('quipozōnalti', irregular_verb).  % it made it seethe (POZŌNALTI)
closed_class_word('quiquechpanoa', irregular_verb).  % he surpassed them (QUECH-PANOA)
closed_class_word('quiquequechotihuitze', irregular_verb).  % they came shouldering them
closed_class_word('quiquinacatiuh', irregular_verb).  % it went whining
closed_class_word('quiquiztiuh', irregular_verb).  % it went whistling
closed_class_word('quitehuilacachoa', irregular_verb).  % he was winding it
closed_class_word('quiteimachitia', irregular_verb).  % he made them recognized
closed_class_word('quiteimachitiqueh', irregular_verb).  % they thought something of it
closed_class_word('quiteneuhtihui', irregular_verb).  % he goes mentioning him (TĒNĒHU(A) + ti + hui)
closed_class_word('quitepēhuitiuh', irregular_verb).  % he went along shoving him
closed_class_word('quitepozmihuiqueh', irregular_verb).  % they hit him with an iron bolt
closed_class_word('quitepozmihuizqueh', irregular_verb).  % they will shoot them with iron (opaque)
closed_class_word('quitetetzontlāliaia', irregular_verb).  % he was setting them down one by one
closed_class_word('quitetetzontlāliaya', irregular_verb).  % he was setting them down one by one, imperfect
closed_class_word('quitlacamatia', irregular_verb).  % he obeyed him
closed_class_word('quītlachihuizquia', irregular_verb).  % he would cast a spell on him
closed_class_word('quitlacualanilia', irregular_verb).  % he fed them (opaque)
closed_class_word('quitlahtlaztihui', irregular_verb).  % they went firing
closed_class_word('quitlalilitihuetzqueh', irregular_verb).  % they quickly set it up
closed_class_word('quitlalmomuztica', irregular_verb).  % he had made a platform
closed_class_word('quitlamatilih', irregular_verb).  % they went knowing/learning things
closed_class_word('quitlamatilitihuitze', irregular_verb).  % they came to inform him (opaque)
closed_class_word('quitlanelhuihuitihuitze', irregular_verb).  % they came poling it
closed_class_word('quitlatemolitinemi', irregular_verb).  % he went searching
closed_class_word('quitlatito', irregular_verb).  % took him to be burned (qui-tlati-to)
closed_class_word('quitlātlapana', irregular_verb).  % he broke it apart
closed_class_word('quitlāxiliqueh', irregular_verb).  % they shot an iron bolt into him
closed_class_word('quitlayeyecalhuia', irregular_verb).  % he prepared things (qui- + tla- + YĒCALHUIA); double object prefix not parsed
closed_class_word('quitlecahuica', irregular_verb).  % they had climbed it
closed_class_word('quitlequiquizhuizqueh', irregular_verb).  % they will shoot them with firearms (opaque)
closed_class_word('quitocatoqueh', irregular_verb).  % they followed it
closed_class_word('quitollo', irregular_verb).  % he swallowed it
closed_class_word('quittaco', irregular_verb).  % they came to see it
closed_class_word('quittaque', irregular_verb).  % they saw it
closed_class_word('quittitito', irregular_verb).  % he went to see it
closed_class_word('quitzacqui', irregular_verb).  % he closes it
closed_class_word('quitzcactihui', irregular_verb).  % they went closing/guarding
closed_class_word('quitzhtiani', irregular_verb).  % he ... (FC; analysis uncertain)
closed_class_word('quitzinquixtiqueh', irregular_verb).  % they removed them completely
closed_class_word('quitzitzitzquitiuh', irregular_verb).  % they went along gripping him
closed_class_word('quitzītzquique', irregular_verb).  % they seized him
closed_class_word('quixacualotinenque', irregular_verb).  % they went about scratching
closed_class_word('quixaxantecaque', irregular_verb).  % they cut it into bricks
closed_class_word('quixcahuītica', irregular_verb).  % he kept leaving them (IXCAHUIA + -ti-ca)
closed_class_word('quixcatzitta', irregular_verb).  % he aimed it well
closed_class_word('quīxhuah', irregular_verb).  % they came out (QUĪZA + -hua)
closed_class_word('quixiccahuayah', irregular_verb).  % they ... (opaque)
closed_class_word('quixilico', irregular_verb).  % they lanced him (QUI-XILI-CO)
closed_class_word('quixiliz', irregular_verb).  % to spear it
closed_class_word('quixinque', irregular_verb).  % they took them
closed_class_word('quixpixtinenca', irregular_verb).  % he kept watch over him
closed_class_word('quiyacatia', irregular_verb).  % it goes ahead
closed_class_word('quiyāhuālō', irregular_verb).  % it goes around them
closed_class_word('quiyāhuālotoc', irregular_verb).  % it went around them
closed_class_word('quīzaco', irregular_verb).  % he/they came out hither; quīza-co
closed_class_word('quīzcān', locative).  % from where they came (QUĪZ(A) + -CĀN)
closed_class_word('quīzoticac', irregular_verb).  % it was coming out
closed_class_word('quizozohqueh', irregular_verb).  % they ... (analysis uncertain)
closed_class_word('san', noun).  % San (Spanish saint)
closed_class_word('santa', noun).  % Santa (Sp. loan; Santa Ana)
closed_class_word('tā', pronoun).  % you (sg)
closed_class_word('taxti', irregular_verb).  % to do wrong (FC taxti)
closed_class_word('te', pronoun).  % you (short independent pronoun)
closed_class_word('teachto', noun).  % you are the first (te- + ACHTO)
closed_class_word('teahualti', noun).  % amusement (te- + AHUALTI)
closed_class_word('teca', relational).  % with respect to people
closed_class_word('tecentlatalhui', irregular_verb).  % we all gathered (opaque)
closed_class_word('tēcentlatalhuiqueh', irregular_verb).  % they all gathered (opaque)
closed_class_word('techcaltechpachotihui', irregular_verb).  % they pushed us against the wall
closed_class_word('techhualcaltechpachotiaqueh', irregular_verb).  % they came to shut us in the houses
closed_class_word('techhuālcaltechpachotiaqueh', irregular_verb).  % they came pressing us against the houses (TĒCH- + HUĀL- + CALTECH-PACHOTIA)
closed_class_word('techmocahuilitiquīza', irregular_verb).  % he will leave us (TECH- + MO- + CAHUILITI + -QUĪZA)
closed_class_word('techmocahuilitiquīzaz', irregular_verb).  % he will leave us (future)
closed_class_word('techololaliqueh', irregular_verb).  % they rolled us
closed_class_word('techololhuīqueh', irregular_verb).  % they surrounded us
closed_class_word('techoquiztlapalolo', irregular_verb).  % tē- + chōquiz-tlapalō-lō
closed_class_word('techxocotihui', irregular_verb).  % they went along throwing us back
closed_class_word('techyāōalōqueh', irregular_verb).  % they surrounded us
closed_class_word('techyāōalōtoc', irregular_verb).  % they were surrounding us
closed_class_word('techyāōhuālotinemi', irregular_verb).  % they go along making war on us
closed_class_word('tecpantihuitzeh', irregular_verb).  % they came in formation
closed_class_word('tecpichauhtoc', adjective).  % assembled close together
closed_class_word('tecque', irregular_verb).  % they were (perfective plural of CAH)
closed_class_word('tecuecuentla', irregular_verb).  % they laughed at people
closed_class_word('teehuitiloz', irregular_verb).  % he will be punished (TĒ- + EHUITIA nonact. + -z)
closed_class_word('teellacuaoalo', irregular_verb).  % tē- + ellacuahualo
closed_class_word('tehhua', pronoun).  % you (sg)
closed_class_word('tehhuāntin', pronoun).  % we (K TEHHUĀNTIN)
closed_class_word('tehhuātl', pronoun).  % you (sg)
closed_class_word('tehhuātzin', pronoun).  % you (sg, honorific)
closed_class_word('tehuān', pronoun).  % we (K TEHUĀN)
closed_class_word('tehuātl', pronoun).  % you (sg.) (K TEHHUĀTL, h-less variant)
closed_class_word('tehuēhcapahuitimanca', irregular_verb).  % they kept dealing from afar
closed_class_word('tehuehuelli', noun).  % Tehuehuelli, name of a shield design; no K headword
closed_class_word('tehuic', relational).  % toward people
closed_class_word('tēhuic', locative).  % into someone's hands
closed_class_word('tehuihuilanō', irregular_verb).  % they were dragged out
closed_class_word('tēhuīhuīlano', irregular_verb).  % people are ... (analysis uncertain)
closed_class_word('tehuihuiteco', irregular_verb).  % people were beaten (TĒ- + redup. HUĪTEQU(I))
closed_class_word('tēhuihuiteque', irregular_verb).  % they struck people (perfective -c + -que written -que)
closed_class_word('tehuīhuītequi', irregular_verb).  % they struck people
closed_class_word('tehuilacachtic', adjective).  % twisted, cracked (FC descriptive)
closed_class_word('tēhuīpano', irregular_verb).  % people pass by (TĒ- + HUĪPANO)
closed_class_word('tēhuīpanolo', irregular_verb).  % people are passed by (nonact.)
closed_class_word('tehuītihualco', irregular_verb).  % where they were sent (opaque)
closed_class_word('teipantiliqueh', irregular_verb).  % they hit their target
closed_class_word('tēīxāyōhuītōn', irregular_verb).  % tears flowed down
closed_class_word('teīximacho', irregular_verb).  % people were identified
closed_class_word('tēiximacho', irregular_verb).  % people were identified (TĒ- + IXIMACHO)
closed_class_word('tel', particle).  % but, however (K TĒL)
closed_class_word('telpopochtequioaque', irregular_verb).  % the youths served
closed_class_word('telpuchiaque', irregular_verb).  % they were youths (TELPOCH-TLI + -ya-queh)
closed_class_word('tēmac', locative).  % in someone's hand (tē- + -mac)
closed_class_word('tēmamatihuitzeh', irregular_verb).  % they came carrying people
closed_class_word('temamauhti', adjective).  % frightening (K TEMAUHTIH)
closed_class_word('tematitlampa', adverb).  % at people's hands; mā-titlan-pa
closed_class_word('tematitlampa', locative).  % beyond the wall (TEMA-TLI + -tla + -mpa)
closed_class_word('temictilo', irregular_verb).  % people were killed (TĒ- + MICTIA passive)
closed_class_word('tēmictizquia', irregular_verb).  % he was going to kill people (TĒ- + MICTIA + -zquia)
closed_class_word('temilotzin', noun).  % Temilotzin (personal name)
closed_class_word('tēmōlō', irregular_verb).  % nonact. TEMOA (K TĒMŌLŌ) 'inquiries were made'
closed_class_word('tēmotihuitzeh', irregular_verb).  % tē-mo-ti-huitzeh 'they came asking about him'
closed_class_word('tenāmiquito', irregular_verb).  % they went to meet people
closed_class_word('tenāmoielo', irregular_verb).  % there is plundering
closed_class_word('tēnamoya', irregular_verb).  % people were being captured (TĒ- + NAMOIA, imperfect)
closed_class_word('tenāmoyelō', irregular_verb).  % people were plundered
closed_class_word('tenayocatetl', noun).  % opaque stone object
closed_class_word('tēnemachpan', adverb).  % without anyone's knowledge (TĒ- + NĒMACH + -pan)
closed_class_word('tenhuihuīlaxpopul', adjective).  % with dragging jowls (tēn- + huihuīlax + popul); no K headword
closed_class_word('tenimeh', noun).  % the Tenime (name of a group); no K headword
closed_class_word('tenochcaē', noun).  % O Tenochca!
closed_class_word('tenōtzalo', irregular_verb).  % people were summoned (TĒ- + NŌTZA passive)
closed_class_word('tentiuh', irregular_verb).  % it went ... (opaque)
closed_class_word('teōcuitlatica', adverb).  % with gold (TEŌCUITL(A)-TL + -TICA)
closed_class_word('teōtlacpa', locative).  % in the temple quarter (teō- + tlacpa)
closed_class_word('tepac', noun).  % pleasure (te-pac)
closed_class_word('tepallamani', adjective).  % proud?; no K headword
closed_class_word('tepān', locative).  % on people
closed_class_word('tepanixqueh', irregular_verb).  % they met
closed_class_word('tepēhuhtihuitze', irregular_verb).  % they came scattered
closed_class_word('tepēhuhtihuitzeh', irregular_verb).  % they came conquering (TEPĒHU(A) + -ti-huitzeh)
closed_class_word('tepēhuhtinemi', irregular_verb).  % they went about conquering (TEPĒHU(A) + -ti-nemi)
closed_class_word('tepēhuialo', irregular_verb).  % it is pushed (TEPĒHUI(A) + nonact., as written)
closed_class_word('tepeilhuitlin', locative).  % in Tepeilhuitl (month; Tepeilhuitl + -tin/-tlan)
closed_class_word('tepepetlalo', irregular_verb).  % redup. passive 'heads were stroked'
closed_class_word('tepetliuhquen', adverb).  % like a hill (tepē-tli + iuhquēn); no K headword
closed_class_word('tepeuhtimani', irregular_verb).  % piled together
closed_class_word('Tepeyacacpa', locative).  % toward Tepeyacac
closed_class_word('tepitōtōn', noun).  % small ones (tepi-tōn)
closed_class_word('tepitzin', adverb).  % a little (K TEPITZIN)
closed_class_word('tepuzmācuahuehqueh', noun).  % those with iron swords (tepozmācuauh-eh-queh)
closed_class_word('tepuzmacuauhtica', adverb).  % with iron swords (TEPOZ-MĀCUĀUH + -TICA)
closed_class_word('tepuztlahuitolequeh', noun).  % those with iron crossbows (tepuztlahuitōl-eh-queh)
closed_class_word('tepuztopiltica', adverb).  % with iron lances (TEPOZTOPIL-LI + -TICA)
closed_class_word('tequitlaneloa', irregular_verb).  % to work, toil; no K headword
closed_class_word('tetemman', irregular_verb).  % it was full (te-tēmi-n)
closed_class_word('tetentiuh', irregular_verb).  % they were full (te-tenti-uh); no K headword
closed_class_word('tetentoque', adjective).  % full of people (TETL + TENTOC)
closed_class_word('teteuhquimiliuhqueh', irregular_verb).  % they wrapped them in ashes
closed_class_word('tētic', adjective).  % hard
closed_class_word('tetitech', locative).  % at the edge of the stone (TETL + -TECH)
closed_class_word('tetlan', adverb).  % among people (TĒ + -tlan)
closed_class_word('tētlan', adverb).  % TĒTLAN 'near someone, among people' (long ē; K TĒTLAN).
closed_class_word('tetlantlaano', irregular_verb).  % take the children along (TETLAN + TLAANO; no object prefix in the text)
closed_class_word('tetlatilo', irregular_verb).  % people were burned
closed_class_word('tētlāzaltiaya', irregular_verb).  % they threw people (TĒ- + TLĀZALTIA + -ya)
closed_class_word('tetlepantlāzoia', irregular_verb).  % they were ... (opaque)
closed_class_word('tetlepantlāzoya', irregular_verb).  % they were throwing people into the fire, imperfect
closed_class_word('tetlepantlāzqueh', irregular_verb).  % opaque
closed_class_word('tetlepantlāzqui', irregular_verb).  % opaque
closed_class_word('tētzahtzililo', irregular_verb).  % people were shouted at (TĒ- + TZAHTZILIA passive)
closed_class_word('tetzahuatoc', adjective).  % fearful, afraid (TETZAHUA + -toc)
closed_class_word('tetzammachoc', adjective).  % ominous (tetzāhua + -machoc)
closed_class_word('tetzinpachotiuh', irregular_verb).  % it went crowding behind; no K headword
closed_class_word('tetzotzopitza', irregular_verb).  % they jabbed people
closed_class_word('tetzotzopitzalo', irregular_verb).  % people were pierced; no K headword
closed_class_word('tēucacatzacti', noun).  % those called tēucacatzacti
closed_class_word('teucalhuiaqueh', noun).  % the people of Teucalhuian
closed_class_word('tēuctlamacazcatzin', noun).  % Teuctlamacazcatzin (personal name/title)
closed_class_word('texixili', irregular_verb).  % they jabbed people
closed_class_word('texoacaxilqui', adjective).  % carved from turquoise?; no K headword
closed_class_word('tēyollo', noun).  % people's hearts/minds (TĒ- + YŌLLO-TL)
closed_class_word('tēyōllohcopa', adverb).  % with good will toward people (TĒ- + YŌLLOH- + -copa)
closed_class_word('tēzazaco', irregular_verb).  % they were taken away
closed_class_word('tezazacoh', irregular_verb).  % they barricaded
closed_class_word('tezotlauh', adjective).  % stunning, deafening; no K headword, opaque
closed_class_word('tiācahuān', noun).  % warriors, captains (TIAHCAUH + -huān)
closed_class_word('tiācahuāne', noun).  % O elders (vocative)
closed_class_word('tiācāhuānē', noun).  % O warriors! vocative of tiācāhuān (Andrews 18.11)
closed_class_word('tiacahuāneh', noun).  % O warriors! (pl. + -eh)
closed_class_word('tiacaoan', noun).  % warriors; variant of tiahcahuān (TIAHCAUH)
closed_class_word('tiacaoanē', noun).  % O warriors! (vocative of TIACAOAN)
closed_class_word('tiahcahuānē', noun).  % O warriors! (pl. + -ē)
closed_class_word('tiahcahuē', noun).  % O warriors! (TIYĀCĀHU + voc. -ē)
closed_class_word('tianquizco', locative).  % in the market (tianquiz-tli + -co)
closed_class_word('tiazqueh', irregular_verb).  % we will go (TI-YĀ-Z-QUEH)
closed_class_word('tica', relational).  % by means of it (K -TICA)
closed_class_word('ticah', irregular_verb).  % you are
closed_class_word('ticateh', irregular_verb).  % we are
closed_class_word('ticcentlāzah', irregular_verb).  % we all ... (opaque)
closed_class_word('ticchizqueh', irregular_verb).  % we will wait for him
closed_class_word('ticemolini', irregular_verb).  % we stir it together (TI- + C- + CEM- + OLINI)
closed_class_word('ticēnhuī', irregular_verb).  % we all go (TI- + C- + ĒN-HUĪ)
closed_class_word('ticiuhtihui', irregular_verb).  % we go hurrying
closed_class_word('ticmahuizozqueh', irregular_verb).  % we will see
closed_class_word('ticmomachitiquiuh', irregular_verb).  % you are known (FC)
closed_class_word('tictlecahuizqueh', irregular_verb).  % we will climb
closed_class_word('tictociauhquechilia', irregular_verb).  % we greet you (TIC- + TO- + CIAUHQUECHILIA)
closed_class_word('tictociauhquechilico', irregular_verb).  % we came to greet you ( unclear compound)
closed_class_word('tictolhuilizqueh', irregular_verb).  % we will tell him
closed_class_word('tictomacaticateh', irregular_verb).  % we are resigned
closed_class_word('tictononochilizqueh', irregular_verb).  % we will speak to him
closed_class_word('tictotlapalhuico', irregular_verb).  % we came to greet you (tē- + TLAHPALOĀ + -co)
closed_class_word('tictotlatlauhtilia', irregular_verb).  % we address you (TIC- + TO- + TLAHTLAUHTILIA)
closed_class_word('ticxaxantzacqueh', irregular_verb).  % we shut it completely (TI- + C- + XAXAN- + TZACUA)
closed_class_word('tihuāllatiaqueh', irregular_verb).  % we have come
closed_class_word('tihuih', irregular_verb).  % we go
closed_class_word('tihuitzeh', irregular_verb).  % we come
closed_class_word('tihuiya', irregular_verb).  % we were going (TI + YAUH, imperfect)
closed_class_word('tiiācahuān', noun).  % you are brave (ti- + IĀCAHUĀN)
closed_class_word('tiiācahuāne', noun).  % O captains! (vocative)
closed_class_word('tilāhuaya', irregular_verb).  % it was thickening (TILĀHUA-YA)
closed_class_word('timohuetzitiquiuh', irregular_verb).  % you will fall (FC honorific)
closed_class_word('tiohualmohuicaz', irregular_verb).  % you will come here (ti-ō-hual-mo-HUĪCA-z)
closed_class_word('tiohuālmohuicaz', irregular_verb).  % directional/order prefixes that the prefix rules do not generate.
closed_class_word('tiquinmotitlani', irregular_verb).  % you sent them
closed_class_word('tiquiztlacahuiti', irregular_verb).  % you go lying (TI + QUIZTLACAHUI + TI)
closed_class_word('titehehuan', noun).  % unclear hapax; Lockhart renders 'women with child'
closed_class_word('titenamicoan', irregular_verb).  % we are not their match
closed_class_word('titeucalhuiaqueh', irregular_verb).  % we are of Teucalhuian
closed_class_word('titicuica', irregular_verb).  % it snapped, crackled
closed_class_word('titilacpopul', adjective).  % dense, packed; no K headword
closed_class_word('titilaoac', adjective).  % thick, wide; no K headword (cf. TILĀHUAC)
closed_class_word('tiyacahuané', noun).  % O warriors (ti-yacahuān-ē, é spelling)
closed_class_word('tlaatzopque', irregular_verb).  % they closed off the water
closed_class_word('tlaatzupa', irregular_verb).  % they began filling in
closed_class_word('tlaatzupca', irregular_verb).  % the water was shut off (Ā-TL + ATZUP(A) + -ca)
closed_class_word('tlacacalaca', irregular_verb).  % there was a clattering (TLA- + CACALACA)
closed_class_word('tlacacaxhuia', irregular_verb).  % they used board cages
closed_class_word('tlacahuaca', irregular_verb).  % there was a great clamor
closed_class_word('tlacahuacac', irregular_verb).  % it became broad (TLACAHUACA-C)
closed_class_word('tlacahuacaya', irregular_verb).  % it was becoming broad (TLACAHUACA-YA)
closed_class_word('tlacamo', particle).  % not (TLACAMO)
closed_class_word('tlacaoaca', irregular_verb).  % there is shouting/battle-cry; no K headword
closed_class_word('tlacapan', adverb).  % on land; K TLACAPAN
closed_class_word('tlacatle', noun).  % O lord (TLACATL + voc. -ē)
closed_class_word('tlacēhuilōz', irregular_verb).  % it must be extinguished
closed_class_word('tlacencāhualo', irregular_verb).  % people prepared (TLA- + CENCĀHU(A) passive; nonactive stems cannot take tla- in the parser)
closed_class_word('tlacenmamauhtiaia', irregular_verb).  % they were all afraid (opaque)
closed_class_word('tlachichīhualo', irregular_verb).  % things were made ready (redup. CHĪHUA pass.)
closed_class_word('tlachiyalo', irregular_verb).  % people looked (nonact. TLACHIYA)
closed_class_word('tlachōquiztlehōa', irregular_verb).  % he shouts ... (opaque)
closed_class_word('tlachoquiztlehua', irregular_verb).  % a wail arose
closed_class_word('tlachoquīztlehua', irregular_verb).  % choquīztlehua and the unmacronized tla- form only as a whole word.
closed_class_word('tlachōquiztlehua', irregular_verb).  % a wail arose (CHŌQUIZ-TLI + TLEHUA)
closed_class_word('tlachoquiztlehuah', irregular_verb).  % they wept and wailed
closed_class_word('tlachtacamictilti', irregular_verb).  % people were secretly killed
closed_class_word('tlacica', adverb).  % in the middle (K TLACICA?)
closed_class_word('tlacica', irregular_verb).  % panting, gasping (tla- + CICA 'pant'; no K headword)
closed_class_word('tlacioatlamachtia', irregular_verb).  % no one was like a woman
closed_class_word('tlacochcalcatl', noun).  % Tlacochcalcatl (war title)
closed_class_word('tlacomulco', locative).  % in the hole (TLACO- + MŌL-LI + -CO)
closed_class_word('tlacopepechpan', locative).  % in the middle of the platform (tlaco + pepech + -pan)
closed_class_word('tlacoti', irregular_verb).  % he took the middle?; analysis uncertain
closed_class_word('tlacotzin', noun).  % Tlacotzin (personal name)
closed_class_word('tlacoyocco', locative).  % through holes
closed_class_word('tlacpac', locative).  % above (K TLACPAC)
closed_class_word('tlacualizpan', locative).  % at mealtime
closed_class_word('tlacuauhyohua', irregular_verb).  % it became dark
closed_class_word('tlacuicuihuac', irregular_verb).  % it was swept (TLACUIHCUI, h-less)
closed_class_word('tlacxitemoa', irregular_verb).  % to look for things (variant)
closed_class_word('tlaēcoaia', irregular_verb).  % they were fighting
closed_class_word('tlaēcoaya', irregular_verb).  % they were fighting (TLAĒCOA, imperfect)
closed_class_word('tlaēcoque', irregular_verb).  % they arrived (tlā- + EHCO + -que)
closed_class_word('tlaēliloc', irregular_verb).  % there was anger (K TLAHUĒLĪLŌC, h lost)
closed_class_word('tlaelpanmama', irregular_verb).  % they carried [burdens] on their chests
closed_class_word('tlahihuah', irregular_verb).  % he sent out
closed_class_word('tlahtemachoc', irregular_verb).  % tlah- + tenmacho-c 'there was lamentation'
closed_class_word('tlahtlaxtlapaloa', irregular_verb).  % they crossed back and forth
closed_class_word('tlahtoqueh', noun).  % rulers (TLAHTOHQUI, pl. TLAHTOHQUEH)
closed_class_word('tlahuacalhuia', irregular_verb).  % they used deep baskets
closed_class_word('tlahuānqui', adjective).  % drunk (K TLAHUĀNQUI)
closed_class_word('tlahueliloqueh', irregular_verb).  % they became angry
closed_class_word('tlahuēlpan', adverb).  % in anger (K TLAHUĒLPAN)
closed_class_word('tlahuilani', adjective).  % dragged along (TLA- + HUĪLĀNA)
closed_class_word('tlahuitol', noun).  % bow (no K headword; TLAHUITŌL-LI)
closed_class_word('tlahuizcalpan', locative).  % at dawn (K TLAHUIZCAL-LI + -PAN)
closed_class_word('tlaiacac', adverb).  % leading the way (TLA + YACAC)
closed_class_word('tlaihiyōhuiloc', irregular_verb).  % there was suffering (IHIYŌHUIA nonact.)
closed_class_word('tlaipantiliqueh', irregular_verb).  % they hit the target
closed_class_word('tlaixcuamama', irregular_verb).  % they carried [burdens] on their foreheads
closed_class_word('tlaīxmalacachihui', irregular_verb).  % things spun before the eyes (TLA- + ĪXMALACACHIHU(I))
closed_class_word('tlaīxneliui', adverb).  % as if confused (TLA + ĪX + NELIUI)
closed_class_word('tlaīxpopoyomictilti', irregular_verb).  % they were struck down before their eyes
closed_class_word('tlaixquiquiza', irregular_verb).  % everyone scurried; no K headword
closed_class_word('tlaixtotocatihuitzeh', irregular_verb).  % they came examining things
closed_class_word('tlaiye', adverb).  % first (K TLAIYEH)
closed_class_word('tlaiyecolo', irregular_verb).  % there was fighting
closed_class_word('tlaiyecoloc', irregular_verb).  % there was preparation (opaque)
closed_class_word('tlaiyecozqueh', irregular_verb).  % they were to prepare themselves (TLAIYECO + -z-queh)
closed_class_word('tlalcahuiloqueh', irregular_verb).  % they were left (TLA- + CAHUA + -LŌ + -QUEH)
closed_class_word('tlalchipacpan', locative).  % on the surface of the ground (tlāl-li + chipac + -pan)
closed_class_word('tlālhuacapan', locative).  % on the surface of the land
closed_class_word('tlālhuacpan', locative).  % variant of TLĀLHUACAPAN
closed_class_word('tlāllan', locative).  % beneath the ground (tlāl-li + -tlan, Andrews 48.2.4; K TLĀL-LI)
closed_class_word('tlālloahqueh', irregular_verb).  % they were covered with earth
closed_class_word('tlālpan', locative).  % on the ground; tlāl-li + -pan, K TLĀL-LI
closed_class_word('tlalpitiuh', irregular_verb).  % it went tied (TLALPIA + -ti + -uh)
closed_class_word('tlaltech', locative).  % on the ground (TLĀL-LI + -TECH)
closed_class_word('tlaltitech', locative).  % on the ground (TLĀL-LI + -TI- + -TECH)
closed_class_word('tlāltitech', locative).  % on the ground
closed_class_word('tlamaceuhqueh', noun).  % those who did penance (TLAMACEUHQUI, pl.)
closed_class_word('tlamach', adverb).  % quietly, gradually; K TLAMACH
closed_class_word('tlamalo', irregular_verb).  % things were piled (TLAMĀ nonact.)
closed_class_word('tlamamalchīchīuhtiuh', irregular_verb).  % going along carrying loads
closed_class_word('tlamaqueh', irregular_verb).  % they gave things (TLA- + MACA + -queh)
closed_class_word('tlamatlacti', numeral).  % tenth (TLAMATLACTI)
closed_class_word('tlamatlactiz', numeral).  % will be tenth (TLAMATLACTI + -z)
closed_class_word('tlamatzin', adverb).  % slowly, cautiously (tlamach + tzin)
closed_class_word('tlamelāuhca', adverb).  % straight (K TLAHTOHCA? no: MELĀHUAC + -ca)
closed_class_word('tlamelāuhqueh', irregular_verb).  % they went straight (TLA- + MELĀHU(A) + -queh)
closed_class_word('tlamotlahtihui', irregular_verb).  % they went shooting
closed_class_word('tlanamoxtihui', irregular_verb).  % they went snatching things
closed_class_word('tlanāuhcaiotitihui', irregular_verb).  % fourth went
closed_class_word('tlani', adverb).  % below (K TLANI)
closed_class_word('tlani', locative).  % below (K TLANI)
closed_class_word('tlantihui', irregular_verb).  % they go along (TLAN- + -ti-hui)
closed_class_word('tlantihuitzeh', irregular_verb).  % they come along (TLAN- + -ti-huitzeh)
closed_class_word('tlantimani', irregular_verb).  % it goes along ending (tlan + ti + MANI)
closed_class_word('tlantoca', irregular_verb).  % he pursues it
closed_class_word('tlaocaiotitihui', irregular_verb).  % second went
closed_class_word('tlaocuyalo', irregular_verb).  % there was weeping (TLAŌCOY(A) 'be sad' + nonactive -lo)
closed_class_word('tlapanco', locative).  % roof loft, tapanco; K TLAPANCO (unmarked)
closed_class_word('tlapcopa', adverb).  % eastward (tlapc- + -copa)
closed_class_word('tlapepetlaca', irregular_verb).  % they glittered (TLA- + PEPETLACA)
closed_class_word('tlapitzalo', irregular_verb).  % people play the flute (TLA- + PITZA + -LŌ)
closed_class_word('tlapitzalō', irregular_verb).  % wind instruments were played (nonact. PITZA)
closed_class_word('tlapitztihuitzeh', irregular_verb).  % they come blowing flutes
closed_class_word('tlaquimilmamama', irregular_verb).  % they carried bundles on their backs
closed_class_word('tlatanatemalo', irregular_verb).  % things were arranged (rare nonactive whole form)
closed_class_word('tlatemma', irregular_verb).  % they filled things (TĒM(A))
closed_class_word('tlatemmachoya', irregular_verb).  % it was suspected (TLATEMMACHO)
closed_class_word('tlatemotla', irregular_verb).  % like throwing stones
closed_class_word('tlatepozmihuia', irregular_verb).  % they shoot iron bolts
closed_class_word('tlatepozmihuītihuitzeh', irregular_verb).  % they come shooting iron arrows
closed_class_word('tlatic', locative).  % on the ground (TLĀL-LI + -TIC)
closed_class_word('tlatilolcaē', noun).  % O Tlatilolca! (vocative)
closed_class_word('tlatilulcah', noun).  % people of Tlatilulco (Tlatilulca + -h)
closed_class_word('tlatiticuitza', irregular_verb).  % they made a throbbing/beating
closed_class_word('tlatlā', irregular_verb).  % they burned
closed_class_word('tlatlaan', irregular_verb).  % it was burning (TLATLA + -ya?); analysis uncertain
closed_class_word('tlatlachpānoc', irregular_verb).  % it was swept (redup. TLACHPĀN(A) + -c)
closed_class_word('tlātlahti', irregular_verb).  % he ordered (TLĀTLATI)
closed_class_word('tlatlāhuic', irregular_verb).  % it dawned
closed_class_word('tlatlanecutihuitzeh', irregular_verb).  % they came swaying/keeping rank
closed_class_word('tlatlanquiquiztihui', irregular_verb).  % they came whistling
closed_class_word('tlatlapixtoca', irregular_verb).  % it goes along guarding the land
closed_class_word('tlatlequiquizhuītihuitzeh', irregular_verb).  % they come shooting firearms
closed_class_word('tlatompiahuia', irregular_verb).  % they used deep baskets
closed_class_word('tlatotoca', irregular_verb).  % everyone ran (TLA- + TOTOCA)
closed_class_word('tlatzacuilcamac', locative).  % at doorway openings
closed_class_word('tlatzacutiaqueh', irregular_verb).  % they brought up the rear
closed_class_word('tlatzacutica', irregular_verb).  % it kept closed (TLATZACUA + -ti-ca)
closed_class_word('tlatzatziztlehōa', irregular_verb).  % opaque
closed_class_word('tlatzintlan', locative).  % below (K TLATZĪNTLAN)
closed_class_word('tlatzōntectica', adverb).  % by a barbed dart (tlatzontectli + -ca)
closed_class_word('tlatzotzonalo', irregular_verb).  % people play music (TLA- + TZOTZONA + -LŌ)
closed_class_word('tlaxamacan', irregular_verb).  % there was a clattering (tla-xamaca-n); no K headword
closed_class_word('tlaxcallampa', locative).  % toward Tlaxcala
closed_class_word('tlaxcaltecaē', noun).  % O Tlaxcalans! vocative of Tlaxcalteca (Andrews 18.11)
closed_class_word('Tlaxiccaquican', irregular_verb).  % listen (pl.)!: tla- + xi- + c- + CAQU(I) + -cān
closed_class_word('Tlaxiccaquicān', irregular_verb).  % hear (pl.) it
closed_class_word('tlayacantihui', irregular_verb).  % the leaders went
closed_class_word('tlayecaiotia', irregular_verb).  % third went
closed_class_word('tlayecoaya', irregular_verb).  % it was being prepared (opaque)
closed_class_word('tlayecolo', irregular_verb).  % they were sought
closed_class_word('tlayecotihuitzeh', irregular_verb).  % they came testing them out (tla-tlayeco-ti-huitzeh)
closed_class_word('tlazo', adjective).  % precious (K TLAZŌ-TL)
closed_class_word('tlazohtlanqui', adjective).  % precious, fine (K TLAZOHTLANQUI)
closed_class_word('tle', pronoun).  % what? something; K TLE(H)
closed_class_word('tleh', pronoun).  % what? something (K TLE(H))
closed_class_word('tleica', adverb).  % why?; TLEIC, TLEICA
closed_class_word('tlein', pronoun).  % what? something
closed_class_word('Tlen', pronoun).  % what? (K TLEN)
closed_class_word('tlen', pronoun).  % what? (K TLEIN)
closed_class_word('tlepipixāhuhtiuh', irregular_verb).  % fire went showering (tle- + PĪPIXAHU(I) + -tiuh)
closed_class_word('tlequiquizhuiloc', irregular_verb).  % people were shot by guns
closed_class_word('tletic', pronoun).  % something (tle + -tic)
closed_class_word('tletlenamacaqueh', noun).  % priests (fire-offerers)
closed_class_word('tlillan', locative).  % place of blackness, Tlillan
closed_class_word('toca', relational).  % to-ca 'in our presence, with respect to us' (1pl possessive of relational -ca); toca anmocacayahua
closed_class_word('toconcaquiz', irregular_verb).  % we shall hear it
closed_class_word('toconchixticateh', irregular_verb).  % we are awaiting it (to-c-on-chixti-ca-teh)
closed_class_word('tocuilhuēhuhtihui', irregular_verb).  % they came singing in Tocuillan style
closed_class_word('tohhuāntin', pronoun).  % we
closed_class_word('toīxācacpa', locative).  % in our presence (TO- + ĪX-TLI + -YĀCA + -PA)
closed_class_word('toltecaācaloco', noun).  % Toltecaācaloco (place name)
closed_class_word('tomāhuac', adjective).  % fat, thick, plump; K TOMĀHUAC
closed_class_word('tommohuetzitico', irregular_verb).  % you have fallen here (FC honorific)
closed_class_word('tommopachihuiltico', irregular_verb).  % you have satisfied yourself here (FC)
closed_class_word('tonac', noun).  % summer, ripe time (TONAC)
closed_class_word('tonacamicoac', irregular_verb).  % there was abundance of deaths
closed_class_word('tonacamicque', irregular_verb).  % they died (TO- + NACA- + MIC- + -queh)
closed_class_word('tonacatlamaloc', irregular_verb).  % bodies were piled (TONACAYŌ + TLAMĀ nonact.)
closed_class_word('tōnalhuītecoc', irregular_verb).  % the sun struck there
closed_class_word('tonaqueh', noun).  % multitude
closed_class_word('tonhuī', irregular_verb).  % we are about to go
closed_class_word('tontepehuah', irregular_verb).  % we conquer (TON- + TEPĒHUA)
closed_class_word('topantemoctzin', noun).  % Topantemoctzin (personal name)
closed_class_word('topco', locative).  % in our place (TO + -pco?)
closed_class_word('toquichtin', noun).  % men (OQUICH-TLI, pl. TOQUICHTIN)
closed_class_word('totēcue', noun).  % O our lord (vocative of totēcuiyo)
closed_class_word('totēcuiyo', noun).  % our lord (K TOTĒCUIYŌ)
closed_class_word('totēcuiyō', noun).  % TOTĒCUIYŌ 'our lord' with its long final ō (K TOTĒCUIYŌ).
closed_class_word('totēcuiyoé', noun).  % O our lord! (vocative)
closed_class_word('totēcuiyoē', noun).  % O our lord! (vocative)
closed_class_word('totēcuiyōhuāne', noun).  % O our lords! = to- + tēcuiyō-huān + vocative -ē (Andrews 18.11, 14.7.2c); lexicalised address form
closed_class_word('toteucuihuāneh', noun).  % O our lords! (to-tēucui-huān-eh; K TĒUC-TLI)
closed_class_word('totlahtohcatzin', noun).  % our lord (TO- + TLAHTOHQUI + -TZIN)
closed_class_word('tōtōlnextic', adjective).  % ash-coloured (tōtōl- + nextic)
closed_class_word('totomāhuac', adjective).  % very thick/fat; redup. TOMĀHUAC
closed_class_word('toxcatica', locative).  % in the month Tōxcatl (TŌXCA-TL + -tica)
closed_class_word('toxcatl', noun).  % Toxcatl, name of a festival month; no K headword
closed_class_word('tōyāhuān', noun).  % our enemies (to- + yāō-huān, contracted)
closed_class_word('toyezqueh', irregular_verb).  % how will it be with us? (to- + YE + -z-queh)
closed_class_word('tzacualoc', irregular_verb).  % it was closed (TZACUA nonact.)
closed_class_word('tzatzaian', irregular_verb).  % it ripped
closed_class_word('tzilacatzin', noun).  % Tzilacatzin (personal name)
closed_class_word('tzimpātlāhuac', adjective).  % broad at the base
closed_class_word('tzimpitzāhuac', adjective).  % pointed at the tip (tzin + PITZĀHUAC)
closed_class_word('tzitzile', noun).  % O bells! (vocative of tzitzilli)
closed_class_word('tzitzintla', locative).  % at the base (tzin-tla)
closed_class_word('tzoneuh', irregular_verb).  % it was full to the top; no K headword
closed_class_word('tzopēlic', adjective).  % sweet
closed_class_word('tzotzocoleque', noun).  % the scabby ones (tzotzocol + -eque); no K headword
closed_class_word('tzotzontecomāyō', adjective).  % with heads (tzotzon-tecomā-yō)
closed_class_word('vino', noun).  % wine (Sp. loan)
closed_class_word('xapotticac', adjective).  % perforated (xapottic + ca)
closed_class_word('xexeliuhtiuh', irregular_verb).  % it went parting/spreading
closed_class_word('xiauh', irregular_verb).  % imperative of yauh 'go!', y lost (xi-yauh)
closed_class_word('xiccuican', irregular_verb).  % take it (pl.)
closed_class_word('xicmocualtitin', irregular_verb).  % be well (imperative; XIC- + MO- + CUALTI)
closed_class_word('xicmolhuilican', irregular_verb).  % tell him (pl.)
closed_class_word('xicmolhuilicān', irregular_verb).  % tell him (pl.)
closed_class_word('xicmopalēhuilican', irregular_verb).  % may you help him
closed_class_word('xicotencatl', noun).  % Xicotencatl (personal name)
closed_class_word('xihualhuian', irregular_verb).  % come here (pl.) (suppletive imperative)
closed_class_word('xihuālhuian', irregular_verb).  % come (pl.) here
closed_class_word('xihualnenemican', irregular_verb).  % come running! (xi-hual-nenemi-can)
closed_class_word('xihualnēnēmican', irregular_verb).  % come running! (xi-hual-nēnēmi-cān)
closed_class_word('xihuian', irregular_verb).  % go (pl.) (suppletive imperative of yauh/hui)
closed_class_word('xihuiya', irregular_verb).  % go on!
closed_class_word('ximotlacotili', irregular_verb).  % humble yourself
closed_class_word('xitechmotlatlatili', irregular_verb).  % hide us (XI-TĒCH-MO-TLATLATILI)
closed_class_word('xitēchmotlatlatili', irregular_verb).  % address (pl.) on our behalf
closed_class_word('xitequitlanelocan', irregular_verb).  % paddle (pl.)
closed_class_word('xiuhquitzquilo', irregular_verb).  % the year is taken hold of (XIHU(I)-TL + QUITZQUILO)
closed_class_word('xixitica', irregular_verb).  % it crackled
closed_class_word('xixittemomoloca', irregular_verb).  % it bubbled and burst
closed_class_word('xiyauh', irregular_verb).  % imperative of yauh 'go!' (xi-yauh)
closed_class_word('xōchimoyāhuac', adjective).  % fragrant like flowers; no K headword
closed_class_word('xoconittacan', irregular_verb).  % look at it! (XO-C-ON-ITTA-CAN)
closed_class_word('xoconmomachiti', irregular_verb).  % know it! (xo-c-on-mo-MACHITI)
closed_class_word('xoconttacan', irregular_verb).  % look at it! (variant)
closed_class_word('xommocuepacan', irregular_verb).  % turn around (pl.)
closed_class_word('xonexcaia', irregular_verb).  % try to give news
closed_class_word('xontlachiyacan', irregular_verb).  % look (pl.)
closed_class_word('xonyāuh', irregular_verb).  % go! (XO-N-YĀUH)
closed_class_word('xoquiiac', adjective).  % stinking (XOQUI + -YAC; no K headword)
closed_class_word('xoquiyac', adjective).  % stinking; K XOQUIYAC
closed_class_word('xoquiyāc', adjective).  % stinking (K XOCOYĀC)
closed_class_word('xoxōchiteyō', adjective).  % flowered, fragrant; XŌCHI-TL + -yō
closed_class_word('xoxopiltic', adjective).  % greenish (XOXOCTIC + -pil)
closed_class_word('xoxoquihui', irregular_verb).  % to shake, quake; no K headword
closed_class_word('xoxoquiohua', irregular_verb).  % it stank (XOQUI + -ohua)
closed_class_word('y', particle).  % and (Spanish loan y)
closed_class_word('yā', pronoun).  % he, she
closed_class_word('yāca', irregular_verb).  % some went (yauh, distributive)
closed_class_word('yacattiah', irregular_verb).  % they go first (YACATTA + -yah)
closed_class_word('yacattiaqueh', irregular_verb).  % they led
closed_class_word('yacattihuitzeh', irregular_verb).  % they came first (YACAT- + -ti-huitzeh)
closed_class_word('yahhuāntin', pronoun).  % they
closed_class_word('yālhua', adverb).  % yesterday (K YĀLHUA)
closed_class_word('yancuican', adverb).  % newly, for the first time (K YANCUICAN)
closed_class_word('yancuīcān', adverb).  % first (K YANCUĪCĀN)
closed_class_word('yaocmo', adverb).  % no longer (YA + OC + MO)
closed_class_word('yāōmic', irregular_verb).  % he died in battle (yāō + MIC)
closed_class_word('yāōquizqueh', irregular_verb).  % warriors (YĀŌ- + QUIZA + -z-queh)
closed_class_word('yāōtlachixqueh', noun).  % lookouts (YĀŌ-TL + TLACHIY(A) agentive pl.)
closed_class_word('yāōtlapixqueh', noun).  % guards (YĀŌ-TL + TLAPIY(A) agentive pl.)
closed_class_word('yāōtlatzotzonalo', irregular_verb).  % war music is played (YĀŌ-TL + TZOTZONA + -LŌ)
closed_class_word('yāōyōtica', adverb).  % by warfare (YĀŌYŌ-TL + -tica)
closed_class_word('yāqueh', irregular_verb).  % they went; YĀ + pret. pl. -queh (K YĀ)
closed_class_word('yaquetihuitz', irregular_verb).  % they come (FC)
closed_class_word('yāticac', adjective).  % going, leading (of a road) (yāuh + -ti-cac;, 38)
closed_class_word('yāuhtlachixqui', noun).  % war scout (yāō- + tlachixqui)
closed_class_word('yeh', pronoun).  % he, she, it (short form)
closed_class_word('yehhuān', pronoun).  % they (K YEHHUĀN)
closed_class_word('yehhuāntin', pronoun).  % they; K YEHHUĀNTIN
closed_class_word('yehhuātl', pronoun).  % he, she, it
closed_class_word('yehica', particle).  % because; K YEH ICA, lexicalized in the sources
closed_class_word('yehqueneh', adverb).  % indeed, as is said (K YĒQUENEH)
closed_class_word('yehuac', adverb).  % at that point (K YEHUAC)
closed_class_word('yehuān', pronoun).  % they (variant of YEHHUĀNTIN)
closed_class_word('yehuāntin', pronoun).  % they (h-less variant attested in the sources)
closed_class_word('yehuat', pronoun).  % he, she (short YEHUĀT- before particles)
closed_class_word('yehuatix', pronoun).  % not he ( aoc yehuatix)
closed_class_word('yehuātl', pronoun).  % he, she, it (K YEHUĀTL)
closed_class_word('yemelāhuaticac', adjective).  % already straight (ye + MELĀHUAC + -ti-cac)
closed_class_word('yeppa', adverb).  % long ago (K YEPPA)
closed_class_word('yetiaqueh', irregular_verb).  % they went with him
closed_class_word('yetiuh', irregular_verb).  % attached, going along (defective -tiuh form)
closed_class_word('yeyetiuh', irregular_verb).  % attached, going along (defective -tiuh form)
closed_class_word('yēyohtli', noun).  % new thing
closed_class_word('yez', irregular_verb).  % it will be (K YE 'be'; future)
closed_class_word('yezqueh', irregular_verb).  % they will be (future of CA)
closed_class_word('yiacapan', locative).  % at the edge of the reeds (Ācatl Yiacapan)
closed_class_word('yiaque', irregular_verb).  % they went (y + iaque, variant of YĀQUEH)
closed_class_word('yioiolipan', locative).  % in their hearts (y- + iyōl(lo) + -ipan; no K headword)
closed_class_word('yixcueponque', irregular_verb).  % their eyes burst open (y- + IXCUEPONI + -que)
closed_class_word('yiztacalla', locative).  % and at the white place (y + IZTAC + -LLAN)
closed_class_word('yōcoxcā', adverb).  % peacefully (K YŌCOXCĀ)
closed_class_word('yohcanixti', adverb).  % at midnight (YOHUAC + -can + -ixti)
closed_class_word('yohuac', adverb).  % at night (K YOHUAC)
closed_class_word('yohualnepantlah', adverb).  % at midnight; K YOHUALNEPANTLAH
closed_class_word('yohualtica', adverb).  % at night; K YOHUALTICA
closed_class_word('yohuān', particle).  % and, with
closed_class_word('yohuatzinco', adverb).  % early in the morning (K YOHUATZINCO)
closed_class_word('yohuīca', adverb).  % at night; K YOHUĪCA
closed_class_word('yōlic', adverb).  % slowly; K YŌLIC
closed_class_word('zānen', adverb).  % in vain, to no purpose
closed_class_word('zanio', adverb).  % only (K ZANIYOH, final h lost)
closed_class_word('zaniuh', adverb).  % only thus, likewise (ZANIYOH variant)
closed_class_word('zaniyohpa', adverb).  % only once (ZAN + IYOH + -PA)
closed_class_word('zannel', adverb).  % what then?
closed_class_word('zatepan', adverb).  % afterwards; K ZATEPAN
closed_class_word('zatepān', adverb).  % afterwards (long ā; K ZATEPĀN)
closed_class_word('zato', irregular_verb).  % he went (QUĪZA + -to?)
closed_class_word('zazacōqueh', irregular_verb).  % they were sated? (ZAZACŌ?); uncertain
closed_class_word('zazo', particle).  % ever, whichever; K ZAZO
closed_class_word('zazo', pronoun).  % whatever (K ZAZO)
closed_class_word('zolōni', adjective).  % humming, buzzing
closed_class_word('zozolocatiuh', irregular_verb).  % The defective -tiuh forms are stored whole elsewhere in the lexicon.
closed_class_word('zozotlaoā', irregular_verb).  % to faint
closed_class_word('zozotoca', irregular_verb).  % it rumbles (ZOZOLOCA)


% ============================================================================
% NOUN LEXICON
% ============================================================================
% Noun stems. Alphabetized by plain stem (first argument).

noun_stem_type('ā' , 'tl', '', '', inanimate).  % water; K Ā-TL (redundant but explicit)
noun_stem_type('ā', 'tl', 'āā', 'ahā', inanimate).  % water
noun_stem_type('āca', 'tl', '', '', inanimate).  % K ĀCA-TL reed
noun_stem_type('āca', 'tl', 'āca', 'āca', inanimate).  % reed (K ĀCA-TL)
noun_stem_type('āca', 'tl', 'āāca', 'ahāca', inanimate).  % reed (K ĀCA-TL)
noun_stem_type('acachinanco', '', '', '', inanimate).  % place name Acachinanco
noun_stem_type('acal', '', '', '', inanimate).  % boat
noun_stem_type('acal', 'li', '', '', inanimate).  % boat
noun_stem_type('ācal', 'li', '', '', inanimate).  % boat (K ĀCAL-LI, long ā)
noun_stem_type('ācal', 'li', 'ācal', 'ācal', inanimate).  % boat (K ĀCAL-LI, long ā)
noun_stem_type('acalchīmal', 'li', '', '', inanimate).  % war boat (ācal-li + chīmal-li); K ĀCAL-LI, CHĪMAL-LI
noun_stem_type('acalchimalli', '', '', '', inanimate).  % boat-shield (ĀCAL-LI + CHĪMAL-LI)
noun_stem_type('ācalco', '', '', '', inanimate).  % in the boat (ĀCAL-LI + -CO)
noun_stem_type('acalēqueh', '', '', '', animate).  % boatmen (ĀCAL-LI + -EH)
noun_stem_type('acalo', 'tli', '', '', inanimate).  % canal, channel (acalote); not in K
noun_stem_type('acaloco', '', '', '', inanimate).  % place Acaloco (Tolteca acaloco)
noun_stem_type('acalotenco', '', '', '', inanimate).  % at the edge of the canal (ACAL-LI + -tenco)
noun_stem_type('acaluhtli', '', '', '', inanimate).  % canal (variant)
noun_stem_type('acameh', '', '', '', inanimate).  % reeds (ĀCA-TL, pl. -MEH)
noun_stem_type('acatliyacapan', '', '', '', inanimate).  % toponym 'at the reeds' point' (ĀCA-TL + YACA-TL + -PAN)
noun_stem_type('acaxilomeh', '', '', '', animate).  % reed sprouts? (ACATL + XILOTL + -MEH)
noun_stem_type('achcācāuhti', '', '', '', animate).  % elder (variant of ĀCHCĀUH-TLI; no K headword)
noun_stem_type('achcāu', 'tli', '', '', animate).  % elder brother, leader; K ĀCHCĀUH-TLI
noun_stem_type('achcāuh', 'tli', '', '', animate).  % elder brother, leader (FC -h-); K ĀCHCĀUH-TLI
noun_stem_type('achcāuh', 'tli', 'achcāuh', 'achcāuh', animate).  % leader (K ACHCAUH-TLI)
noun_stem_type('āchcāuh', 'tli', '', '', animate).  % elder, leader (K ĀCHCĀUH-TLI)
noun_stem_type('ācol', 'li', '', '', inanimate).  % shoulder (K ĀCŌL-LI)
noun_stem_type('acueco', '', '', '', inanimate).  % place name Acueco; no K headword
noun_stem_type('acuepanahuaz', 'tli', '', '', inanimate).  % broom; K ACUEPANAHUĀZ-TLI
noun_stem_type('aculhuaca', '', '', '', animate).  % Acolhuaca, people of Acolhuacan
noun_stem_type('aculhuaca', 'tl', '', '', animate).  % person of Acolhuacan (K ACŌLHUAH)
noun_stem_type('ahci', 'tl', 'āahci', 'ahahci', animate).  % bird, perhaps a typo for 'ahuitl' - correcting to 'ahui'
noun_stem_type('ahhuic', '', '', '', inanimate).  % here and there (K AHHUIC)
noun_stem_type('ahmōl', '', '', '', inanimate).  % soap
noun_stem_type('ahmōl', 'li', '', '', inanimate).  % soap
noun_stem_type('ahpāz', 'tli', '', '', inanimate).  % earthen tub (K AHPĀZ-TLI)
noun_stem_type('ahpilol', 'li', '', '', inanimate).  % water jar (K AHPILOL-LI)
noun_stem_type('āhuaca', '', '', '', inanimate).  % avocado
noun_stem_type('āhuaca', 'tl', '', '', inanimate).  % avocado
noun_stem_type('āhuacuahuitl', '', '', '', inanimate).  % oak log
noun_stem_type('ahuelitoc', '', '', '', animate).  % personal name Ahuelitoctzin
noun_stem_type('ahuelitoctzin', '', '', '', animate).  % personal name Ahuelitoctzin
noun_stem_type('āhui', '', 'āāhui', 'ahāhui', animate).  % aunt, sister-in-law (without -tl)
noun_stem_type('āhui', 'tl', 'āāhui', 'ahāhui', animate).  % aunt, sister-in-law (with -tl)
noun_stem_type('ahuitzotl', '', '', '', animate).  % Ahuitzotl (king)
noun_stem_type('ahuitzotzin', '', '', '', animate).  % personal name Ahuitzotzin
noun_stem_type('ahzometl', '', '', '', inanimate).  % a plant (no K headword)
noun_stem_type('āltepē', '', '', '', inanimate).  % city
noun_stem_type('āltepē', 'tl', '', '', inanimate).  % city
noun_stem_type('āltepēhuah', '', '', '', animate).  % resident of a town (K ĀLTEPĒHUAH)
noun_stem_type('altepeuh', '', '', '', inanimate).  % his town (possessed ALTEpē-TL)
noun_stem_type('alvarado', '', '', '', animate).  % Alvarado (Sp. surname)
noun_stem_type('āma', 'tl', 'āama', 'ahama', inanimate).  % paper, book
noun_stem_type('amacapolin', '', '', '', inanimate).  % capulin cherry (AMACAPOL-IN; no K headword)
noun_stem_type('amalacayoh', '', '', '', inanimate).  % cloak design (no K headword; opaque)
noun_stem_type('āmanal', '', '', '', inanimate).  % pond
noun_stem_type('āmanal', 'li', '', '', inanimate).  % pond
noun_stem_type('amanalco', '', '', '', inanimate).  % AMANALCO, place name
noun_stem_type('amāpilol', '', '', '', inanimate).  % water jar (FC spelling of ĀMAPILŌL-LI)
noun_stem_type('āmapilōl', 'li', '', '', inanimate).  % water jar (ĀMAPILŌL-LI)
noun_stem_type('amaquemecan', '', '', '', inanimate).  % toponym Amaquemecan (K ĀMAQUĒMEHCĀN); spelling variant
noun_stem_type('āmatlatquitl', '', '', '', inanimate).  % paper items (K ĀMATLATQUITL)
noun_stem_type('amaxac', '', '', '', inanimate).  % place name Amaxac
noun_stem_type('amol', '', '', '', inanimate).  % soap
noun_stem_type('amol', 'li', '', '', inanimate).  % soap
noun_stem_type('amotlahtohcāuh', '', '', '', animate).  % your ruler (AMO- + TLAHTOHCĀUH)
noun_stem_type('āmox', 'tli', 'āāmox', 'ahāmox', inanimate).  % book
noun_stem_type('amul', 'li', '', '', inanimate).  % soap; variant of K AHMŌL-LI (FC amulli)
noun_stem_type('anecuiyō', 'tl', '', '', inanimate).  % name of a shield design; no K headword
noun_stem_type('anochtli', '', '', '', inanimate).  % a fruit (no K headword)
noun_stem_type('apahuazcan', '', '', '', inanimate).  % APAHUAZCAN, place name
noun_stem_type('atactzinco', '', '', '', inanimate).  % toponym Atactzinco
noun_stem_type('ateccolecan', '', '', '', inanimate).  % place name Ateccolecan
noun_stem_type('atecocolecan', '', '', '', inanimate).  % place name Atecocolecan; no K headword
noun_stem_type('atemoztli', '', '', '', inanimate).  % ATEMOZ-TLI, 11th month
noun_stem_type('ātenāmi', 'tl', '', '', inanimate).  % wall in the water (ā-tl + tenāmi-tl)
noun_stem_type('atenchicalco', '', '', '', inanimate).  % place name Atenchicalco; no K headword
noun_stem_type('atetemolequeh', '', '', '', animate).  % people of Atetemolo? (opaque gentilic)
noun_stem_type('ātezca', 'tl', '', '', inanimate).  % small lake, pool (K ĀTEZCA-TL)
noun_stem_type('atezcapan', '', '', '', inanimate).  % ATEZCAPAN, place name
noun_stem_type('ātlāca', '', '', '', animate).  % water folk, hunters (ā- + TLĀCA-TL)
noun_stem_type('ātlāca', 'tl', '', '', animate).  % person of the water? (Ā-TL + TLĀCA-TL)
noun_stem_type('atlacuihuayan', '', '', '', inanimate).  % place name (if needed)
noun_stem_type('atlapalli', '', '', '', animate).  % commoner, "wing" (K ATLAPAL-LI)
noun_stem_type('ātlauhtli', '', '', '', inanimate).  % something bright (Ā-TL + TLAUH-TLI)
noun_stem_type('atliceuhcah', '', '', '', animate).  % Atliceuhcah, people of Atliceuhyan
noun_stem_type('atliceuhyan', '', '', '', inanimate).  % ATLICEUHYAN, place name
noun_stem_type('atlixcatzin', '', '', '', animate).  % Atlixcatzin (personal name)
noun_stem_type('ātoyatōn', 'tli', '', '', inanimate).  % small river (ā-toyoh + tōn-tli); no K headword
noun_stem_type('atoyaxoco', 'tl', '', '', inanimate).  % jobo fruit (ATOYA-TL + XOCO-TL)
noun_stem_type('atztzapo', 'tl', '', '', inanimate).  % black sapote (Ā-TL + TZAPO-TL)
noun_stem_type('axayaca', '', '', '', animate).  % Axayaca (king)
noun_stem_type('āxca', 'tl', '', '', inanimate).  % K ĀXCĀ(I)-TL possessions, property
noun_stem_type('axoquen', '', '', '', animate).  % personal name Axoquen- (+ tzin); no K headword
noun_stem_type('ayacac', '', '', '', inanimate).  % AYACAC, place name
noun_stem_type('ayacacalqueh', '', '', '', animate).  % people of Ayacac
noun_stem_type('ayahuhtitlan', '', '', '', inanimate).  % in the mist (AYAHU(I)-TL + -tlan)
noun_stem_type('ayauhcaltitlan', '', '', '', inanimate).  % toponym Ayauhcaltitlan
noun_stem_type('ayo', 'tl', 'āayo', 'ahayo', inanimate).  % squash, gourd
noun_stem_type('ayotlatlapanalli', '', '', '', inanimate).  % gourd pieces (AYO-TL + TLAPANAL-LI)
noun_stem_type('ayotzintepecatl', '', '', '', animate).  % person of Ayotzintepec
noun_stem_type('aztahua', '', '', '', animate).  % Aztahua- (+ tzin); no K headword
noun_stem_type('aztapilla', '', '', '', inanimate).  % astyle? (opaque, ch. 25)
noun_stem_type('aztapiltitlan', '', '', '', inanimate).  % place of astyle? (opaque, ch. 25)
noun_stem_type('aztaquemecan', '', '', '', inanimate).  % place Aztaquemecan (no K headword)
noun_stem_type('aztaquemecān', '', '', '', inanimate).  % variant with long final ā
noun_stem_type('aztaxel', '', '', '', inanimate).  % breechcloth ornament; no K headword
noun_stem_type('ca', '', '', '', inanimate).  % means, reason (postposition -CA; īca, inca)
noun_stem_type('caballo', '', '', '', animate).  % horse (Sp. caballo, loan)
noun_stem_type('caballomeh', '', '', '', animate).  % horses (Sp. caballo + -MEH)
noun_stem_type('caballos', '', '', '', animate).  % horses (Sp. caballos, loan)
noun_stem_type('cac', '', '', '', inanimate).  % sandal
noun_stem_type('cac', 'tli', '', '', inanimate).  % sandal
noun_stem_type('cacahua', 'tl', 'cācacahua', 'cahcacahua', inanimate).  % cacao
noun_stem_type('cacamatzin', '', '', '', animate).  % Cacamatzin (personal name)
noun_stem_type('cacaoh', '', 'cācaoh', 'cahcaoh', inanimate).  % cacao bean
noun_stem_type('cacic', '', '', '', animate).  % cacique (Sp. cacique)
noun_stem_type('cahuallo', '', '', '', animate).  % horse (Sp. caballo, loan); pl. cahuallotin
noun_stem_type('cahuallos', '', '', '', animate).  % horse (Sp. caballos, loan); also possessed īn-cahuallos
noun_stem_type('cahuayo', '', 'cācahuayo', 'cahcahuayo', animate).  % horse (loan)
noun_stem_type('cahuayoh', '', 'cācahuayo', 'cahcahuayo', animate).  % horse (using cahuayoh/no class marker)
noun_stem_type('cāhuitl', '', '', '', inanimate).  % time (K CĀHU(I)-TL)
noun_stem_type('cāhuītl', '', '', '', inanimate).  % time, period (K CĀHUĪ-TL)
noun_stem_type('cahuitōn', 'tli', '', '', inanimate).  % a little while (K CAHUITŌN-TLI)
noun_stem_type('cal', 'li', 'cācal', 'cahcal', inanimate).  % house
noun_stem_type('calacohua', '', '', '', inanimate).  % entrance (K CALACOHUA)
noun_stem_type('calacohuayān', '', '', '', inanimate).  % place of entrance (CALACOHUA + -yān)
noun_stem_type('calacoyan', '', '', '', inanimate).  % Calacoyan (place name)
noun_stem_type('calaquiapan', '', '', '', inanimate).  % entrance (cal-aqui-a-pan)
noun_stem_type('calpixcā', '', '', '', animate).  % stewardship (cf. CALPIXQUI)
noun_stem_type('calpixcāyō', 'tl', '', '', inanimate).  % stewardship
noun_stem_type('calpixque', '', '', '', animate).  % stewards (pl. of CALPIXQUI)
noun_stem_type('calpixqui', '', 'calpixqu', '', animate).  % steward (K CALPIXQUI; pl. calpixqueh)
noun_stem_type('calpulli', '', '', '', inanimate).  % calpulli (K CALPULLI)
noun_stem_type('caltech', '', '', '', inanimate).  % wall, house side (CAL-LI + -TECH); ch. 38
noun_stem_type('caltzacuticatca', '', '', '', animate).  % those shut in the houses (CAL- + TZACU-TI-CATCA)
noun_stem_type('caltzalan', 'tli', '', '', inanimate).  % wall between houses (K CALTZALAN-TLI)
noun_stem_type('caltzalanti', '', '', '', inanimate).  % passage between houses
noun_stem_type('caltzalāntli', '', '', '', inanimate).  % passage between houses (CAL- + -tzalān)
noun_stem_type('camac', '', '', '', inanimate).  % mouth, possessed stem (K CAMAC)
noun_stem_type('camoh', 'tli', 'cācamoh', 'cahcamoh', inanimate).  % sweet potato
noun_stem_type('capolin', '', '', '', animate).  % capulin cherry tree (K CAPOL-IN)
noun_stem_type('cavallome', '', '', '', animate).  % horses (Sp. caballo + -meh)
noun_stem_type('cavallostin', '', '', '', animate).  % horses (Sp. caballo + -tin)
noun_stem_type('caxitl', '', '', '', inanimate).  % bowl (K CAXIT-LI)
noun_stem_type('caxtōl', 'li', '', '', cardinal).  % fifteen (K CAXTŌL-LI)
noun_stem_type('caxtōl', 'li', '', '', inanimate).  % K CAXTŌL-LI fifteen
noun_stem_type('cēcen', '', '', '', cardinal).  % each one, K CĒCEN (distributive of CĒ)
noun_stem_type('cecenxīcalpechtli', '', '', '', inanimate).  % one mat each (CECEN + XĪCAL-LI + PECH-TLI)
noun_stem_type('cehualcalli', '', '', '', inanimate).  % ice-house (cehual-li + cal-li); no K headword
noun_stem_type('cem', '', 'cem', 'cem', cardinal).  % one (embed form)
noun_stem_type('cemānāhuac', '', '', '', inanimate).  % the whole world (K CEMĀNĀHUAC)
noun_stem_type('cemilhuitl', '', '', '', inanimate).  % one day (CEM + ILHUI-TL)
noun_stem_type('cemilhuitlapōhualli', '', '', '', inanimate).  % day count (CEM + ILHUI-TL + PŌHUAL-LI)
noun_stem_type('cemilhuitzintli', '', '', '', inanimate).  % one day (cem-ilhui-tzintli)
noun_stem_type('cemma', 'tl', '', '', inanimate).  % one hand-span (CEM- + MA(I)-TL)
noun_stem_type('cempoalteca', '', '', '', animate).  % gentilic 'person from Cempoala' (Cempōhual-li + -tēca-tl, Andrews 48.9); no K headword, pl. Cempoaltecah
noun_stem_type('cempoalteca', 'tl', '', '', animate).  % person of Cempoala; K CEMPOALTĒCA-TL
noun_stem_type('cempōhualilhuitl', '', '', '', inanimate).  % twenty days (CEMPŌHUAL-LI + ILHUI-TL)
noun_stem_type('cempōhuallteca', '', '', '', animate).  % person of Cempoallan
noun_stem_type('cempōhuallteca', 'tl', '', '', animate).  % person of Cempoallan (CEMPŌHUAL-LI + -TĒCA-TL)
noun_stem_type('cen', '', '', '', cardinal).  % one (numeral, listed as a noun stem)
noun_stem_type('cennequetzalli', '', '', '', adjective).  % as high as a standing man (CEM- + NEQUETZAL-LI)
noun_stem_type('centequiuh', '', '', '', inanimate).  % one day's work (CEM- + TEQUI-TL)
noun_stem_type('centlaman', 'tli', '', '', inanimate).  % one (thing) (K CENTLAMAN-TLI)
noun_stem_type('centlamanti', '', '', '', animate).  % one group/kind
noun_stem_type('centlapal', '', '', '', inanimate).  % one side (K CENTLAPAL)
noun_stem_type('cētequiuh', '', '', '', inanimate).  % one day's work (variant)
noun_stem_type('chāhuiz', 'tli', 'chāchāhuiz', 'chahchāhuiz', inanimate).  % a blight
noun_stem_type('chalca', '', '', '', animate).  % Chalca, people of Chalco
noun_stem_type('chalca', 'tl', '', '', animate).  % person of Chalco (K CHĀLCA-TL)
noun_stem_type('chalcatlahtoh', 'qui', '', '', animate).  % Chalca lord; pl. Chalcatlahtohqueh (< CHĀLCA-TL + TLAHTOHQUI)
noun_stem_type('chālcatlahtoh', 'qui', '', '', animate).  % long-vowel spelling (K CHĀLCA-TL)
noun_stem_type('chalchihui', 'tl', '', '', inanimate).  % K CHĀLCHIHU(I)-TL precious green stone
noun_stem_type('chālchihui', 'tl', 'chāchālchihui', 'chahchālchihui', inanimate).  % jade (K CHĀLCHIHU(I)-TL)
noun_stem_type('chālchihui', 'tl', 'chālchihui', 'chālchihui', inanimate).  % jade (K CHĀLCHIHU(I)-TL)
noun_stem_type('chālchiuh', '', '', '', inanimate).  % jade (combining form of CHĀLCHIHU(I)-TL)
noun_stem_type('chālchiuhcōānacoch', 'tli', '', '', inanimate).  % green-stone serpent earplug (CHĀLCHIHU(I)-TL + CŌĀ-TL + NACOCH-TLI)
noun_stem_type('chālchiuhcōzcapetla', 'tl', '', '', inanimate).  % jade-necklace mat ornament
noun_stem_type('chālchiuhtecuecuex', 'tli', '', '', inanimate).  % green-stone band (CHĀLCHIHU(I)-TL + TECUECUEX-TLI)
noun_stem_type('chalchiuhtepehua', '', '', '', animate).  % personal name Chalchiuhtepehua
noun_stem_type('chan', '', '', '', inanimate).  % home, residence
noun_stem_type('chan', 'tli', '', '', inanimate).  % home, residence
noun_stem_type('chān', '', '', '', inanimate).  % home (K CHAN-TLI, long ā)
noun_stem_type('chān', 'tli', '', '', inanimate).  % home (K CHĀN-TLI, long ā)
noun_stem_type('chāneh', '', '', '', animate).  % resident, householder (K CHĀNEH)
noun_stem_type('chantzinco', '', '', '', inanimate).  % home (CHAN-TLI + -TZIN + -CO): īnchantzinco
noun_stem_type('chāntzinco', '', '', '', inanimate).  % at his home (CHĀN-TLI + -tzin + -co)
noun_stem_type('chayahuac', '', '', '', inanimate).  % smooth, level (K CHAYĀHUAC)
noun_stem_type('chayahuaccōzca', 'tl', '', '', inanimate).  % chayahuac necklace
noun_stem_type('chāyāhuaccozcatl', '', '', '', inanimate).  % cloak design (CHĀYĀHUA + COZCA-TL)
noun_stem_type('chicāhuillo', '', '', '', animate).  % strong one, warrior (from CHICĀHUILIA); no K headword
noun_stem_type('chicalō', 'tl', '', '', inanimate).  % strength ( no K headword)
noun_stem_type('chichi', '', 'chīchichi', 'chihchichi', animate).  % dog
noun_stem_type('chichimal', '', '', '', inanimate).  % shield; variant of K CHĪMAL-LI (FC chichimal)
noun_stem_type('chīchīmal', '', '', '', inanimate).  % shield
noun_stem_type('chichioalli', '', '', '', inanimate).  % breast (K CHICHIOAL-LI)
noun_stem_type('chichiquil', 'li', '', '', inanimate).  % barbed arrow/crest; K CHICHIQUIL-LI
noun_stem_type('chicomilhuitl', '', '', '', inanimate).  % seven days (CHICŌME + ILHUITL)
noun_stem_type('chicōmilhuitl', '', '', '', inanimate).  % seven days (CHICŌME + ILHUITL)
noun_stem_type('chicōn', '', '', '', cardinal).  % seven (K CHICŌME)
noun_stem_type('chicuacen', '', '', '', cardinal).  % six (K CHICUACEN)
noun_stem_type('chicuēte', 'tl', '', '', cardinal).  % six (things) (K CHICUĒ-TE-TL)
noun_stem_type('chicunapōhualilhuitl', '', '', '', inanimate).  % nine twenties of days
noun_stem_type('chīl', '', '', '', inanimate).  % chili pepper
noun_stem_type('chīl', 'li', '', '', inanimate).  % chili pepper
noun_stem_type('chimal', 'li', 'chimal', 'chimal', inanimate).  % shield (K CHIMAL-LI, short i)
noun_stem_type('chīmal', 'li', '', '', inanimate).  % shield; K CHIMAL-LI / CHĪMAL-LI
noun_stem_type('chīmal', 'li', 'chīchīmal', 'chihchīmal', inanimate).  % shield (K CHĪMAL-LI)
noun_stem_type('chīmalpaio', '', '', '', inanimate).  % shield-banner design; no K headword
noun_stem_type('chimalpopoca', '', '', '', animate).  % personal name Chimalpopoca; no K headword
noun_stem_type('chimalxōchi', 'tl', '', '', inanimate).  % shield-flower (CHĪMAL-LI + XŌCHI-TL)
noun_stem_type('chinampaneca', '', '', '', animate).  % person of Chinampan
noun_stem_type('chinampaneca', 'tl', '', '', animate).  % person of Chinampa (K CHINAMPANECA-TL?)
noun_stem_type('chinantecatl', '', '', '', animate).  % Chinantec
noun_stem_type('chināpaneca', '', '', '', animate).  % Chinampaneca, person of the chinampa country; pl. Chināpanecah
noun_stem_type('chipacpul', '', '', '', adjective).  % perforated (K CHIPACPUL)
noun_stem_type('chipahuac', '', '', '', inanimate).  % something clean (K CHIPAHUAC, short a)
noun_stem_type('chipāhuac', '', '', '', inanimate).  % something clean/fine (K CHIPĀHUAC)
noun_stem_type('chipol', '', '', '', inanimate).  % cornstalk (chipolcōzcatl)
noun_stem_type('chipoli', '', '', '', inanimate).  % green stone / maize ear (CHIPŌL-LI)
noun_stem_type('cholōllan', '', '', '', inanimate).  % Cholula (K CHOLŌLLAN)
noun_stem_type('cholōlteca', 'tl', 'cholōlteca', 'cholōlteca', animate).  % Cholulan (K CHOLŌLTĒCA-TL)
noun_stem_type('chōquiz', '', '', '', inanimate).  % tears (K CHŌQUIZ-TLI)
noun_stem_type('cicitlal', '', '', '', animate).  % star
noun_stem_type('cicitlal', 'in', '', '', animate).  % star
noun_stem_type('cīcitlāl', 'in', '', '', animate).  % star (K CĪTLAL-IN, pl. CĪCITLĀLTIN)
noun_stem_type('cihuā', '', '', '', animate).  % woman, bare stem (K CIHUĀ-TL)
noun_stem_type('cihuā', 'tl', 'cīcihuā', 'cihcihuā', animate).  % woman
noun_stem_type('cihuācoa', 'tl', '', '', animate).  % Cihuācoatl (personal name; K CIHUĀ-TL + CŌĀ-TL)
noun_stem_type('cihuācoā', 'tl', '', '', animate).  % Cihuacoatl (high office); K CIHUĀCŌĀ-TL
noun_stem_type('cihuāpil', '', '', '', animate).  % lady, girl
noun_stem_type('cihuāpil', 'li', '', '', animate).  % lady, girl
noun_stem_type('cihuātzitzin', '', '', '', animate).  % honored women (CIHUĀ + -tzitzin)
noun_stem_type('cihuātzitzintin', '', '', '', animate).  % little women (CIHUĀ-TL + -tzitzin-tin)
noun_stem_type('cil', 'in', '', '', animate).  % snail (K CIL-IN)
noun_stem_type('cincalco', '', '', '', inanimate).  % cave/place Cincalco ( K CINCAL-LI 'corncrib', toponym)
noun_stem_type('citlal', 'in', '', '', animate).  % star (K CĪTLAL-IN)
noun_stem_type('citlal', 'in', 'cīcitlal', 'cihcitlal', inanimate).  % star
noun_stem_type('citlallotoc', '', '', '', inanimate).  % starry, star-covered (CITLALLOH + oca)
noun_stem_type('citlaltepec', '', '', '', inanimate).  % place Citlaltepec (no K headword)
noun_stem_type('cniu', '', '', '', animate).  % friend, possessed plural stem (to-cniu-huān)
noun_stem_type('cniuh', '', '', '', animate).  % friend, possessed stem of ICNĪUH-TLI
noun_stem_type('cnīuh', 'tli', '', '', animate).  % friend (with initial i elided)
noun_stem_type('cniuhuān', '', '', '', animate).  % his companions (supportive i elided: īcniuhuān)
noun_stem_type('coā', 'tl', 'cōcoā', 'cohcoā', animate).  % snake (from cohuatl)
noun_stem_type('cōā', 'tl', 'cōcōā', 'cohcōā', animate).  % snake (from cohuatl)
noun_stem_type('cōācalco', '', '', '', inanimate).  % Coacalco (cōā-cal-co)
noun_stem_type('coacalli', '', '', '', inanimate).  % temple storehouse (K CŌACAL-LI)
noun_stem_type('cōācozcayoh', '', '', '', inanimate).  % serpent-necklace design (CŌĀ-TL + COZCA-TL + -YOH)
noun_stem_type('coanaco', '', '', '', animate).  % Coanaco- before the honorific -tzin
noun_stem_type('cōanacoch', '', '', '', inanimate).  % serpent-ear ornament; no K headword
noun_stem_type('coanacot', '', '', '', animate).  % personal name Coanacotzin
noun_stem_type('coatlan', '', '', '', inanimate).  % place name Coatlan
noun_stem_type('cōātopil', '', '', '', inanimate).  % snake staff (cōā + topil)
noun_stem_type('coatzin', '', '', '', animate).  % personal name Coatzin
noun_stem_type('cōāxāyaca', 'tl', '', '', inanimate).  % snake mask
noun_stem_type('cōāxāyacayoh', '', '', '', inanimate).  % cloak design (CŌĀ-TL + XĀYA-TL + -YOH)
noun_stem_type('cochian', '', '', '', inanimate).  % sleeping place (īncochian; COCHI + -YAN)
noun_stem_type('cocohua', '', '', '', animate).  % snake
noun_stem_type('cocohua', 'tl', '', '', animate).  % snake
noun_stem_type('cocoliz', 'tli', '', '', inanimate).  % illness (K COCOLIZ-TLI)
noun_stem_type('cocone', '', '', '', animate).  % child
noun_stem_type('cocone', 'tl', '', '', animate).  % child
noun_stem_type('cocoyo', '', '', '', animate).  % coyote
noun_stem_type('cocoyo', 'tl', '', '', animate).  % coyote
noun_stem_type('cōhua', '', '', '', animate).  % snake
noun_stem_type('cōhua', 'tl', '', '', animate).  % snake
noun_stem_type('coiol', 'li', '', '', inanimate).  % bell (attested io for yo); K COYOL-LI
noun_stem_type('coiollotoc', '', '', '', inanimate).  % bell-like (COYOL-LI + oca)
noun_stem_type('cōl', '', '', '', animate).  % ancestor, subordinate (poss. -cōlhuān)
noun_stem_type('colhuaca', '', '', '', animate).  % person of Colhuacan
noun_stem_type('colhuacatl', '', '', '', animate).  % Colhuacatl, person from Colhuacan
noun_stem_type('colhuacatonco', '', '', '', inanimate).  % Colhuacatonco (place name; )
noun_stem_type('colhuahcan', '', '', '', inanimate).  % toponym Culhuacan (K COLHUAHCAN)
noun_stem_type('cōmal', 'li', '', '', inanimate).  % griddle; K COMĀL-LI (long ā)
noun_stem_type('comi', '', '', '', inanimate).  % pot
noun_stem_type('comi', 'tl', '', '', inanimate).  % pot
noun_stem_type('cōmi', '', '', '', inanimate).  % pot
noun_stem_type('cōmi', 'tl', '', '', inanimate).  % pot
noun_stem_type('cone', 'tl', 'cōcone', 'cohcone', animate).  % child
noun_stem_type('copalnamacoyan', '', '', '', inanimate).  % place name Copalnamacoyan
noun_stem_type('copolco', '', '', '', inanimate).  % place Copolco
noun_stem_type('cotomi', 'tl', 'cōcotomi', 'cohcotomi', inanimate).  % cotton garment
noun_stem_type('coton', '', '', '', inanimate).  % shirt
noun_stem_type('cotoncayohuān', '', '', '', animate).  % those with breechcloths (COTON-CA-YOH + -HUĀN)
noun_stem_type('cotz', 'tli', '', '', inanimate).  % calf of the leg (K COTZ-TLI)
noun_stem_type('cotzehuatl', '', '', '', inanimate).  % yellow garment/ornament (COTZ + ĒHUA-TL)
noun_stem_type('coxoli', '', '', '', inanimate).  % something crooked (COXOLIYŌ?)
noun_stem_type('coxoliyo', '', '', '', inanimate).  % something crooked/hollow (COXOLIYŌ)
noun_stem_type('coyō', 'tl', 'cōcoyo', 'cohcoyo', animate).  % coyote
noun_stem_type('coyoacan', '', '', '', inanimate).  % place name Coyoacan (K COYŌHUAHCĀN)
noun_stem_type('coyohuehue', '', '', '', animate).  % Coyohuehue- (+ tzin); no K headword
noun_stem_type('coyohuehuetzin', '', '', '', animate).  % personal name Coyohuehuetzin
noun_stem_type('coyōl', 'li', '', '', inanimate).  % bell; K COYOL-LI
noun_stem_type('cōyōl', 'li', '', '', inanimate).  % bell (K COYOL-LI)
noun_stem_type('coyonacazco', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('coyotomitl', '', '', '', inanimate).  % barbed dart (coyō-tl + mī-tl); no K headword
noun_stem_type('cozca', 'tl', '', '', inanimate).  % necklace, ornament (K COZCA-TL; first vowel unmarked in K, cf. CŌZCA- in TŌTOLCŌZCA-TL)
noun_stem_type('cōzca', 'tl', '', '', inanimate).  % necklace (K COZCA-TL; ō in compounds)
noun_stem_type('cōzca', 'tl', 'cōcōzca', 'cohcōzca', inanimate).  % necklace, ornament (K CŌZCA-TL; cf. parser's cozca)
noun_stem_type('cozcapetla', 'tl', '', '', inanimate).  % necklace mat (CŌZCA-TL + PETLA-TL)
noun_stem_type('coznoch', 'tli', '', '', inanimate).  % yellow cactus fruit (COZ-TIC + NOCH-TLI)
noun_stem_type('cozoltentoc', '', '', '', animate).  % one lying in the cradle (COZOL- + TENTOC)
noun_stem_type('cozpol', '', '', '', inanimate).  % yellow reed (COZPUL)
noun_stem_type('cozpul', '', '', '', inanimate).  % variant spelling of COZPUL
noun_stem_type('cōzqui', '', '', '', inanimate).  % necklace (possessed of CŌZCA-TL)
noun_stem_type('coztalanpopul', '', '', '', inanimate).  % opaque item (cf. COZ-TIC + TALANPOPUL)
noun_stem_type('cōztic', '', '', '', inanimate).  % yellow thing (K CŌZTIC)
noun_stem_type('cpac', '', '', '', inanimate).  % on top of (relational -CPAC)
noun_stem_type('cpal', '', '', '', inanimate).  % possessed stem of (I)CPAL-LI (initial i elided after ī-): īcpal
noun_stem_type('cpal', 'li', '', '', inanimate).  % seat (K (I)CPAL-LI)
noun_stem_type('cuā', 'tl', '', '', inanimate).  % head (CUĀI-TL, stem cuā-)
noun_stem_type('cuach', '', '', '', inanimate).  % cotton (K CUĀCH-TLI)
noun_stem_type('cuach', 'tli', '', '', inanimate).  % cotton cloth (K CUĀCH-TLI)
noun_stem_type('cuachic', '', '', '', animate).  % shorn one, warrior (K CUACHIC)
noun_stem_type('cuachpan', 'tli', '', '', inanimate).  % banner? cotton banner ( cf. K PĀN-TLI)
noun_stem_type('cuachpani', 'tl', '', '', inanimate).  % head-banner?; no K headword
noun_stem_type('cuacoltic', '', '', '', inanimate).  % bent thing (K CUĀCOL-TIC)
noun_stem_type('cuacuachic', '', '', '', animate).  % shorn-headed warrior (pl. cuacuachictin); K CUĀCUACHIC-TLI
noun_stem_type('cuacuachictin', '', '', '', animate).  % those with scraped heads (K CUĀCUACHIC-TIN)
noun_stem_type('cuacuauhtzin', '', '', '', animate).  % personal name Cuacuauhtzin
noun_stem_type('cuahhui', 'tl', 'cuācuahhui', 'cuahcuahhui', inanimate).  % tree, wood
noun_stem_type('cuahui', 'tl', '', '', inanimate).  % tree, wood (K CUAHU(I)-TL); existing cuahui
noun_stem_type('cuahui', 'tl', 'cuācuahui', 'cuahcuahui', inanimate).  % tree, wood
noun_stem_type('cuahuilacapitz', 'tli', '', '', inanimate).  % wooden fife (cuahui + lacapitz-tli)
noun_stem_type('cuāiztac', '', '', '', adjective).  % gray-haired (K CUĀIZTAC)
noun_stem_type('cualoni', '', '', '', inanimate).  % food, something edible (K CUALŌNI)
noun_stem_type('cuamimilli', '', '', '', inanimate).  % wooden(?) something; no K headword
noun_stem_type('cuappiatzin', '', '', '', animate).  % Cuappiatzin (personal name)
noun_stem_type('cuappiaz', '', '', '', animate).  % personal name Quappiaztzin, spelling Cuappiaztzin (no K headword)
noun_stem_type('cuapuert', '', 'cuāpuert', 'cuahpuert', inanimate).  % door (loan)
noun_stem_type('cuapuertah', '', '', '', inanimate).  % door (loan)
noun_stem_type('cuatochin', '', '', '', animate).  % rabbit
noun_stem_type('cuātzacutica', '', '', '', inanimate).  % tied on the head (cuā- + tzacutli + -ca)
noun_stem_type('cuātzacutli', '', '', '', inanimate).  % head-binding
noun_stem_type('cuauh', '', '', '', animate).  % eagle (short form; ch. 33 Cuauh)
noun_stem_type('cuāuh', '', '', '', animate).  % eagle
noun_stem_type('cuāuh', 'tli', '', '', animate).  % eagle
noun_stem_type('cuauhamatl', '', '', '', inanimate).  % eagle-paper shield design; no K headword
noun_stem_type('cuauhcamac', '', '', '', inanimate).  % wooden beam? (cuahuitl + camac 'mouth'); ch. 38
noun_stem_type('cuauhcamoh', 'tli', '', '', inanimate).  % cassava, manioc (K CUAUHCAMOH-TLI)
noun_stem_type('cuauhchīmal', 'li', '', '', inanimate).  % wooden shield (cuāuh + chīmal); K CUAUH-, CHĪMAL-LI
noun_stem_type('cuauhchimalli', '', '', '', inanimate).  % wooden shield (CUAHUITL + CHĪMAL-LI)
noun_stem_type('cuauhecatitlan', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('cuauhquecholtecacal', 'li', '', '', inanimate).  % house of the Quauhquecholteca; no K headword
noun_stem_type('cuauhquemitl', '', '', '', inanimate).  % CUĀUH-TLI + QUĒMI-TL eagle garment
noun_stem_type('cuauhquiahuac', '', '', '', inanimate).  % toponym Cuauhquiahuac (CUĀUH-TLI + QUIAHUAC)
noun_stem_type('cuauhquiyahuac', '', '', '', inanimate).  % place Cuauhquiyahuac
noun_stem_type('cuauhtechcac', '', '', '', inanimate).  % toponym Cuauhtechcac; no K headword, opaque
noun_stem_type('cuauhtemalacac', '', '', '', inanimate).  % wooden wheel (cuāuh + temalacac-tli); lexicalized
noun_stem_type('cuāuhtemalacal', 'li', '', '', inanimate).  % catapult ( cuāuh-temalacatl)
noun_stem_type('cuāuhtemalacatl', '', '', '', inanimate).  % catapult ( sources -tl)
noun_stem_type('cuāuhtematla', 'tl', '', '', inanimate).  % catapult ( variant)
noun_stem_type('cuāuhtemoc', '', '', '', animate).  % Cuāuhtemōc (personal name; no K headword)
noun_stem_type('cuauhtemoctzin', '', '', '', animate).  % personal name Cuauhtemoctzin
noun_stem_type('cuāuhtemoctzin', '', '', '', animate).  % personal name Cuāuhtemoctzin
noun_stem_type('cuauhtex', 'tli', 'cuauhtex', 'cuauhtex', inanimate).  % wood flour (CUAHU(I)-TL + TEX-TLI)
noun_stem_type('cuauhtic', '', '', '', adjective).  % tall, eagle-like (K CUAUHTIC)
noun_stem_type('cuauhtitlam', '', '', '', inanimate).  % place name Cuauhtitlan (hyphenated Cuauhtitlam-pa in sources)
noun_stem_type('cuauhtitlampa', '', '', '', inanimate).  % toward Cuauhtitlan
noun_stem_type('cuauhtitlan', '', '', '', inanimate).  % CUAUHTITLAN, place name
noun_stem_type('cuāuhtla', '', '', '', inanimate).  % place Mictlanquauhtla
noun_stem_type('cuauhtlalpiloni', '', '', '', inanimate).  % wooden binding (CUAHU(I)-TL + TLALPILŌNI)
noun_stem_type('cuauhtlapech', 'tli', '', '', inanimate).  % wooden platform/scaffold; K CUAUHTLAPECH-TLI
noun_stem_type('cuauhtlapitzalli', '', '', '', inanimate).  % wooden flute (CUAHU(I)-TL + TLAPITZAL-LI)
noun_stem_type('cuauhtlaxcalla', '', '', '', inanimate).  % Quauhtexcallan, place name
noun_stem_type('cuāuhtlocēlōtl', '', '', '', animate).  % eagle-ocelot warrior
noun_stem_type('cuauhtzapo', 'tl', '', '', inanimate).  % annona (K CUAUHTZAPO-TL)
noun_stem_type('cuauhxicalco', '', '', '', inanimate).  % place Cuauhxicalco (CUAUH-XICAL-LI + -co)
noun_stem_type('cuauhxilo', 'tl', '', '', inanimate).  % cuajilote (CUAHU(I)-TL + XILO-TL)
noun_stem_type('cue', '', '', '', inanimate).  % skirt
noun_stem_type('cuecuex', 'tli', '', '', inanimate).  % necklace (chālchiuhcuecuextli)
noun_stem_type('cuei', 'tl', 'cūcuei', 'cuhcuei', inanimate).  % skirt
noun_stem_type('cuepopan', '', '', '', inanimate).  % CUEPOPAN, place name
noun_stem_type('cuētlāchtli', '', '', '', animate).  % wolf (K CUĒTLĀCH-TLI)
noun_stem_type('cuetlax', 'tli', '', '', inanimate).  % leather (K CUETLAX-TLI)
noun_stem_type('cuetlaxteca', 'tl', '', '', animate).  % person from Cuetlaxtlan (CUETLAX-TLI + -TĒCA-TL; no K headword)
noun_stem_type('cuetlaxtlan', '', '', '', inanimate).  % Cuetlaxtlan
noun_stem_type('cuetzpal', 'in', '', '', animate).  % lizard (K CUETZPAL-IN)
noun_stem_type('cueuchi', '', '', '', inanimate).  % skirt (variant of cueitl); no K headword
noun_stem_type('cuexcochtlan', '', '', '', inanimate).  % at the waist (cuexcochtli + -tlan)
noun_stem_type('cuexpal', '', '', '', animate).  % Cuexpal, a youth's name; no K headword
noun_stem_type('cueya', '', '', '', animate).  % frog
noun_stem_type('cueya', 'tl', '', '', animate).  % frog
noun_stem_type('cuīca', 'tl', '', '', inanimate).  % song (K CUĪCA-TL)
noun_stem_type('cuicuitzca', 'tl', '', '', animate).  % swallow (bird) (K CUĪCULTZCA-TL)
noun_stem_type('cuillotca', '', '', '', adjective).  % combining form of CUILLOTIC before -tōn
noun_stem_type('cuillotic', '', '', '', adjective).  % slender, thin (FC; cf. CUĪLLI 'something twisted')
noun_stem_type('cuitlahuac', '', '', '', inanimate).  % toponym/personal name Cuitlahuac
noun_stem_type('cuitlahuaca', '', '', '', animate).  % person of Cuitlahuac
noun_stem_type('cuitlahuacah', '', '', '', animate).  % people of Cuitlahuac
noun_stem_type('cuitlahuacatl', '', '', '', animate).  % Cuitlahuacatl, lord of Mexico
noun_stem_type('cuitlalpitoc', '', '', '', animate).  % personal name Cuitlalpitoc
noun_stem_type('cuitlapan', '', '', '', inanimate).  % back, behind (K CUITLAPAN-TLI)
noun_stem_type('cuitlapil', 'li', '', '', inanimate).  % tail (K CUITLAPIL-LI)
noun_stem_type('cuitlaxcol', 'li', '', '', inanimate).  % K CUITLAXCOL-LI intestines
noun_stem_type('cuitlaxcul', 'li', '', '', inanimate).  % variant of CUITLAXCOL-LI (u for o)
noun_stem_type('cxi', '', '', '', inanimate).  % foot (possessed stem of ICX-TLI)
noun_stem_type('cxic', '', '', '', inanimate).  % foot, possessed stem (K (I)CXI-TL): īcxic
noun_stem_type('cxīcoyol', '', '', '', inanimate).  % cotton seed (K ICHCAYOL-LI)
noun_stem_type('e', 'tl', 'ēe', 'ehe', inanimate).  % bean
noun_stem_type('ē', 'tl', 'ēē', 'ehē', inanimate).  % bean
noun_stem_type('eca', '', '', '', animate).  % Ecatl (personal name; K EKA-TL 'wind')
noun_stem_type('eca', 'tl', '', '', animate).  % wind (h-less EHĒCA-TL)
noun_stem_type('ecaoaz', 'tli', '', '', inanimate).  % wind-bark(?) ornament
noun_stem_type('ecatenpatil', '', '', '', animate).  % personal name Ecatenpatiltzin (no K headword)
noun_stem_type('ehcamalaco', 'tl', '', '', inanimate).  % whirlwind; K EHCAMALACO-TL
noun_stem_type('ehcatepoz', 'tli', '', '', inanimate).  % wind-axe (ehca-tl + tepoz-tli); no K headword
noun_stem_type('ehēca', 'tl', 'ēehēca', 'ehēca', animate).  % wind
noun_stem_type('ehuachimal', '', '', '', inanimate).  % raised shield (ĒHUA + CHĪMAL-LI)
noun_stem_type('ēhuachīmal', 'li', '', '', inanimate).  % leather shield (ēhua-tl + chīmal); K ĒHUA-TL, CHĪMAL-LI
noun_stem_type('ehuachimalli', '', '', '', inanimate).  % leather shield (EHUA-TL + CHĪMAL-LI)
noun_stem_type('ēhuachimalli', '', '', '', inanimate).  % hide shield (ĒHUA-TL? + CHĪMAL-LI)
noun_stem_type('eloixcalli', '', '', '', inanimate).  % maize cooked in ashes (ELŌ-TL + IXCAL-LI)
noun_stem_type('elopaoaxtli', '', '', '', inanimate).  % baked maize (ELŌ-TL + PAOASTLI)
noun_stem_type('elotamalli', '', '', '', inanimate).  % maize tamal (ELŌ-TL + TAMAL-LI)
noun_stem_type('elotl', '', '', '', inanimate).  % fresh ear of maize (K ELŌ-TL)
noun_stem_type('elotlaxcalli', '', '', '', inanimate).  % maize tortilla (ELŌ-TL + TLAXCAL-LI)
noun_stem_type('eloxoxouhqui', '', '', '', inanimate).  % tender cooked maize (ELŌ-TL + XOXOUHQUI)
noun_stem_type('elozaca', 'tl', '', '', inanimate).  % green grass (ELO- + ZACA-TL)
noun_stem_type('elpan', '', '', '', inanimate).  % chest (tēelpan; K ELPANTLI)
noun_stem_type('elpan', 'li', '', '', inanimate).  % breast (K ELPAN-TLI)
noun_stem_type('ēltapach', 'tli', '', '', inanimate).  % K ĒLTAPACH-TLI chest
noun_stem_type('ene', '', '', '', animate).  % (used in Tiācāhuānē)
noun_stem_type('epnepaniuhqui', '', '', '', inanimate).  % paired (nepaniuhqui)
noun_stem_type('ētlaman', 'tli', '', '', inanimate).  % three (things) (ēyi + TLAMAN-TLI)
noun_stem_type('etzalcualiztli', '', '', '', inanimate).  % Etzalcualiztli (month)
noun_stem_type('ez', 'ti', '', '', inanimate).  % blood, ti-class variant
noun_stem_type('ez', 'tli', '', '', inanimate).  % blood (K EZ-TLI)
noun_stem_type('ezpan', '', '', '', inanimate).  % possessed form of EZPANI-TL (īezpan)
noun_stem_type('ezpani', 'tl', '', '', inanimate).  % blood (K EZPANI-TL)
noun_stem_type('eztle', 'tl', '', '', inanimate).  % blood-red fire (ez-tli + tle-tl); no K headword
noun_stem_type('ezyō', '', '', '', inanimate).  % blood (poss. of EZ-TLI + -YŌ)
noun_stem_type('ezzō', '', '', '', inanimate).  % possessed EZ-TLI 'his blood' (-EZYŌ)
noun_stem_type('ēzzoh', '', '', '', inanimate).  % blood, possessed stem (K EZ-TLI, -EZZO): īmēzzoh
noun_stem_type('hecatēpatiltzin', '', '', '', animate).  % Hecatēpatiltzin (personal name)
noun_stem_type('hecaxonecuil', 'li', '', '', inanimate).  % wind-staff ornament (XONECUIL-LI)
noun_stem_type('hihui', 'tl', '', '', animate).  % hummingbird (K HIHUI-TL?; unmarked)
noun_stem_type('huacax', '', '', '', animate).  % cow (loan)
noun_stem_type('hualōni', '', '', '', inanimate).  % something to be drunk (Ī 'to drink' + -lōni)
noun_stem_type('huapaltentoc', '', '', '', animate).  % one lying on the cradle board (HUAPAL- + TENTOC)
noun_stem_type('huauh', 'tli', '', '', inanimate).  % K HUAUH-TLI amaranth
noun_stem_type('huēhuē', '', '', '', animate).  % old man (K HUĒHUEH)
noun_stem_type('huēhuē', 'tl', 'huēhuēhuē', 'huehhuē', inanimate).  % drum (K HUĒHUĒ-TL)
noun_stem_type('huēhuēchān', '', '', '', inanimate).  % old home (HUĒHUĒ + CHĀN)
noun_stem_type('huēhueh', '', '', '', animate).  % old man (K HUĒHUEH, pl. HUEHUETQUEH)
noun_stem_type('huēhuēintin', '', '', '', animate).  % old men (K HUĒHUĒINTIN)
noun_stem_type('huehueteca', 'tl', '', '', animate).  % gentilic/personal name in the list of five (no K headword)
noun_stem_type('huehuetl', '', '', '', inanimate).  % cylindrical drum (K HUEHUETL)
noun_stem_type('huēi', '', 'huēi', 'huēi', adjective).  % big
noun_stem_type('hueicameca', 'tl', '', '', animate).  % personal name Hueicamecatl (no K headword)
noun_stem_type('hueican', '', '', '', inanimate).  % place name Hueican
noun_stem_type('huelica', '', '', '', inanimate).  % truth (cf. K HUEL)
noun_stem_type('huentli', '', '', '', inanimate).  % offering (K HUENTLI)
noun_stem_type('huepantli', '', '', '', inanimate).  % beam
noun_stem_type('huexōtzinca', 'tl', '', '', animate).  % someone from Huexotzinco; K HUEXŌTZINCA-TL
noun_stem_type('huēyi', '', 'huēyi', 'huēyi', adjective).  % big
noun_stem_type('huic', '', '', '', inanimate).  % relational -HUIC toward (īhuic)
noun_stem_type('huīc', '', '', '', inanimate).  % toward (K -HUĪC): īhuīc
noun_stem_type('huipīl', 'li', 'huipīl', 'huipīl', inanimate).  % shirt, cuirass (K HUIPĪL-LI)
noun_stem_type('huitecoc', '', '', '', inanimate).  % bolt of lightning (K HUITECOC, short i)
noun_stem_type('huitzilhuatzin', '', '', '', animate).  % personal name Huitzilhuatzin
noun_stem_type('huitzillan', '', '', '', inanimate).  % place name Huitzillan
noun_stem_type('huītzillan', '', '', '', inanimate).  % Huītzillan (place name)
noun_stem_type('huītzilōpōch', 'tli', '', '', animate).  % Huītzilōpōchtli; K HUITZILOPOCH-TLI
noun_stem_type('huītzilōpōchco', '', '', '', inanimate).  % toponym Huitzilopochco (< HUITZILOPOCH-TLI + -co)
noun_stem_type('huitzitzil', 'in', 'huitzitzil', 'huitzitzil', animate).  % hummingbird (K HUĪTZIL-IN)
noun_stem_type('huītzitzillacō', 'tl', '', '', inanimate).  % hummingbird-thorn design; no K headword
noun_stem_type('huītzitzilnāhuāl', '', '', '', inanimate).  % hummingbird disguise; no K headword
noun_stem_type('huitzitzin', '', '', '', animate).  % personal name Huitzitzin
noun_stem_type('huitznahuatl', '', '', '', animate).  % personal name Huitznahuatl
noun_stem_type('huītznahuatlailotlac', '', '', '', animate).  % title Huītznahuatlailotlac (HUITZNAHUA-TL + -TLAILOTLAC; no K headword)
noun_stem_type('huītznāhuayō', 'tl', '', '', inanimate).  % hummingbird-skin design; no K headword
noun_stem_type('iacac', '', '', '', inanimate).  % front, presence (possession of YAC(A)-TL)
noun_stem_type('iāhuān', '', '', '', animate).  % his enemies (possessed plural of YĀŌ-TL)
noun_stem_type('iāuhtlatqui', 'tl', '', '', inanimate).  % war gear (yāō- + tlatqui)
noun_stem_type('ichca', 'tl', 'īichca', 'ihichca', animate).  % sheep, cotton
noun_stem_type('ichcahuipil', 'li', '', '', inanimate).  % cotton armour; K ICHCAHUIPIL-LI
noun_stem_type('ichcahuīpil', '', '', '', inanimate).  % cotton breechcloth
noun_stem_type('īchopilotenteuh', '', '', '', inanimate).  % his crystal lip plug (Ī- + CHOPIL-TENTEUH)
noun_stem_type('ichpō', '', '', '', animate).  % daughter, possessed stem (im-ichpō-huān)
noun_stem_type('ichpoca', 'tl', 'īichpoca', 'ihichpoca', animate).  % young woman
noun_stem_type('ichpōch', '', '', '', animate).  % girl
noun_stem_type('ichpōch', 'tli', '', '', animate).  % girl
noun_stem_type('ichtilmahtli', '', '', '', inanimate).  % secret cloak (ICHTACA + TILMAH-TLI)
noun_stem_type('icni', '', '', '', animate).  % sibling
noun_stem_type('icni', 'tl', '', '', animate).  % sibling
noun_stem_type('icni', 'tli', '', '', animate).  % sibling
noun_stem_type('īcnīhuān', '', '', '', animate).  % his friends (ī- + ICNĪUH + -huān)
noun_stem_type('icniō', '', '', '', animate).  % possessed stem of ICNĪUH (īmicniōhuān)
noun_stem_type('icniuh', '', '', '', animate).  % friend (K ICNĪUH-TLI, absolutive dropped)
noun_stem_type('icnīuh', 'tli', 'īicnīuh', 'ihicnīuh', animate).  % friend
noun_stem_type('icniuhuān', '', '', '', animate).  % his companions (ICNĪUH + -huān)
noun_stem_type('icnohilama', '', '', '', animate).  % poor old woman (K ICNO- + ILAMAT)
noun_stem_type('icnohuehue', '', '', '', animate).  % poor old man (K ICNO- + HUĒHUEH)
noun_stem_type('icnohuēhuē', '', '', '', animate).  % poor old man
noun_stem_type('icnoyōac', '', '', '', adjective).  % desolate, bereaved (K ICNOYŌAC)
noun_stem_type('icpac', '', '', '', inanimate).  % top, head (tēicpac; K -(I)CPAC)
noun_stem_type('icpacxōchi', 'tl', '', '', inanimate).  % flower on high (I-CPAC + XŌCHI-TL)
noun_stem_type('icpal', 'li', '', '', inanimate).  % seat (K (I)CPAL-LI)
noun_stem_type('īcuāuhyō', '', '', '', inanimate).  % his eagle costume (ī- + CUĀUH-TLI + -YŌ)
noun_stem_type('icxi', '', '', '', inanimate).  % foot (K IKX-I, possessed -icxi)
noun_stem_type('icxic', '', '', '', inanimate).  % foot, plural possessed stem (K (I)CXI-TL): īmicxic
noun_stem_type('īcxic', '', '', '', inanimate).  % his foot (Ī- + (I)CXI-TL)
noun_stem_type('īcxīcoyolli', '', '', '', inanimate).  % cotton-seed ornament (possessed lexicalized)
noun_stem_type('icxitlan', '', '', '', inanimate).  % at the foot (ICXI-TL + -TLAN)
noun_stem_type('ihiyō', 'tl', '', '', inanimate).  % breath, spirit (K IHĪYŌ-TL)
noun_stem_type('ihīyo', '', '', '', inanimate).  % breath, possessed stem (K IHIYO-TL): īmihīyō
noun_stem_type('ihīyō', '', '', '', inanimate).  % breath, possessed stem (K IHIYO-TL, long ō): īmihīyō
noun_stem_type('ihti', 'tl', '', '', inanimate).  % belly (K ĪHTI-TL)
noun_stem_type('ihtic', '', '', '', inanimate).  % inside (variant of ITIC; K -IHTEC)
noun_stem_type('ihui', 'tl', '', '', inanimate).  % K IHUI-TL feather
noun_stem_type('ihui', 'tl', 'īihui', 'ihihui', inanimate).  % feather (K IHUI-TL)
noun_stem_type('ihuitzoncal', 'li', '', '', inanimate).  % feather headdress (IHUI-TL + TZONCAL-LI)
noun_stem_type('īhyo', '', '', '', inanimate).  % breath (possessed -īhyo); K IHYO-TL
noun_stem_type('iichcahuipil', '', '', '', inanimate).  % cotton armour (FC possessive īm-iichcahuipil)
noun_stem_type('ilama', 'tl', '', '', animate).  % old woman (K ILAMA-TL)
noun_stem_type('ilamatzitzin', '', '', '', animate).  % honored old women (ILAMA + -tzitzin)
noun_stem_type('ilhui', 'tl', '', '', inanimate).  % K ILHUI-TL day, festival
noun_stem_type('ilhuica', '', '', '', inanimate).  % sky, heaven (K ILHUICAC)
noun_stem_type('ilhuica', 'tl', '', '', inanimate).  % sky (K ILHUICA-TL)
noun_stem_type('ilhuicatitech', '', '', '', inanimate).  % at the edge of the sky
noun_stem_type('ilhuicayōllōtitech', '', '', '', inanimate).  % at the heart of the sky
noun_stem_type('ilhuiuh', '', '', '', inanimate).  % his festival (possessed ILHUI-TL with -uh)
noun_stem_type('iliacac', '', '', '', inanimate).  % place name Iliacac/Ilyacac
noun_stem_type('īmatitech', '', '', '', inanimate).  % in/on his hand (MĀ(I)-TL + -TECH)
noun_stem_type('īmixiptlāhuān', '', '', '', animate).  % his images (īm- + IXIPTLA + -huān)
noun_stem_type('inezcoayan', '', '', '', inanimate).  % INEZCOAYAN, place name
noun_stem_type('intlahtohcāuh', '', '', '', animate).  % their lord
noun_stem_type('intlatlacul', '', '', '', inanimate).  % their sin (ĪN- + TLATLACUL-LI)
noun_stem_type('iōllo', '', '', '', inanimate).  % his heart (possessed YŌLLŌ-TL): īniōllo
noun_stem_type('īpopolochcopa', '', '', '', inanimate).  % in his babbling manner (POPOLOCH-COPA)
noun_stem_type('īpozolcac', '', '', '', inanimate).  % its pozolcac (lexicalized possessed form)
noun_stem_type('iquiyāhuāyoc', '', '', '', inanimate).  % at the entryway (K IQUIYĀHUĀYŌ-C)
noun_stem_type('ītepuzmācuāuh', '', '', '', inanimate).  % his iron sword (ī- + TEPOZ-TLI + MĀCUĀHUITL)
noun_stem_type('ithual', 'li', '', '', inanimate).  % courtyard; K IHTUAL-LI (FC ithualli)
noun_stem_type('itic', '', '', '', inanimate).  % inside (Andrews 47.2 (ihti-c)/(ihte-c), h-less variant; K -IHTEC): īitic = ī- + itic
noun_stem_type('ītlāhuiz', '', '', '', inanimate).  % his device (ī- + TLAHUIZ-TLI)
noun_stem_type('ītōcāyōcan', '', '', '', inanimate).  % its named place (Ī- + TŌCĀYŌ- + -can)
noun_stem_type('itz', 'tli', '', '', inanimate).  % obsidian (K ITZ-TLI)
noun_stem_type('itzcac', 'tli', '', '', inanimate).  % obsidian sandal (ITZ-TLI + CAC-TLI)
noun_stem_type('itzcoatzin', '', '', '', animate).  % Itzcoatzin (personal name)
noun_stem_type('itzcuauhtzin', '', '', '', animate).  % Itzcuauhtzin (personal name)
noun_stem_type('itzcui', 'tli', 'itzcui', 'itzcui', animate).  % dog, possessed stem (im-itzcui-huān)
noun_stem_type('itzcuin', 'tli', 'itzcuin', 'itzcuin', animate).  % dog (K ITZCUIN-TLI)
noun_stem_type('ītzcuino', '', '', '', animate).  % dog (possessed pl. stem of itzcuin-tli); K ITZCUIN-TLI
noun_stem_type('itzcuintzin', '', '', '', animate).  % personal name Itzcuintzin
noun_stem_type('itzmī', 'tl', '', '', inanimate).  % obsidian arrow (itz-tli + mī-tl); K MĪ-TL
noun_stem_type('itzpapalotzin', '', '', '', animate).  % personal name Itzpapalotzin
noun_stem_type('itztapalapan', '', '', '', inanimate).  % toponym Iztapalapan (K ITZTAPALAPAN)
noun_stem_type('itztapalapaneca', '', '', '', animate).  % person of Itztapalapan
noun_stem_type('itztapalapanecatl', '', '', '', animate).  % person from Itztapalapan
noun_stem_type('ix', '', 'īx', 'īx', inanimate).  % face, surface, eye (IX-TLI)
noun_stem_type('īx', '', '', '', inanimate).  % face (K ĪX-TLI)
noun_stem_type('ixco', '', '', '', inanimate).  % face, presence (tēixco; K -IXCO)
noun_stem_type('ixcoiānyiaxca', '', '', '', inanimate).  % own personal property (ixcoiān + y + āxca; no K headword)
noun_stem_type('ixiptla', 'tl', '', '', animate).  % ĪXIPTLA image, representative
noun_stem_type('īxiptla', '', '', '', inanimate).  % image (K ĪXIPTLA)
noun_stem_type('īxpan', '', '', '', inanimate).  % before, in the presence of (īnīxpan)
noun_stem_type('īxpeyoc', 'tli', '', '', inanimate).  % blink (IX-TLI + PEYOC; possessed īxpeyoc)
noun_stem_type('īxtiyōl', '', '', '', animate).  % eye
noun_stem_type('īxtiyōl', 'li', '', '', animate).  % eye
noun_stem_type('ixtlahuatōntli', '', '', '', inanimate).  % plain, savannah (K IXTLAHUATŌN-TLI)
noun_stem_type('īxtli', '', '', '', inanimate).  % face (K ĪX-TLI, short i)
noun_stem_type('īxxāyac', '', '', '', animate).  % face
noun_stem_type('īyacac', '', '', '', inanimate).  % its point (ī- + YACAC)
noun_stem_type('iyāō', '', '', '', animate).  % enemy (variant with supportive i): īniyāōhuān
noun_stem_type('iyauhtenco', '', '', '', inanimate).  % Iyauhtenco (place name)
noun_stem_type('iyexōchi', 'tl', '', '', inanimate).  % iye-flower
noun_stem_type('īyohquichoan', '', '', '', animate).  % one of his retainers
noun_stem_type('iyōlcān', '', '', '', inanimate).  % birthplace (YŌL-LI + -CĀN)
noun_stem_type('iyōlli', '', '', '', inanimate).  % heart? (K YŌL-LI)
noun_stem_type('iyōllo', '', '', '', animate).  % heart, possessed stem without initial ī: īniyōllo
noun_stem_type('iyōllo', '', '', '', inanimate).  % heart, supportive-ī possessed stem (īn-iyōllo)
noun_stem_type('īyōllo', '', '', '', animate).  % heart, possessed stem (K YŌLLŌ-TL): noīyōllo
noun_stem_type('īyōllō', '', '', '', animate).  % heart (poss. stem of YŌLLŌ-TL)
noun_stem_type('iyōnocān', '', '', '', inanimate).  % foundation site (YŌNO- + -CĀN)
noun_stem_type('izcalli', '', '', '', inanimate).  % Izcalli (month)
noun_stem_type('izqui', '', '', '', inanimate).  % as much, all (K IZQUI)
noun_stem_type('izquitlaman', 'tli', '', '', inanimate).  % all kinds of things (IZQUI + TLAMAN-TLI)
noun_stem_type('izquixōchi', 'tl', '', '', inanimate).  % izqui-flower (K IZQUIXŌCHI-TL)
noun_stem_type('iztac', '', '', '', inanimate).  % white thing (K IZTAC)
noun_stem_type('iztactepetl', '', '', '', inanimate).  % toponym Iztactepetl 'White Mountain' = iztac + tepē-tl (K IZTAC, TEPĒ-TL); lexicalised
noun_stem_type('iztanamacoyan', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('iztāya', '', '', '', inanimate).  % whitening, brightening: action noun of K IZTĀY(A); īiztaya = ī- + iztāya (possessive-state NNC)
noun_stem_type('mā', '', '', '', inanimate).  % hand (possessed -mā); K MĀ(I)-TL
noun_stem_type('mā', 'tl', 'māmā', 'mahmā', inanimate).  % hand (MĀI-TL, stem mā-)
noun_stem_type('mac', '', '', '', inanimate).  % hand, possessed stem (K MĀ(I)-TL, -MA): īmac
noun_stem_type('macal', 'li', '', '', inanimate).  % staff, rod; K MACAL-LI
noun_stem_type('macatzintamalco', '', '', '', inanimate).  % toponym Macatzintamalco
noun_stem_type('macauh', '', '', '', inanimate).  % in the hands of (K -MAC + -C)
noun_stem_type('macehual', 'li', 'māmacehual', 'mahmacehual', animate).  % commoner
noun_stem_type('mācehual', 'li', '', '', animate).  % variant spelling of MĀCĒHUAL-LI
noun_stem_type('mācehual', 'li', 'māmācehual', 'mahmācehual', animate).  % commoner (K MĀCEHUAL-LI)
noun_stem_type('mācēhual', 'li', '', '', animate).  % commoner; K MĀCĒHUAL-LI (long ē)
noun_stem_type('mācēhualhuān', '', '', '', animate).  % his commoners (pl.)
noun_stem_type('mācēhualtin', '', '', '', animate).  % commoners (lexicalised plural of MĀCĒHUAL-LI; -tin plural)
noun_stem_type('machiyō', 'tl', '', '', inanimate).  % sign (K MACHIYŌ-TL)
noun_stem_type('machonco', 'tl', '', '', inanimate).  % bracelet/arm band ( no K headword, opaque)
noun_stem_type('mācpal', 'li', '', '', inanimate).  % K MĀCPAL-LI palm of the hand
noun_stem_type('mācuahuitl', '', '', '', inanimate).  % club (K MĀCUAHUI-TL)
noun_stem_type('macuauh', '', '', '', inanimate).  % sword (K MACCUAHU(I)-TL, possessed -macuauh)
noun_stem_type('mācuāuh', '', '', '', inanimate).  % sword, possessed stem with long vowels
noun_stem_type('macuilcuitlapilco', '', '', '', inanimate).  % place name Macuilcuitlapilco; no K headword
noun_stem_type('macuililhuitl', '', '', '', inanimate).  % five days
noun_stem_type('mācuililhuitl', '', '', '', inanimate).  % five days (MĀCUILLI + ILHUI-TL)
noun_stem_type('mācuilte', 'tl', '', '', cardinal).  % five (K MACUILTE-TL)
noun_stem_type('mahtlac', '', '', '', cardinal).  % ten (embed form)
noun_stem_type('mahtlacte', 'tl', '', '', cardinal).  % ten (K MAHTLAC-TLI)
noun_stem_type('mahtlequiquiztli', '', '', '', inanimate).  % harquebus
noun_stem_type('mahuiz', 'tli', '', '', inanimate).  % awe (K MAHUIZ-TLI)
noun_stem_type('māhuizo', '', '', '', inanimate).  % honor
noun_stem_type('māhuizo', 'li', '', '', inanimate).  % honor
noun_stem_type('māl', '', '', '', animate).  % captive (MĀL-LI); īmmālhuān
noun_stem_type('malacachtic', '', '', '', inanimate).  % round thing (K MALACACHTIC)
noun_stem_type('malin', '', '', '', animate).  % Malin- (Malintzin = Malin + honorific tzin); no K headword
noun_stem_type('malintzin', '', '', '', animate).  % Malintzin (Doña Marina)
noun_stem_type('mamacuauh', '', '', '', inanimate).  % war club
noun_stem_type('māmalhuāz', 'tli', '', '', inanimate).  % carrying frame (K MAMALHUAZ-TLI)
noun_stem_type('māmalti', '', '', '', animate).  % captives (pl. of māmal-li)
noun_stem_type('māmaltin', '', '', '', animate).  % bearers (MAMALTIA + -tin)
noun_stem_type('mamazah', '', '', '', animate).  % deer (pl. of mazā-tl); K MAMAZAH
noun_stem_type('māmazāin', '', '', '', animate).  % deer hand? (MĀZA-TL + MĀITL; opaque)
noun_stem_type('mananquillo', '', '', '', animate).  % helper, aide (from MANANQUILIA); no K headword
noun_stem_type('mapozonal', '', '', '', inanimate).  % amber (no K headword; short vowels as written)
noun_stem_type('matemeca', 'tl', '', '', inanimate).  % arm band ( no K headword)
noun_stem_type('matla', 'tl', '', '', inanimate).  % net (K MATLA-TL)
noun_stem_type('mātlālteōxihui', 'tl', '', '', inanimate).  % fine blue turquoise (MĀTLĀL-IN 'dark green' + TEŌXIHU(I)-TL; no K headword)
noun_stem_type('matlequiquiz', 'tli', '', '', inanimate).  % harquebus (mā-itl + tlequiquiz-tli); K TLEQUIQUIZ-TLI
noun_stem_type('matlequiquizoani', '', '', '', animate).  % harquebusier; agentive of matlequiquizoa
noun_stem_type('matzopetz', 'tli', '', '', inanimate).  % bracelet (< mā- 'hand' + tzopetz-?); no K headword
noun_stem_type('mauhca', '', '', '', inanimate).  % fear, K MAUHCA-TL (combining form)
noun_stem_type('max', 'tli', '', '', inanimate).  % K MAX-TLI breechcloth
noun_stem_type('maxochi', 'tl', 'māmāxochi', 'mahmāxochi', inanimate).  % flower
noun_stem_type('maxtla', 'tl', '', '', inanimate).  % K MAXTLA-TL breechcloth
noun_stem_type('mayehuatzin', '', '', '', animate).  % personal name Mayehuatzin
noun_stem_type('mazā', 'tl', '', '', animate).  % deer (K MAZĀ-TL): mazātlacualli
noun_stem_type('mazā', 'tl', 'mamaza', 'mamaza', animate).  % deer; pl. MAMAZAH ~ MAZAMEH
noun_stem_type('māzāēhua', 'tl', '', '', inanimate).  % deer skin (MĀZĀ-TL + ĒHUA-TL)
noun_stem_type('mazāhua', 'tl', 'mazāhua', 'mazāhua', animate).  % deer (K MAZĀ-TL, pl. mazāhuah)
noun_stem_type('māzamāin', '', '', '', animate).  % deer hand? (MĀZA-TL + MĀITL)
noun_stem_type('mazatlaquilli', '', '', '', inanimate).  % deer fodder (MAZA-TL + TLAQUIL-LI)
noun_stem_type('mazatzintamalco', '', '', '', inanimate).  % place Mazatzintamalco
noun_stem_type('mazaxoco', 'tl', '', '', inanimate).  % horse plum (MAZĀ-TL + XOCO-TL)
noun_stem_type('me', 'tl', 'mēme', 'mehme', inanimate).  % maguey
noun_stem_type('meca', '', '', '', inanimate).  % rope
noun_stem_type('meca', 'tl', '', '', inanimate).  % rope
noun_stem_type('mecayō', '', '', '', inanimate).  % something made of rope (K MECAYŌ-TL; sources mecayō)
noun_stem_type('mecayō', 'tl', '', '', inanimate).  % something made of rope (K MECAYŌ-TL); ch. 38
noun_stem_type('metz', 'tli', '', '', inanimate).  % thigh (K METZ-TLI)
noun_stem_type('mexica', '', '', '', animate).  % Mexica (variant spelling of Mēxihcah)
noun_stem_type('mexica', '', 'mēmexica', 'mehmexica', animate).  % bare stem variant of MĒXIHCA
noun_stem_type('mexica', 'tl', 'mexica', 'mexica', animate).  % Mexica (variant spelling; K MĒXIHCA-TL)
noun_stem_type('mexica', 'tl', 'mēmexica', 'mehmexica', animate).  % Mexica (FC spelling of K MĒXIHCA-TL)
noun_stem_type('mēxicatl', '', '', '', animate).  % Mexica (variant of MĒXIHCA-TL with c)
noun_stem_type('mexicatzinco', '', '', '', inanimate).  % toponym Mexicatzinco
noun_stem_type('mexihca', '', '', '', animate).  % MĒXIHCA, bare stem
noun_stem_type('mexihca', 'tl', 'mēmexihca', 'mehmexihca', animate).  % Mexica person
noun_stem_type('mēxihca', '', '', '', animate).  % bare Mēxihca (stem without absolutive)
noun_stem_type('mēxihca', 'tl', '', '', animate).  % Mexica (K MĒXIHCA-TL)
noun_stem_type('mēxihca', 'tl', 'mēmēxihca', 'mehmēxihca', animate).  % Mēxihcatl / Mēxihcah; K MĒXIHCA-TL
noun_stem_type('mēxihcaē', '', '', '', animate).  % Mēxihcaē, vocative of Mēxihca (Andrews 18.11)
noun_stem_type('mexihcah', '', '', '', animate).  % MĒXIHCAH, plural
noun_stem_type('mēxihcatzinca', '', '', '', animate).  % Mexica person (honorific)
noun_stem_type('mēxihcatzinca', 'tl', '', '', animate).  % honored Mexica person
noun_stem_type('mēxihcayō', 'tl', '', '', inanimate).  % Mexica essence/state (K MĒXIHCAYŌ-TL)
noun_stem_type('mexihco', '', 'mexihco', 'mexihco', inanimate).  % Mexico City
noun_stem_type('mēxihco', '', '', '', inanimate).  % Mexico; K MĒXIHCO
noun_stem_type('mī', 'tl', '', '', inanimate).  % arrow, dart; K MĪ-TL (tepozmītl)
noun_stem_type('mī', 'tl', 'mīmī', 'mihmī', inanimate).  % arrow, dart (K MĪ-TL)
noun_stem_type('mich', 'in', 'mīmich', 'mihmich', animate).  % fish
noun_stem_type('michi', '', '', '', animate).  % fish
noun_stem_type('michiyāhuatzōal', 'li', '', '', inanimate).  % shield design; no K headword
noun_stem_type('mīcon', '', '', '', inanimate).  % quiver (possessed stem); no K headword
noun_stem_type('mictlan', '', '', '', inanimate).  % Mictlan, realm of the dead (K MICTLAN-TLI)
noun_stem_type('mictlancuāuhtla', '', '', '', inanimate).  % place Mictlanquauhtla (MICTLAN-TLI + CUAUH-TLI + -TLA; no K headword)
noun_stem_type('mictlantonco', '', '', '', inanimate).  % place name Mictlantonco; no K headword
noun_stem_type('mīmīcon', '', '', '', inanimate).  % quiver; no K headword
noun_stem_type('mīmicqueh', '', '', '', animate).  % the dead (redup. MICQUI)
noun_stem_type('minacachal', 'li', '', '', inanimate).  % barbed dart (MINACACHAL-LI)
noun_stem_type('miquiz', 'tli', '', '', inanimate).  % death (K MIQUIZ-TLI); to-miquiz 'our death'
noun_stem_type('miquiz', 'tli', 'miquiz', 'miquiz', inanimate).  % death (K MIQUIZ-TLI)
noun_stem_type('miuh', '', '', '', inanimate).  % arrows (possessed stem of MĪ-TL; īmmiuh)
noun_stem_type('mixcoatechialtitlān', '', '', '', inanimate).  % place name Mixcoatechialtitlan; no K headword
noun_stem_type('mixcoatlailotlac', '', '', '', animate).  % personal name Mixcoatlailotlac
noun_stem_type('mixcoatlailotlactzin', '', '', '', animate).  % personal name Mixcoatlailotlactzin
noun_stem_type('mixtitlan', '', '', '', inanimate).  % in the clouds (MIXTLAH + -tlan)
noun_stem_type('mīxtitlan', '', '', '', inanimate).  % in the clouds (FC long ī)
noun_stem_type('mixtzinco', '', '', '', inanimate).  % at your face (m-īx-tzin-co)
noun_stem_type('mīxtzinco', '', '', '', inanimate).  % at your face (FC long ī)
noun_stem_type('mizquica', '', '', '', animate).  % person of Mizquic
noun_stem_type('mizquicatl', '', '', '', animate).  % person from Mizquic
noun_stem_type('mizto', 'n', 'mīmizto', 'mihmizto', animate).  % cat
noun_stem_type('mizton', '', '', '', animate).  % cat
noun_stem_type('mō', '', '', '', inanimate).  % probable
noun_stem_type('mocauhqui', '', 'mōmocauhqui', 'mohmocauhqui', animate).  % married person
noun_stem_type('moceloquich', 'tli', '', '', animate).  % soldier, warrior (K MOCĒLOQUICH-TLI; only in vocative)
noun_stem_type('moceloquichtlé', '', '', '', animate).  % O warrior! vocative of MOCĒLOQUICH-TLI (Andrews 18.11)
noun_stem_type('mōl', '', '', '', inanimate).  % sauce
noun_stem_type('mōl', 'li', '', '', inanimate).  % sauce
noun_stem_type('momio', '', '', '', inanimate).  % bone, possessed stem (K OMIO-TL)
noun_stem_type('momo', 'tli', '', '', inanimate).  % altar platform (K MOMOZ-TLI?); momozticpac
noun_stem_type('momozco', '', '', '', inanimate).  % Momozco (place name)
noun_stem_type('momoztli', '', '', '', inanimate).  % altar (K MOMŌZ-TLI)
noun_stem_type('monamicyoc', '', '', '', inanimate).  % counterpart, successor (NĀMIC-TLI + -YŌ + relational -c; no K headword)
noun_stem_type('monoian', '', '', '', inanimate).  % dwelling (īmonoian; cf. K -YAN)
noun_stem_type('motelchiuhtzin', '', '', '', animate).  % personal name Motelchiuhtzin
noun_stem_type('motēuczōma', '', '', '', animate).  % personal name Motēuczōma (K MOTĒUCZŌMA); also + tzin, ni-, ti
noun_stem_type('motquitica', '', '', '', inanimate).  % completely, purely (MOTQUITICA)
noun_stem_type('moyōlicatzin', '', '', '', animate).  % gentle one (vocative; MO + YŌLIC + -tzin)
noun_stem_type('naca', 'tl', 'nānaca', 'naca', inanimate).  % meat
noun_stem_type('naca', 'tl', 'nānaca', 'nahnaca', inanimate).  % meat, flesh (K NACA-TL)
noun_stem_type('nacaio', '', '', '', inanimate).  % flesh (variant of -NACAYO, y written i)
noun_stem_type('nacayo', '', '', '', inanimate).  % flesh; possessed stem of NAC(A)-TL: īnnacayo (K -NACAYO)
noun_stem_type('nacayō', '', '', '', inanimate).  % flesh, possessed stem (long ō)
noun_stem_type('nacaz', 'tli', 'nānacaz', 'nahnacaz', inanimate).  % ear
noun_stem_type('nacaztlacō', 'tl', '', '', inanimate).  % ear ornament (K NACAZ-TLI + TLACŌ-TL)
noun_stem_type('nāchcāuhtzin', '', '', '', animate).  % personal name Nāchcāuhtzin
noun_stem_type('nacoch', '', '', '', inanimate).  % ear (possessed form of NACAZ-TLI)
noun_stem_type('nahuatil', '', '', '', inanimate).  % order, law (possessed stem; cf. NĀHUATIL-LI): innāhuatil
noun_stem_type('nahuatil', 'li', '', '', inanimate).  % order, law (K NĀHUATIL-LI): tonahuatil
noun_stem_type('nāhuatil', '', '', '', inanimate).  % order, law (K NĀHUATIL-LI): innāhuatil
noun_stem_type('nāhuilhuitl', '', '', '', inanimate).  % four days (NĀHUI + ILHUI-TL)
noun_stem_type('namacac', '', '', '', animate).  % seller
noun_stem_type('nān', 'tli', 'nānān', 'nahnān', animate).  % mother
noun_stem_type('nānāhualli', '', '', '', animate).  % sorcerer, nagual (K NĀHUAL-LI, pl. NANAHUALTIN)
noun_stem_type('nānāhuālti', '', '', '', animate).  % nahualli sorcerers
noun_stem_type('nānān', '', '', '', animate).  % mother
noun_stem_type('nanō', '', '', '', animate).  % mother (possessed -nano); K NĀN-TLI
noun_stem_type('nāuhte', 'tl', '', '', cardinal).  % four (K NAUHTE-TL)
noun_stem_type('nāuhtēcutli', '', '', '', animate).  % personal name Nauhtecutli; nāuh 'four' + tēcu-tli
noun_stem_type('nāuhtēuc', 'tli', '', '', animate).  % Nāuhtēcutli 'Four Lords'; nāuh- + tēuc-tli
noun_stem_type('nāuhtlaman', 'tli', '', '', inanimate).  % four (things) (nāhui + TLAMAN-TLI)
noun_stem_type('nauhtlan', '', '', '', inanimate).  % place Nauhtlan (no K headword)
noun_stem_type('nechīcāhuallo', '', '', '', animate).  % one equipped, retainer; from NECHĪCHĪHUA
noun_stem_type('nechīchīhual', '', '', '', inanimate).  % equipment, gear (action noun of NECHĪCHĪHUA); K NECHĪCHĪHUAL-LI
noun_stem_type('nechichiohalli', '', '', '', inanimate).  % adornment (NECHICHIOA + -LLI; no K headword)
noun_stem_type('nechichiohual', 'li', '', '', inanimate).  % adornment, gear
noun_stem_type('necuh', 'tli', 'nēnecuh', 'nehnēcuh', inanimate).  % honey
noun_stem_type('nehuān', '', '', '', animate).  % the two of them (poss. īn-nehuān; K INNEHUAN)
noun_stem_type('neixcahuil', '', '', '', inanimate).  % what is assigned to one (cf. K ĪXCĀHUIL?)
noun_stem_type('neixcahuīl', 'li', '', '', inanimate).  % own possession (/41; cf. IXCAHUIA 'be single-minded')
noun_stem_type('nel', 'li', '', '', inanimate).  % truth (K NEL-LI)
noun_stem_type('nemachpan', '', '', '', inanimate).  % hope (NEMACH-TLI + -PAN): īnnemachpan
noun_stem_type('nemilis', 'tli', 'nēnemilis', 'nehnemilis', inanimate).  % life
noun_stem_type('nēmiliztli', '', '', '', inanimate).  % life
noun_stem_type('nemontemi', '', '', '', inanimate).  % Nemontemi (five dead days)
noun_stem_type('nenepaniuhqui', '', '', '', inanimate).  % paired (ne- + nepaniuhqui)
noun_stem_type('nenonotzal', '', '', '', inanimate).  % discussion (NENONOTZA + -L): īnnenonotzal
noun_stem_type('nepantla', '', '', '', inanimate).  % middle (K NEPANTLAH)
noun_stem_type('nepapan', '', '', '', adjective).  % various (K NEPAPAN)
noun_stem_type('nepapan', '', '', '', inanimate).  % various, different (K NEPAPAN)
noun_stem_type('netlaquechillo', '', '', '', animate).  % one provided with gear; no K headword
noun_stem_type('netoliniliztli', '', '', '', inanimate).  % poverty, misery (K NETOLĪNILIZ-TLI)
noun_stem_type('neuhca', '', '', '', inanimate).  % sustenance (K NĒUHCĀYŌ-TL, possessed -NEUHCA): īnneuhca
noun_stem_type('nextlatilco', '', '', '', inanimate).  % place name Nextlatilco
noun_stem_type('nicāuh', '', '', '', animate).  % personal name Nicauh (ch. 33)
noun_stem_type('noch', 'tli', '', '', inanimate).  % prickly-pear fruit (K NOCH-TLI)
noun_stem_type('nonoalco', '', '', '', inanimate).  % place name Nonoalco; no K headword
noun_stem_type('nopilhuāntzitzin', '', '', '', animate).  % O my dear children (no- + PĪL-HUĀN-TZITZIN)
noun_stem_type('nopilhuāntzitzine', '', '', '', animate).  % vocative of the preceding
noun_stem_type('notlāhuiz', '', '', '', inanimate).  % my glory (NO- + TLĀHUĪZ-TLI)
noun_stem_type('oaxi', '', '', '', inanimate).  % acacia bean (no K headword)
noun_stem_type('ocelo', 'tl', 'ocelo', 'ocelo', animate).  % jaguar (K OCĒLŌ-TL)
noun_stem_type('ocēlō', 'tl', '', '', animate).  % jaguar (K OCĒLŌ-TL)
noun_stem_type('ocelocopil', 'li', '', '', inanimate).  % Ocelocopilli (ornament name)
noun_stem_type('ochpan', 'tli', '', '', inanimate).  % highway, swept road (K OCHPĀN-TLI)
noun_stem_type('ochpaniztli', '', '', '', inanimate).  % OCHPĀNIZ-TLI, 10th month
noun_stem_type('ococuahui', 'tl', '', '', inanimate).  % K OCOCUAHUI-TL pine
noun_stem_type('ocuil', 'in', 'ōocuil', 'ohocuil', animate).  % worm
noun_stem_type('ocuili', '', '', '', animate).  % worm
noun_stem_type('oh', 'tli', 'ōoh', 'ohoh', inanimate).  % road, path
noun_stem_type('ōh', 'tli', '', '', inanimate).  % road (K OH-TLI, long ō)
noun_stem_type('ohchpan', 'tli', '', '', inanimate).  % swept place, highway (cf. K OCHPĀN(A) 'sweep'; ohchpantli in )
noun_stem_type('ohpitzactli', '', '', '', inanimate).  % narrow path (OH-TLI + PITZAC-TLI)
noun_stem_type('ohua', 'tl', 'ohua', 'ohua', inanimate).  % green maize stalk (K OHUA-TL)
noun_stem_type('ololtōntli', '', '', '', inanimate).  % something round (OLOL- + TŌN-TLI)
noun_stem_type('ōmeztallomeh', '', '', '', inanimate).  % two-month things (ŌME + METZ-TLI + -YOH)
noun_stem_type('ompantli', '', '', '', inanimate).  % two rows (ŌME + PANTLI)
noun_stem_type('ōmpōhualilhuitl', '', '', '', inanimate).  % forty days
noun_stem_type('on', '', '', '', cardinal).  % two (numeral, listed as a noun stem)
noun_stem_type('onec', '', '', '', inanimate).  % property, what is needed (MONEQUI)
noun_stem_type('ōntlaman', 'tli', '', '', inanimate).  % two (things) (ōme + TLAMAN-TLI)
noun_stem_type('opitzactli', '', '', '', inanimate).  % narrow path (OH-TLI + PITZAC-TLI)
noun_stem_type('opochmacuex', '', '', '', inanimate).  % left-hand ornament; no K headword
noun_stem_type('opochtzin', '', '', '', animate).  % personal name Opochtzin
noun_stem_type('oquich', 'tli', 'ōoquich', 'ohoquich', animate).  % man
noun_stem_type('oquichpīl', '', '', '', animate).  % boy
noun_stem_type('oquichpīl', 'li', '', '', animate).  % boy
noun_stem_type('oquichtin', '', '', '', animate).  % men; lexicalized plural of OQUICH-TLI
noun_stem_type('otlachimal', 'li', '', '', inanimate).  % shield? (o- + tlachimal-li); no K headword
noun_stem_type('otlatl', '', '', '', inanimate).  % reed, bamboo (K OTLATL)
noun_stem_type('otōcalpulco', '', '', '', inanimate).  % place Otocalpulco (no K headword)
noun_stem_type('otoconcoatl', '', '', '', animate).  % personal name Otoncoatl
noun_stem_type('otomi', 'tl', 'ōotomi', 'ohotomi', animate).  % Otomi person
noun_stem_type('otoncalpulco', '', '', '', inanimate).  % place name Otoncalpulco; no K headword
noun_stem_type('otoncoatl', '', '', '', animate).  % personal name Otoncoatl
noun_stem_type('otonteohcalli', '', '', '', inanimate).  % temple Otonteohcalli (OTON-TLI + TEŌ-TL + CAL-LI)
noun_stem_type('oyōhual', 'li', '', '', inanimate).  % rattle (FC oyōhualli)
noun_stem_type('ozoma', 'tl', 'ōozoma', 'ohzoma', animate).  % monkey (OZOMA-TL)
noun_stem_type('pa', '', '', '', inanimate).  % relational -pa: ītechpa 'concerning him'
noun_stem_type('pah', 'tli', 'pāpah', 'pahpah', inanimate).  % medicine
noun_stem_type('pahuax', '', '', '', inanimate).  % cooked
noun_stem_type('pāhui', '', '', '', inanimate).  % medicine
noun_stem_type('pāmi', 'tl', 'pāpāmi', 'pahpāmi', inanimate).  % banner
noun_stem_type('pampa', '', '', '', inanimate).  % for the sake of; K -PAMPA: īpampa
noun_stem_type('pan', '', '', '', inanimate).  % on the surface of (K -PAN, short a outside Z): īpan = ī- + pan
noun_stem_type('pān', '', '', '', inanimate).  % on, upon; īpān
noun_stem_type('pani', 'tl', '', '', inanimate).  % banner, flag (K PĀM(I)-TL, reduced variant PAN-TLI, attested in quachpanitl)
noun_stem_type('panoani', '', '', '', animate).  % one who passes (agentive of PANO); K PANOANI
noun_stem_type('panquetzaliztli', '', '', '', inanimate).  % month name Panquetzaliztli (K PANQUETZALIZ-TLI)
noun_stem_type('pantalo', '', 'pāntalo', 'pahtalo', inanimate).  % trousers (loan)
noun_stem_type('pantalon', '', '', '', inanimate).  % pants (loan)
noun_stem_type('pantli', '', '', '', inanimate).  % row, wall (K PAN-TLI)
noun_stem_type('papalo', 'tl', 'pāpapalo', 'pahpapalo', animate).  % butterfly
noun_stem_type('pato', 'tl', 'pāpato', 'pahpato', animate).  % duck
noun_stem_type('patox', '', '', '', animate).  % duck (loan)
noun_stem_type('pedro', '', '', '', animate).  % Pedro (Sp. name)
noun_stem_type('pepech', 'tli', '', '', inanimate).  % mattress (K PEPECH-TLI)
noun_stem_type('petl', '', '', '', inanimate).  % mat (K PETL(A)-TL, possessed -PETL): īpetl
noun_stem_type('petla', 'tl', '', '', inanimate).  % mat (K PETLA-TL)
noun_stem_type('petlacal', 'li', '', '', inanimate).  % storage house (K PETLACAL-LI)
noun_stem_type('petlacalco', '', '', '', inanimate).  % place name Petlacalco; no K headword
noun_stem_type('petlacotl', '', '', '', inanimate).  % storage house (var. of PETLACAL-LI)
noun_stem_type('petlauhtzin', '', '', '', animate).  % personal name Petlauhtzin
noun_stem_type('petzca', 'tl', '', '', inanimate).  % polished bowl (cf. K PETZCĀ?)
noun_stem_type('petzcaxitl', '', '', '', inanimate).  % polished bowl (petzc(a)- + caxitl)
noun_stem_type('pil', 'li', 'pipil', 'pihpil', animate).  % PĪL-LI noble; plural PIPILTIN has short i (K PIPILTIN)
noun_stem_type('pil', 'li', 'pīpil', 'pihpil', animate).  % noble, child
noun_stem_type('pīl', '', '', '', inanimate).  % honorific matrix stem
noun_stem_type('pilhuān', '', '', '', animate).  % children (possessed plural of PIL-LI; īmpilhuāntzitzin)
noun_stem_type('pīllo', '', '', '', animate).  % noble (PĪL-LI + -YOH); īpīllohuān
noun_stem_type('piltōca', '', '', '', inanimate).  % personal name (pīl-li + TŌCĀI-TL)
noun_stem_type('pino', '', '', '', animate).  % Pinot- (before -tzin; no K headword, short vowels)
noun_stem_type('pinolatl', '', '', '', inanimate).  % pinole drink (PINOL-LI + Ā-TL)
noun_stem_type('pinot', '', '', '', animate).  % personal name Pinot- (before -tzin)
noun_stem_type('pinotl', '', '', '', animate).  % personal name Pinotl
noun_stem_type('pipil', '', '', '', animate).  % noble (plural PIPILTIN)
noun_stem_type('pipīl', '', '', '', animate).  % honorific plural matrix stem
noun_stem_type('pīpil', '', '', '', animate).  % nobles (K PIL-LI pl. PĪPILTIN)
noun_stem_type('pipillo', '', '', '', inanimate).  % a food called pipillo (no K headword in this sense)
noun_stem_type('pipilti', '', '', '', animate).  % nobles: FC spelling of pipiltin (final n unwritten); K PIL-LI, pl. PIPILTIN
noun_stem_type('pipiltin', '', '', '', animate).  % nobles (K PIL-LI pl. PIPILTIN, short i)
noun_stem_type('pīpiltin', '', '', '', animate).  % nobles (K PIL-LI, pl. PIPILTIN)
noun_stem_type('pīpiltzitzin', '', '', '', animate).  % honored nobles (PĪPIL + -tzitzin)
noun_stem_type('pipiltzitzinti', '', '', '', animate).  % little nobles (PIL-LI + -tzitzin + -ti)
noun_stem_type('pīpiltzitzintin', '', '', '', animate).  % little nobles (K PĪPILTZITZINTIN)
noun_stem_type('pipitzac', '', 'pipitzacta', 'pipitzacta', adjective).  % redup. slim
noun_stem_type('pitzac', '', 'pitzacta', 'pitzacta', adjective).  % slim (PITZACTIC/PITZACTIC)
noun_stem_type('pitzactic', '', 'pitzacta', 'pitzacta', adjective).  % slim
noun_stem_type('pitzo', 'tl', 'pīpitzo', 'pihpitzo', animate).  % pig
noun_stem_type('piyo', '', '', '', animate).  % chicken
noun_stem_type('pōc', 'tli', '', '', inanimate).  % smoke; K PŌC-TLI
noun_stem_type('poctli', '', '', '', inanimate).  % smoke (K POCTLI)
noun_stem_type('pōcyoh', '', '', '', inanimate).  % smoke, smoked thing (K PŌCYOH)
noun_stem_type('pōl', '', '', '', inanimate).  % largeness/disparagement matrix stem
noun_stem_type('pōl', 'li', '', '', inanimate).  % largeness/disparagement matrix stem
noun_stem_type('popocatēpetl', '', '', '', inanimate).  % toponym Popocatēpetl 'Smoking Mountain' = popōca + tepē-tl (K POPŌCA, TEPĒ-TL); lexicalised
noun_stem_type('popocatzin', '', '', '', animate).  % personal name Popocatzin
noun_stem_type('popōl', '', '', '', animate).  % largeness/disparagement plural matrix stem
noun_stem_type('popotlan', '', '', '', inanimate).  % place name Popotlan; no K headword (K POPOTLA)
noun_stem_type('poxcauhcamoh', 'tli', '', '', inanimate).  % white sweet potato (POXCĀHUAC + CAMOH-TLI)
noun_stem_type('pozonqui', '', '', '', inanimate).  % something boiled (K POZONQUI)
noun_stem_type('quech', 'tli', '', '', inanimate).  % neck (K QUECH-TLI)
noun_stem_type('quecholli', '', '', '', inanimate).  % Quecholli (month)
noun_stem_type('quechtetzon', '', '', '', inanimate).  % neck joint (QUECH-TLI + TETZON-TLI)
noun_stem_type('quechtlan', '', '', '', inanimate).  % around the neck (QUECH-TLI + -TLAN): inquechtlan
noun_stem_type('quēmitl', '', '', '', inanimate).  % QUĒMI-TL garment
noun_stem_type('quequetzal', '', '', '', inanimate).  % plumes (reduplicated quetzal-li); K QUETZAL-LI
noun_stem_type('quetzal', 'li', '', '', inanimate).  % quetzal feather
noun_stem_type('quetzalapanecayo', 'tl', '', '', inanimate).  % Quetzalapanecayotl (personal/dynastic name; no K headword)
noun_stem_type('quetzalapanecayō', 'tl', '', '', inanimate).  % Quetzalapanecayotl (ornament name)
noun_stem_type('quetzalapanecāyō', 'tl', '', '', inanimate).  % quetzal-feather ornament (QUETZAL + APANECĀYŌ-TL)
noun_stem_type('quetzalazta', '', '', '', animate).  % personal name Quetzalaztatzin (no K headword)
noun_stem_type('quetzalaztatzin', '', '', '', animate).  % Quetzalaztatzin (personal name)
noun_stem_type('quetzalaztatzon', 'tli', '', '', inanimate).  % quetzal feather head-band
noun_stem_type('quetzalcōā', 'tl', '', '', animate).  % Quetzalcoatl (K QUETZALCŌĀ-TL)
noun_stem_type('quetzalcoatl', '', '', '', animate).  % personal name Quetzalcoatl
noun_stem_type('quetzalichpetztli', '', '', '', animate).  % personal name Quetzalichpetztli
noun_stem_type('quetzalpanio', '', '', '', inanimate).  % quetzal banner ornament
noun_stem_type('quetzalquemitl', '', '', '', inanimate).  % QUETZAL-LI + QUĒMI-TL quetzal-feather garment
noun_stem_type('quetzaltecolō', 'tl', '', '', animate).  % quetzal owl (QUETZAL-LI + TECOLŌ-TL)
noun_stem_type('quetzaltemal', '', '', '', inanimate).  % quetzal-feather mat; no K headword
noun_stem_type('quetzaltenzouhqui', '', '', '', inanimate).  % quetzal-bloodied ornament
noun_stem_type('quezpan', '', '', '', inanimate).  % chest ornament?; no K headword
noun_stem_type('quilitzintli', '', '', '', inanimate).  % greens + honorific (QUILITL + -tzin)
noun_stem_type('quimahuizotiani', '', '', '', animate).  % one who honors him (MAHUIZŌTIA + -ni)
noun_stem_type('quīzayān', '', '', '', inanimate).  % place of emergence, east (-QUĪZAYĀN)
noun_stem_type('tachcā', '', '', '', animate).  % elder (K TACHCAUH); pl. tachcahuān
noun_stem_type('tachcahuān', '', '', '', animate).  % elders (TACHCAUH + -huān)
noun_stem_type('tah', 'tli', 'tātah', 'tahtah', animate).  % father
noun_stem_type('tamal', 'li', 'tātamal', 'tahtamal', inanimate).  % tamal
noun_stem_type('tatah', '', '', '', animate).  % father
noun_stem_type('tatapah', 'tli', 'tatapah', 'tatapah', inanimate).  % sandal (K TATAPAH-TLI)
noun_stem_type('tatapat', 'li', 'tatapat', 'tatapat', inanimate).  % sandal; h-less sources spelling
noun_stem_type('te', 'tl', 'tēte', 'tehte', animate).  % rock (animate class)
noun_stem_type('tecac', 'tli', 'tētecac', 'tehtecac', inanimate).  % sandal, shoe
noun_stem_type('tēcciz', 'tli', 'tētēcciz', 'tehtēcciz', inanimate).  % sandal, shoe
noun_stem_type('tech', '', '', '', inanimate).  % adjacent to, with; K -TECH: ītech, īntech
noun_stem_type('techiuhcā', '', '', '', animate).  % one who acts for people, agent, governor (< tē-chiuh-qui; K CHIHU(A) leaves i unmarked): ītechiuhcāhuān, namotechiuhcāuh
noun_stem_type('techīuhcā', '', '', '', animate).  % agent (cf. techiuhcā; long ī in the ): ītechīuhcāuh
noun_stem_type('tēchīuhcā', '', '', '', animate).  % our agent/governor (tē-chīuh-cā; K CHIHUA)
noun_stem_type('tēco', 'tli', 'tētēco', 'tehtēco', animate).  % lord (Garcia, Learn Nahuatl)
noun_stem_type('tecoac', '', '', '', animate).  % Tecoac (place/people); gentilic Tecoacah
noun_stem_type('tecoaca', '', '', '', animate).  % Tecoacah, people of Tecoac (Tecoac + -ah)
noun_stem_type('tēcoh', '', '', '', animate).  % lord
noun_stem_type('tecol', '', '', '', animate).  % grandfather, ancestor (K TECŌL-LI)
noun_stem_type('tecol', 'li', '', '', inanimate).  % charcoal (K TECOL-LI)
noun_stem_type('tecōma', 'tl', '', '', inanimate).  % jar, pitcher (K TECŌMA-TL)
noun_stem_type('tecomayoh', '', '', '', inanimate).  % jar design (TECŌMA-TL + -YOH)
noun_stem_type('tecpan', '', '', '', inanimate).  % palace (K TECPAN-TLI)
noun_stem_type('tecpān', '', '', '', inanimate).  % palace (K TECPAN-TLI)
noun_stem_type('tēcpan', '', '', '', inanimate).  % palace (K TĒCPAN)
noun_stem_type('tecpancal', 'li', '', '', inanimate).  % palace (K TĒCPANCAL-LI; sources short e)
noun_stem_type('tecpancaltitlan', '', '', '', inanimate).  % place name Tecpancaltitlan
noun_stem_type('tecpanecatl', '', '', '', animate).  % Tecpanecatl, person of Tecpan
noun_stem_type('tēcpanitl', '', '', '', inanimate).  % lordly banner (K TĒCPANITL)
noun_stem_type('tecpantlayacac', '', '', '', inanimate).  % Tecpantlayacac
noun_stem_type('tecpantzinco', '', '', '', inanimate).  % place name Tecpantzinco; no K headword
noun_stem_type('tecuecuex', 'tli', '', '', inanimate).  % anklet ( no K headword)
noun_stem_type('tēcuh', '', '', '', animate).  % lord
noun_stem_type('tēcuh', 'tli', '', '', animate).  % lord
noun_stem_type('tecuilhuitl', '', '', '', inanimate).  % TECUILHUI-TL lord's feast
noun_stem_type('tecuilhuitontli', '', '', '', inanimate).  % Tecuilhuitontli (month)
noun_stem_type('tēcuiyo', '', '', '', animate).  % lord (K TĒCUIYŌ-TL)
noun_stem_type('tēcuiyo', 'tl', '', '', animate).  % lord (K TĒCUIYŌ-TL); totēcuiyo, totēcuiyohuān
noun_stem_type('tēcut', 'li', '', '', animate).  % lord (variant of K TĒUC-TLI)
noun_stem_type('tēcux', 'tli', '', '', inanimate).  % K TĒCUX-TLI chest
noun_stem_type('teehuitiliz', 'tli', '', '', inanimate).  % punishment (TĒ- + EHUITIA + -liztli)
noun_stem_type('tehuithualco', '', '', '', inanimate).  % temple courtyard (K TEHUITHUALCO)
noun_stem_type('teloloh', 'tli', 'teloloh', 'teloloh', inanimate).  % pellet, ball (K TELOLOH-TLI)
noun_stem_type('telpō', '', '', '', animate).  % youth (K TELPŌ-TL / TELPOCH-TLI)
noun_stem_type('telpoca', 'tl', 'tētelpoca', 'tehtelpoca', animate).  % young man
noun_stem_type('telpōch', 'tli', '', '', animate).  % youth (K TELPŌCH-TLI)
noun_stem_type('tēlpōch', 'tli', '', '', animate).  % young man (K TĒLPŌCH-TLI)
noun_stem_type('telpōchcal', 'li', '', '', inanimate).  % youths' house (K TELPŌCHCAL-LI)
noun_stem_type('telpochomitl', '', '', '', animate).  % young Otomí (TELPŌCH-TLI + OTŌMI-TL)
noun_stem_type('telpopochtōtōnti', '', '', '', animate).  % young boys (TĒLPŌCH-TLI + TŌTŌN-TLI)
noun_stem_type('telpopotzitzinti', '', '', '', animate).  % honored youths (TELPOPŌCH + -tzitzin + -ti)
noun_stem_type('telpuch', 'tli', '', '', animate).  % young man (K TELPOCH-TLI)
noun_stem_type('temalacatitlan', '', '', '', inanimate).  % place of the round stone (TEMALACA-TL + -ti-tlan)
noun_stem_type('tēmamaca', '', '', '', animate).  % burden-bearer, stem before -huān: īntēmamacahuān
noun_stem_type('tēmamacah', '', '', '', animate).  % burden-bearer (TĒ- + MAMA + -CAH): īntēmamacahuān
noun_stem_type('temāmāmaloh', '', '', '', animate).  % those carried on backs; no K headword
noun_stem_type('tēmatla', 'tl', '', '', inanimate).  % stone sling ( tē- + matlatl 'net')
noun_stem_type('temilotzin', '', '', '', animate).  % personal name Temilotzin
noun_stem_type('temoctzin', '', '', '', animate).  % personal name Temoctzin
noun_stem_type('temol', 'in', 'tētemol', 'tehtemol', animate).  % louse (Class -in)
noun_stem_type('temol', 'li', 'tētemol', 'tehtemol', animate).  % louse (Class -li)
noun_stem_type('tēn', 'tli', '', '', inanimate).  % mouth, edge; K TĒN-TLI (incorporated tēn-)
noun_stem_type('tenacaz', 'tli', '', '', inanimate).  % rooster comb? (K TENACAZ-TLI)
noun_stem_type('tenām', 'itl', '', '', inanimate).  % wall, bulwark (K TENĀMITL); stem before -tl
noun_stem_type('tenami', 'tl', '', '', inanimate).  % wall (K TENĀMITL; sources tenamitl)
noun_stem_type('tenāmi', 'tl', '', '', inanimate).  % wall (K TENĀMITL; long ā)
noun_stem_type('tenamic', '', '', '', animate).  % meeting, encounter (< tē-namic, pret. agentive of K NĀMIQU(I), pret. NAMIC unmarked; Andrews 35.4 tēnāmic): īntenamic
noun_stem_type('tenāmiconi', '', '', '', animate).  % one who is to meet (TĒ-NĀMIQUI + -ni)
noun_stem_type('tenāmictli', '', '', '', animate).  % one who meets (TĒ-NĀMIQUI + -tli)
noun_stem_type('tenamiquia', '', '', '', inanimate).  % meeting, reception (tē-NĀMIQUI + -iā; possessed īn-tenamiquia)
noun_stem_type('tēnanhuān', '', '', '', animate).  % their mothers (TĒ- + NĀN-TLI + -huān)
noun_stem_type('tēnānoan', '', '', '', animate).  % their mothers (tē- + NĀN-TLI + -huān, FC spelling)
noun_stem_type('tenantitlan', '', '', '', inanimate).  % behind the wall (TENĀMI-TL + -tlan)
noun_stem_type('tenantli', '', '', '', inanimate).  % wall (K TENĀN-TLI)
noun_stem_type('tenchayahuac', '', '', '', inanimate).  % broad edge (tēn + CHAYĀHUAC)
noun_stem_type('tenchilnahuacayo', '', '', '', inanimate).  % red-edged garment
noun_stem_type('tēnco', '', '', '', inanimate).  % at the edge/lip of (K TĒN-TLI + -co; Andrews ātēnco): ītenco = ī- + tēnco
noun_stem_type('tēncualac', '', '', '', inanimate).  % open mouth (TĒN-TLI + CUALAC); no K headword
noun_stem_type('tenexnamacoyan', '', '', '', inanimate).  % place name Tenexnamacoyan; no K headword
noun_stem_type('tenitotōnti', '', '', '', animate).  % little barbarians (TE- + NITOTŌN-TLI?)
noun_stem_type('tenixio', '', '', '', inanimate).  % edge (tēn + ixio; possessed stem)
noun_stem_type('tenochca', '', '', '', animate).  % bare Tenochca (plural Tenochcah)
noun_stem_type('tenochca', 'tl', '', '', animate).  % Tenochca, person of Tenochtitlan
noun_stem_type('tenochtitlan', '', '', '', inanimate).  % Tenochtitlan (place name)
noun_stem_type('tenopalli', '', '', '', inanimate).  % a cactus (K TENOPAL-LI)
noun_stem_type('tenpozonqui', '', '', '', inanimate).  % boiled-edge garment
noun_stem_type('tentlapallo', '', '', '', inanimate).  % red-edged garment
noun_stem_type('tentlil', '', '', '', animate).  % personal name Tentlil
noun_stem_type('tēntzon', 'tli', 'tēntzon', 'tēntzon', inanimate).  % beard (K TĒNTZON-TLI, tēn + tzon)
noun_stem_type('tenuchtitlan', '', '', '', inanimate).  % place name Tenuchtitlan
noun_stem_type('teō', 'tl', 'tētēō', 'tehtēō', animate).  % god
noun_stem_type('teōāyoc', '', '', '', inanimate).  % place Teōāyoc (TEO- + ĀYŌ-TL + -c)
noun_stem_type('teōcalco', '', '', '', inanimate).  % Teocalco (TEŌ-CAL-LI + -co)
noun_stem_type('teociniocan', '', '', '', inanimate).  % place Teocinyocan
noun_stem_type('teociniocatl', '', '', '', animate).  % personal name Teocinyocatl
noun_stem_type('teōcuitla', '', '', '', inanimate).  % gold (combining form, K TEŌCUITL(A)-TL)
noun_stem_type('teōcuitla', 'tl', '', '', inanimate).  % gold, silver, precious metal (K TEŌCUITL(A)-TL)
noun_stem_type('teōcuitlacoiol', 'li', '', '', inanimate).  % gold bell
noun_stem_type('teōcuitlacomal', 'li', '', '', inanimate).  % gold plate/disk
noun_stem_type('teōcuitlacomallo', '', '', '', inanimate).  % gold plate/disk (possessed?)
noun_stem_type('teōcuitlacopil', 'li', '', '', inanimate).  % gold ornament
noun_stem_type('teōcuitlacotzehuatl', '', '', '', inanimate).  % golden collar; no K headword
noun_stem_type('teōcuitlacotzeoatl', '', '', '', inanimate).  % golden leg band (TEŌCUITLA-TL + COTZEOATL)
noun_stem_type('teōcuitlacoyol', 'li', '', '', inanimate).  % golden bell (TEŌCUITL(A)-TL + COYŌL-LI)
noun_stem_type('teōcuitlacoyollo', '', '', '', inanimate).  % golden bell, absolute form as written
noun_stem_type('teōcuitlacuacalalatli', '', '', '', inanimate).  % golden ornament; no K headword
noun_stem_type('teōcuitlacuatecciz', 'tli', '', '', inanimate).  % Teocuitlacuatecciztli (ornament name)
noun_stem_type('teōcuitlaepcolol', 'li', '', '', inanimate).  % gold chain
noun_stem_type('teōcuitlaīxcuāmatl', '', '', '', inanimate).  % golden forehead sheet (TEŌCUITLA-TL + ĪXCUĀMATL)
noun_stem_type('teōcuitlamatemecatl', '', '', '', inanimate).  % golden bracelet/armband
noun_stem_type('teōcuitlayacameztli', '', '', '', inanimate).  % golden nose crescent (TEŌCUITLA-TL + YACAMIZTLI)
noun_stem_type('teōcuitlayo', '', '', '', inanimate).  % something golden (TEŌCUITLA-TL + -YOH)
noun_stem_type('teohquemitl', '', '', '', inanimate).  % TEŌ-TL + QUĒMI-TL divine garment
noun_stem_type('teōhuah', '', '', '', animate).  % title 'custodian of the god' = TEŌ-TL + -HUA(H); no K headword
noun_stem_type('teōītohualco', '', '', '', inanimate).  % temple courtyard (teō- + ītohualco)
noun_stem_type('teōpan', '', '', '', inanimate).  % temple (K TEŌPAN)
noun_stem_type('teōtlatqui', 'tl', '', '', inanimate).  % god's property (TEŌ-TL + TLATQUI-TL)
noun_stem_type('tepachocā', '', '', '', animate).  % oppressor (TĒ-PACHOĀ + -cā)
noun_stem_type('tepan', 'tli', '', '', inanimate).  % wall (K TEPAN-TLI)
noun_stem_type('tepān', 'tli', 'tētepān', 'tehtepān', inanimate).  % wall (K TEPĀN-TLI)
noun_stem_type('tepaneca', 'tl', '', '', animate).  % person of Tepan (no K headword)
noun_stem_type('tepe', 'tl', 'tētepe', 'tehtepe', inanimate).  % mountain
noun_stem_type('tepē', 'tl', 'tētepē', 'tehtepē', inanimate).  % hill, mountain (K TEPĒ-TL)
noun_stem_type('tepehuah', '', '', '', animate).  % mountain dweller, one from beyond the mountains; K TEPEHUAH
noun_stem_type('tepēhuāni', '', '', '', animate).  % conqueror (TEPĒHU(A) agentive, long ā)
noun_stem_type('tepehuatzin', '', '', '', animate).  % Tepehuatzin (personal name)
noun_stem_type('tepeilhuitl', '', '', '', inanimate).  % month name Tepeilhuitl
noun_stem_type('tepeioc', '', '', '', inanimate).  % mountain-like thing; no K headword
noun_stem_type('tepetla', 'tl', '', '', inanimate).  % stone slab, stone mat; K TEPETL(A)-TL
noun_stem_type('tepetzinco', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('tepeyacac', '', '', '', inanimate).  % place name Tepeyacac
noun_stem_type('tepochimalli', '', '', '', inanimate).  % iron shield (TEPOZ-TLI + CHĪMAL-LI)
noun_stem_type('tepol', '', '', '', inanimate).  % citation stem without absolutive (huēi tepol)
noun_stem_type('tepol', 'li', 'tepol', 'tepol', inanimate).  % penis, stump (K TEPOL-LI)
noun_stem_type('tepololiz', '', '', '', inanimate).  % destruction (TEPOLOA + -LIZ-TLI): īntepololiz
noun_stem_type('teponaz', 'tli', '', '', inanimate).  % log drum (K TEPONAZ-TLI)
noun_stem_type('tepopol', '', '', '', inanimate).  % staff, club (TEPŌPOL)
noun_stem_type('tepopucoquillo', '', '', '', inanimate).  % foam at the neck/bit; no K headword
noun_stem_type('tepopul', '', '', '', inanimate).  % pustule, bump ( cf. TEPOPOL)
noun_stem_type('tepotzitoloc', '', '', '', animate).  % Tepotzitoloc (personal name); no K headword
noun_stem_type('tepotzoteca', '', '', '', animate).  % person from Tepotzotlan, absolutive-less form
noun_stem_type('tepotzoteca', 'tl', '', '', animate).  % person from Tepotzotlan (K TEPOTZOHTĒCA-TL, c for h)
noun_stem_type('tepotzotla', '', '', '', inanimate).  % place Tepotzotla (K TEPOTZOHTLAN)
noun_stem_type('tepoz', 'tli', 'tētepoz', 'tehtepoz', inanimate).  % metal, iron
noun_stem_type('tepozcuacalalatli', '', '', '', inanimate).  % iron rattling weapon (TEPOZ-TLI + CUACALALATLI)
noun_stem_type('tepozhuipilli', '', '', '', inanimate).  % iron shirt (TEPOZ-TLI + HUIPĪL-LI)
noun_stem_type('tepozm', '', '', '', inanimate).  % iron (bound form of TEPOZ-TLI before -ITL)
noun_stem_type('tepozmaccuahui', 'tl', '', '', inanimate).  % iron sword (TEPOZ-TLI + MACCUAHU(I)-TL)
noun_stem_type('tepozmacuahuehue', '', '', '', animate).  % halberdier
noun_stem_type('tepozmacuahuitl', '', '', '', inanimate).  % iron club (TEPOZ-TLI + MACUAHUITL)
noun_stem_type('tepozmācuauh', '', '', '', inanimate).  % iron sword (possessed stem of tepozmācuahuitl); no K headword
noun_stem_type('tepozmācuāuh', '', '', '', inanimate).  % iron sword (TEPOZ-TLI + MĀCUĀHUITL); ch. 38
noun_stem_type('tepozmatlahuipilli', '', '', '', inanimate).  % iron net shirt (TEPOZ-TLI + MATLAHUIPĪL-LI)
noun_stem_type('tepozmi', 'tl', '', '', inanimate).  % iron bolt (TEPOZ-TLI + MĪ-TL; sources tepozmitl)
noun_stem_type('tepozmītl', '', '', '', inanimate).  % iron arrow (TEPOZ-TLI + MĪ-TL)
noun_stem_type('tepoztlahuītōlhuiani', '', '', '', animate).  % crossbowman
noun_stem_type('tepoztlahuītōlli', '', '', '', inanimate).  % iron club (? + TLAHUĪTŌL-LI)
noun_stem_type('tepoztopil', '', '', '', inanimate).  % iron lance (TEPOZ-TLI + TOPIL-LI)
noun_stem_type('tepoztopil', 'li', '', '', inanimate).  % iron staff (TEPOZ-TLI + TOPIL-LI)
noun_stem_type('tepoztopile', '', '', '', animate).  % halberdier
noun_stem_type('tepul', '', '', '', inanimate).  % chunk, lump
noun_stem_type('teputzco', '', '', '', inanimate).  % behind someone (K -TEPUTZCO)
noun_stem_type('tepuz', 'tli', '', '', inanimate).  % iron, metal (FC u for o); K TEPOZ-TLI
noun_stem_type('tepuz', 'tli', 'tepuz', 'tepuz', inanimate).  % iron, metal (K TEPOZ-TLI)
noun_stem_type('tepuzcuacalalac', '', '', '', inanimate).  % iron cuirass/helmet; compound
noun_stem_type('tepuzcuacalalatli', '', '', '', inanimate).  % iron rattle/helmet; compound
noun_stem_type('tepuzmi', 'tl', '', '', inanimate).  % iron bolt (TEPOZ-TLI + MĪ-TL; sources u for o)
noun_stem_type('tepuztēca', 'tl', '', '', animate).  % person from Tepoztlan (K TEPOZTĒCA-TL; has z)
noun_stem_type('tepuztlahuitoloani', '', '', '', animate).  % crossbowman (tepoz-tlahuitōl + -oani); no K headword
noun_stem_type('tepzolac', '', '', '', inanimate).  % place name Tepzolac; no K headword
noun_stem_type('tepzolatl', '', '', '', inanimate).  % the Tepzolatl stream; no K headword
noun_stem_type('tequi', '', '', '', inanimate).  % work
noun_stem_type('tequi', 'tl', '', '', inanimate).  % work
noun_stem_type('tequihua', '', '', '', animate).  % official, warrior (K TEQUIHUA)
noun_stem_type('tequihuah', '', '', '', animate).  % seasoned warrior; K TEQUIHUAH
noun_stem_type('tequitcāyatl', '', '', '', inanimate).  % tribute cloak (K TEQUITCĀYATL)
noun_stem_type('tequitque', '', '', '', animate).  % workers (pl. of TEQUITQUI)
noun_stem_type('tequitqui', '', '', '', animate).  % worker, one doing duty (K TEQUITQUI)
noun_stem_type('tequiuh', '', '', '', inanimate).  % task, duty (K TEQUIUH)
noun_stem_type('tequixquia', 'tl', '', '', inanimate).  % saltpeter water (TEQUIXQUI-TL + Ā-TL)
noun_stem_type('tequixquizaca', 'tl', '', '', inanimate).  % saltpeter grass
noun_stem_type('tētahuān', '', '', '', animate).  % their fathers (TĒ- + TAH-TLI + -huān)
noun_stem_type('tētaohuān', '', '', '', animate).  % their fathers (tē- + TAH-TLI + -huān, FC spelling)
noun_stem_type('tetechacia', '', '', '', inanimate).  % rapprochement (TĒ- + -TECH + ACI + -YA): amotetechacia
noun_stem_type('tētelpochcalli', '', '', '', inanimate).  % youths' house
noun_stem_type('tetelpuchcalli', '', '', '', inanimate).  % youths' houses (TĒ-TELPŌCH-CAL-LI)
noun_stem_type('tetemazolco', '', '', '', inanimate).  % place Tetemazolco
noun_stem_type('tetenāmi', 'tl', '', '', inanimate).  % meeting, encounter (TĒ- + NĀMIQUI)
noun_stem_type('tetenantepotzco', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('tēteōpan', '', '', '', inanimate).  % temple (TĒ-TEŌ-PAN)
noun_stem_type('tetepe', '', '', '', animate).  % hills
noun_stem_type('tetepozmācuauh', '', '', '', inanimate).  % their respective iron swords (distributive)
noun_stem_type('tetepozmācuāuh', '', '', '', inanimate).  % distributive plural 'iron swords'
noun_stem_type('tetepoztopil', '', '', '', inanimate).  % their respective iron lances (tepoz-tli + topīl-li)
noun_stem_type('tetepuzmacuauh', '', '', '', inanimate).  % variant of TETEPOZMĀCUĀUH
noun_stem_type('tetepuztin', '', '', '', animate).  % iron beings; lexicalized plural of TEPOZ-TLI
noun_stem_type('teteuhtitlan', '', '', '', inanimate).  % place name Teteuhtitlan
noun_stem_type('tetica', '', '', '', inanimate).  % with stones (TETL + -tica)
noun_stem_type('teticpac', '', '', '', inanimate).  % Teticpac/Tepeticpac, coastal town (toponym)
noun_stem_type('tetlachihuānimeh', '', '', '', animate).  % sorcerers (TĒ- + TLACHĪHUA + -NI, pl.)
noun_stem_type('tētlachihuiani', '', '', '', animate).  % sorcerer (tē-tlachihuiani)
noun_stem_type('tētlahpalōl', 'li', '', '', inanimate).  % greeting (< tē- + tlahpalō(l), K TLAHPALOĀ / TETLAHPALOLIZ-TLI): possessed īntētlahpalōl
noun_stem_type('tetlaquetzalli', '', '', '', inanimate).  % stone column (K TETLAHQUETZAL-LI)
noun_stem_type('tetlazotlaliz', '', '', '', inanimate).  % love (TĒ-TLAZOHTLALIZ-TLI)
noun_stem_type('tetlepanquetzatzin', '', '', '', animate).  % personal name Tetlepanquetzatzin
noun_stem_type('tetlepānquetzatzin', '', '', '', animate).  % Tetlepānquetzatzin (personal name)
noun_stem_type('tetzāhui', 'tl', '', '', inanimate).  % omen (K TETZAHUI-TL)
noun_stem_type('tetzauhtlahtōlli', '', '', '', inanimate).  % scandalous tale (K TETZAUHTLAHTŌL-LI)
noun_stem_type('tetzcoca', '', '', '', animate).  % Tetzcoca, people of Texcoco
noun_stem_type('tetzcoco', '', '', '', inanimate).  % place name Tetzcoco (variant of TETZCOHCO)
noun_stem_type('tetzcohco', '', '', '', inanimate).  % toponym Tetzcohco (K TETZCOHCO)
noun_stem_type('tetzcuco', '', '', '', inanimate).  % Tetzcuco (place name)
noun_stem_type('tetzmetl', '', '', '', inanimate).  % tetzmetl (plant/mineral)
noun_stem_type('tetzo', '', '', '', inanimate).  % contents, wealth (poss. ī-tetzō)
noun_stem_type('tetzō', '', '', '', inanimate).  % contents, wealth (var. spelled with ō)
noun_stem_type('tetzono', '', '', '', animate).  % foundation, support (possessed pl. -huān); no K headword
noun_stem_type('tēuc', '', '', '', animate).  % lord (K TĒUC-TLI, compound stem): teuctoca
noun_stem_type('tēuc', 'tli', '', '', animate).  % lord (K TĒUC-TLI)
noun_stem_type('teucalhuia', '', '', '', animate).  % person of Teucalhuiacan (no K headword)
noun_stem_type('teucalhuiacan', '', '', '', inanimate).  % place Teucalhuiacan (no K headword)
noun_stem_type('teucalhuian', '', '', '', inanimate).  % Teucalhuian (place name)
noun_stem_type('tēuctlamacazqui', '', '', '', animate).  % high priest (TĒUCTLAMACAZQUI)
noun_stem_type('tēucui', '', '', '', animate).  % lord (combining form of TĒUC-TLI)
noun_stem_type('teuh', 'tli', '', '', inanimate).  % dust (K TEUH-TLI)
noun_stem_type('teuh', 'tli', 'teuh', 'teuh', inanimate).  % dust (K TEUH-TLI)
noun_stem_type('teuht', 'li', '', '', inanimate).  % dust (K TEUHT-LI)
noun_stem_type('texcallan', '', '', '', inanimate).  % Texcallan (old name of Tlaxcala)
noun_stem_type('texcalli', '', '', '', inanimate).  % rock, oven (K TEXCAL-LI)
noun_stem_type('texcalteca', '', '', '', animate).  % Texcalteca, people of Texcallan
noun_stem_type('texoco', 'tl', '', '', inanimate).  % tejocote (K TEXOCO-TL)
noun_stem_type('texopan', '', '', '', inanimate).  % Texopan (place name)
noun_stem_type('texuh', 'tli', '', '', inanimate).  % turquoise? (K TEXUH-TLI?; unmarked)
noun_stem_type('teyacac', '', '', '', animate).  % leader, one who goes ahead (tē-yacac); no K headword
noun_stem_type('teyō', '', '', '', inanimate).  % fame, renown (K TEYŌ-TL)
noun_stem_type('tēzca', 'tl', '', '', inanimate).  % mirror (K TĒZCA-TL)
noun_stem_type('tezcacoac', '', '', '', inanimate).  % toponym Tezcacoac
noun_stem_type('tezcacoacatl', '', '', '', animate).  % person of Tezcacoac
noun_stem_type('tezcacuitlapil', 'li', '', '', inanimate).  % mirror-tail ornament
noun_stem_type('tezcacuitlapile', '', '', '', inanimate).  % mirror-tail ornament (possessed)
noun_stem_type('tezcapociyoh', '', '', '', inanimate).  % cloak design (TĒZCA-TL + PŌC-TLI + -YOH)
noun_stem_type('tezcatlipoca', '', '', '', animate).  % Tezcatlipoca (K TEZCATLEPOCA)
noun_stem_type('tezontzapo', 'tl', '', '', inanimate).  % mamey (K TEZONTZAPO-TL)
noun_stem_type('tiācahuān', '', '', '', animate).  % warriors; K TĪYĀCAUH (pl. tiyācahuān)
noun_stem_type('tiācāhuān', '', '', '', animate).  % brave warriors (TIAHCAUH + -HUĀN)
noun_stem_type('tiacaoan', '', '', '', animate).  % variant plural (TIYĀCĀHUĀN)
noun_stem_type('tiacauh', '', '', '', animate).  % warrior, brave man (K TIAHCAUH; syncopated tiacauh)
noun_stem_type('tiācauh', '', '', '', animate).  % warrior, brave man; K TĪYĀCAUH
noun_stem_type('tiācāuh', '', '', '', animate).  % brave warrior, leader (K TIYĀCĀUH)
noun_stem_type('tiahcahuā', '', '', '', animate).  % brave warriors (K TIAHCAUH)
noun_stem_type('tiahcahuān', '', '', '', animate).  % warriors, brave men; pl. of TIAHCAUH
noun_stem_type('tiahcahuāne', '', '', '', animate).  % O warriors! (vocative of TIAHCAUH)
noun_stem_type('tiahcauh', '', '', '', animate).  % warrior (K TIAHCAUH)
noun_stem_type('tiahcāuh', '', '', '', animate).  % variant of TIYĀCĀUH
noun_stem_type('tianquiz', 'tli', '', '', inanimate).  % market (FC spelling); K TIANQUIZ-TLI
noun_stem_type('tiānquiz', 'tli', '', '', inanimate).  % marketplace (K TIYĀNQUIZ-TLI; sources tiānquiztli)
noun_stem_type('tianquiztentli', '', '', '', inanimate).  % edge of the market (tianquiz + tēn-tli)
noun_stem_type('tic', '', '', '', inanimate).  % inside (contracted variant): ītic = ī- + tic
noun_stem_type('ticociyahuacatl', '', '', '', animate).  % Ticociyahuacatl (personal name)
noun_stem_type('ticocyahuaca', 'tl', '', '', animate).  % title Ticocyahuacatl (no K headword)
noun_stem_type('tihpontli', '', '', '', inanimate).  % blunt arrow; no K headword
noun_stem_type('tiiācahuān', '', '', '', animate).  % warriors (FC ii spelling)
noun_stem_type('tiliuhcan', '', '', '', inanimate).  % place name Tiliuhcan; no K headword
noun_stem_type('tilma', 'tl', '', '', inanimate).  % K TILMA-TL cloak
noun_stem_type('tilma', 'tli', '', '', inanimate).  % cloak (K TILMAH-TLI; sources tilmatli)
noun_stem_type('tilmā', '', '', '', inanimate).  % cloak (possessed stem: ītilma)
noun_stem_type('tilmah', 'tli', '', '', inanimate).  % cloak, blanket (K TILMAH-TLI)
noun_stem_type('tititl', '', '', '', inanimate).  % Tititl (month)
noun_stem_type('titlan', '', '', '', animate).  % messenger, possessed stem (TĪTLAN-TLI)
noun_stem_type('tītlan', 'tli', 'tītlan', 'tītlan', animate).  % messenger (K TĪTLAN-TLI, pl. -tin)
noun_stem_type('titlano', '', '', '', animate).  % messenger (K TĪTLAN(I), agentive): ititlanohuān
noun_stem_type('titlanohuān', '', '', '', animate).  % messengers (poss. pl. of TĪTLAN(I))
noun_stem_type('titlanti', '', '', '', animate).  % messenger (FC variant of TĪTLAN-TLI)
noun_stem_type('tītlanti', '', '', '', animate).  % messengers (K TĪTLANTI)
noun_stem_type('tixapo', '', '', '', inanimate).  % surface, facing (possessed stem)
noun_stem_type('tiyāca', '', '', '', animate).  % warrior, brave one (pl. tiyācahuān); K TĪYĀCAUH
noun_stem_type('tiyacahuan', '', '', '', animate).  % brave warriors (plural of TIYĀCAUH; no K headword)
noun_stem_type('tiyānquiz', '', '', '', inanimate).  % market
noun_stem_type('tiyānquiz', 'tli', '', '', inanimate).  % market
noun_stem_type('tizahua', '', '', '', animate).  % personal name Tiçahua (no K headword)
noun_stem_type('tizapan', '', '', '', inanimate).  % Tizapan (place name)
noun_stem_type('tizocic', '', '', '', animate).  % Tizocic (king)
noun_stem_type('tlāca', '', '', '', animate).  % people (bare plural stem of TLĀCA-TL)
noun_stem_type('tlāca', 'tl', 'tlātlaca', 'tlahtlāca', animate).  % person
noun_stem_type('tlacalaquil', 'li', '', '', inanimate).  % tribute (TLACALAQUIA + -liztli/-lli)
noun_stem_type('tlacalaquili', '', '', '', inanimate).  % tribute (K TLACALAQUIL-LI)
noun_stem_type('tlacanaoal', 'li', '', '', inanimate).  % something arranged; no K headword
noun_stem_type('tlācanetzolti', '', '', '', animate).  % thistle-person (FC hapax)
noun_stem_type('tlacaoaca', '', '', '', inanimate).  % clamor (K TLACAOACA)
noun_stem_type('tlacatec', 'tli', '', '', animate).  % chief, lord (K TLACATEC-TLI)
noun_stem_type('tlacateca', 'tl', '', '', animate).  % chief (K TLACATEC-TLI; sources tlacatecatl)
noun_stem_type('tlacateccan', '', '', '', inanimate).  % Tlacateccan (K TLACATECCO variant)
noun_stem_type('tlacateccatl', '', '', '', animate).  % title Tlacateccatl
noun_stem_type('tlācatecuhtli', '', '', '', animate).  % lord of men, ruler (title)
noun_stem_type('tlācateculōtlahtōl', 'li', '', '', inanimate).  % words of wizardry (TLĀCATECULŌ-TL + TLAHTŌL-LI)
noun_stem_type('tlācatepetl', '', '', '', inanimate).  % mountain of people (TLĀCA-TL + TEPĒ-TL)
noun_stem_type('tlācateuctli', '', '', '', animate).  % lord of men (variant spelling)
noun_stem_type('tlācatēuctli', '', '', '', animate).  % Tlacateuctli, title of Moteuczoma
noun_stem_type('tlacatl', '', '', '', animate).  % person (unmarked variant)
noun_stem_type('tlacatzin', '', '', '', animate).  % personal name Tlacatzin
noun_stem_type('tlacaxipehualiztli', '', '', '', inanimate).  % Tlacaxipehualiztli (month)
noun_stem_type('tlachālchiuhcuilōl', 'li', '', '', inanimate).  % jade-painted ornament
noun_stem_type('tlachcahuān', '', '', '', animate).  % old men (plural of TLACH-CĀUH)
noun_stem_type('tlachcāuh', '', '', '', animate).  % old man (TLACH-TLI + -CĀUH)
noun_stem_type('tlachicaztli', '', '', '', inanimate).  % a food called tlachicaztli (no K headword)
noun_stem_type('tlachichīhual', 'li', '', '', inanimate).  % something made (reduplicated CHĪHUA)
noun_stem_type('tlachīhual', 'li', '', '', inanimate).  % creation, work (K TLACHĪHUAL-LI)
noun_stem_type('tlachiuh', 'tli', '', '', inanimate).  % something made (variant)
noun_stem_type('tlachīuh', 'tli', '', '', inanimate).  % something made (tla- + CHĪUH, perfective of CHĪHU(A))
noun_stem_type('tlachixcā', '', '', '', animate).  % lookout, spy (< tla-chix-qui, preterit agentive of K TLACHIY(A)): īntlachixcāhuān
noun_stem_type('tlachuītōlli', '', '', '', inanimate).  % thing of honor? (cf. TLAHUĪTŌL-LI)
noun_stem_type('tlaciuhque', '', '', '', animate).  % soothsayer (FC tlaciuhqueh)
noun_stem_type('tlaciuhqueh', '', '', '', animate).  % soothsayers (TLACIUHQUI; no K headword)
noun_stem_type('tlaciuhqui', '', '', '', animate).  % rainmaker, sorcerer (K TLACIUHQUI)
noun_stem_type('tlaco', '', '', '', animate).  % Tlacotzin (personal name; K TLACO?)
noun_stem_type('tlacoch', 'tli', '', '', inanimate).  % spear (K TLACOCH-TLI)
noun_stem_type('tlacochcalcatl', '', '', '', animate).  % Tlacochcalcatl (title/name)
noun_stem_type('tlācochcalcatl', '', '', '', animate).  % Tlacochcalcatl, high title (K TLĀCOCHCALCATL)
noun_stem_type('tlacochcalco', '', '', '', inanimate).  % place name 'arrow-house'; no K headword
noun_stem_type('tlacohuahcan', '', '', '', inanimate).  % Tlacohuahcan (Tacuba)
noun_stem_type('tlacopan', '', '', '', inanimate).  % place name Tlacopan/Tacuba; K TLACOPAN
noun_stem_type('tlacopanpa', '', '', '', inanimate).  % toward Tlacopan; Tlacopan (core) + -pa
noun_stem_type('tlacotzin', '', '', '', animate).  % personal name Tlacotzin
noun_stem_type('tlacpactonco', '', '', '', inanimate).  % Tlacpactonco (place name)
noun_stem_type('tlacuacuallo', '', '', '', inanimate).  % painted/patterned thing; no K headword
noun_stem_type('tlacual', '', '', '', inanimate).  % food (FC spelling of TLACUALLI)
noun_stem_type('tlacual', 'li', 'tlacual', 'tlacual', inanimate).  % food (K TLACUAL-LI)
noun_stem_type('tlacuāltzintli', '', '', '', inanimate).  % food (K TLACUĀL-TZIN-TLI)
noun_stem_type('tlacuelehuatl', '', '', '', animate).  % personal name Tlacuelehuatl
noun_stem_type('tlacuilol', 'li', '', '', inanimate).  % painting, writing (K IHCUILOA + -llli)
noun_stem_type('tlacuilōl', 'li', '', '', inanimate).  % writing, painting (K TLAHCUILŌL-LI)
noun_stem_type('tlaecicuilol', 'li', '', '', inanimate).  % embossed design; no K headword
noun_stem_type('tlaelli', '', '', '', inanimate).  % anger, badness (K TLAHYEL-LI)
noun_stem_type('tlahcochcalcatl', '', '', '', animate).  % chief of the arrow house
noun_stem_type('tlahcuauh', '', '', '', animate).  % wise man, diviner (K TLAHCUAH?)
noun_stem_type('tlahtlac', '', '', '', inanimate).  % burning, fire (cf. TLATLAC)
noun_stem_type('tlahtoani', '', '', '', animate).  % ruler (K TLAHTOANI)
noun_stem_type('tlahtocnoch', 'tli', '', '', inanimate).  % whitish-red cactus fruit (TLAHTOH-TLI + NOCH-TLI)
noun_stem_type('tlahtoh', '', '', '', animate).  % ruler (possessed/pl. stem of TLAHTOĀNI); K TLAHTOH
noun_stem_type('tlahtohcā', '', '', '', inanimate).  % rulership, kingdom (K TLAHTOHCĀ-YŌ-TL); tlahtohcachīhua
noun_stem_type('tlahtōhca', '', '', '', animate).  % ruler, combining form of TLAHTOHQUI (cf. K TLAHTOHCĀCAL-LI)
noun_stem_type('tlahtohcaiyo', '', '', '', animate).  % rulers, lords
noun_stem_type('tlahtohcān', '', '', '', inanimate).  % residence of the ruler; K TLAHTOHCĀN
noun_stem_type('tlahtohcāuh', '', '', '', animate).  % ruler, possessed stem (TLAHTOHCĀUH)
noun_stem_type('tlahtohcāyō', '', '', '', inanimate).  % rulership (TLAHTOHCAYŌ-TL)
noun_stem_type('tlahtohcāyō', 'tl', '', '', inanimate).  % rulership, title (K TLAHTOHCAYŌ-TL)
noun_stem_type('tlahtohcāyōca', '', '', '', inanimate).  % rulership (TLAHTOHCAYŌ-TL + -ca)
noun_stem_type('tlahtōl', '', '', '', inanimate).  % word
noun_stem_type('tlahtōl', 'li', '', '', inanimate).  % word
noun_stem_type('tlahtōlchicāhuac', '', '', '', inanimate).  % strong word (TLAHTŌL-LI + CHICĀHUAC)
noun_stem_type('tlahtōleh', '', '', '', animate).  % one who has words? (cf. TLAHTŌL-LI)
noun_stem_type('tlahtōloyan', '', '', '', inanimate).  % place of speech (TLAHTŌL-LI + -YĀN)
noun_stem_type('tlahuānqueh', '', '', '', animate).  % drunkards (pl. of TLAHUANQUI)
noun_stem_type('tlahuānqui', '', '', '', animate).  % drunkard (K TLAHUANQUI)
noun_stem_type('tlahueliloc', '', '', '', animate).  % wicked person (K TLAHUĒLILOC)
noun_stem_type('tlahuīlanal', '', '', '', animate).  % one who is dragged (TLA- + HUĪLĀNA + -l)
noun_stem_type('tlahuipan', 'tli', '', '', inanimate).  % K TLAHUIPAN-TLI cape
noun_stem_type('tlahuitōl', 'li', '', '', inanimate).  % bow; K TLAHUITŌL-LI
noun_stem_type('tlahuiz', '', '', '', animate).  % one possessing devices
noun_stem_type('tlahuiz', 'tli', '', '', inanimate).  % warrior's device, insignia (K TLAHUIZ-TLI)
noun_stem_type('tlāhuiz', 'tli', '', '', inanimate).  % warrior's device (K TLAHUIZ-TLI; long ā)
noun_stem_type('tlāhuīz', 'tli', '', '', inanimate).  % device, ornament, arms (K TLĀHUĪZ-TLI)
noun_stem_type('tlahuizcal', 'li', '', '', inanimate).  % dawn light (K TLAHUIZCAL-LI)
noun_stem_type('tlāhuizcal', 'li', '', '', inanimate).  % dawn light (K TLAHUIZCAL-LI)
noun_stem_type('tlahuizceca', '', '', '', animate).  % one with war devices, brave warrior; no K headword
noun_stem_type('tlahzol', 'li', 'tlahzol', 'tlahzol', inanimate).  % trash, chaff (K TLAHZOL-LI)
noun_stem_type('tlaīhualhuān', '', '', '', animate).  % those sent (TLA- + ĪHUĀL-HUĀN)
noun_stem_type('tlaixcua', 'tl', '', '', inanimate).  % door lintel (K TLAIXCUA-TL)
noun_stem_type('tlaixcuipan', '', '', '', inanimate).  % place name Tlaixcuipan
noun_stem_type('tlaixpolo', '', '', '', inanimate).  % desolation, destruction (tla- + IXPOLOA)
noun_stem_type('tlaiyecoliztli', '', '', '', inanimate).  % preparation (YECOA action noun)
noun_stem_type('tlāl', 'li', '', '', inanimate).  % earth, land (K TLĀL-LI)
noun_stem_type('tlāl', 'li', 'tlal', 'tlal', inanimate).  % earth, land
noun_stem_type('tlalhuicatotōnti', '', '', '', animate).  % little backlanders (TLALHUICATL + -totōn)
noun_stem_type('tlāliztacapan', '', '', '', inanimate).  % 'at the white earth', toponym
noun_stem_type('tlalmomoz', '', '', '', inanimate).  % earthen platform (FC tlalmomoztli)
noun_stem_type('tlālōcān', '', '', '', inanimate).  % Tlalocan, place of Tlaloc
noun_stem_type('tlālpechtli', '', '', '', inanimate).  % bed of earth (TLĀL-LI + PECH-TLI)
noun_stem_type('tlaltecatzin', '', '', '', animate).  % personal name Tlaltecatzin; no K headword (tlāl-tec-tzin)
noun_stem_type('tlaltecayoacan', '', '', '', inanimate).  % place name Tlaltecayoacan; no K headword
noun_stem_type('tlālticpac', '', '', '', inanimate).  % surface of the earth (K TLĀLTICPAC)
noun_stem_type('tlāltipac', '', '', '', inanimate).  % world
noun_stem_type('tlāltipactli', '', '', '', inanimate).  % world
noun_stem_type('tlamacazca', '', '', '', animate).  % priest, possessed stem (TLAMACAZQUI)
noun_stem_type('tlamachiyō', '', '', '', inanimate).  % sign, mark (TLAMACHIYŌ-TL); unmarked
noun_stem_type('tlamahuiztililiztica', '', '', '', inanimate).  % with splendor (TLAMAHUIZŌLIZ-TLI + -tica)
noun_stem_type('tlamama', '', '', '', animate).  % carrier (TLAMAMA + agentive)
noun_stem_type('tlamamalchīchīuh', '', '', '', inanimate).  % beast of burden load (TLAMAMAL-LI + CHĪCHĪUH)
noun_stem_type('tlamāmātlaioc', '', '', '', inanimate).  % landing (of temple)
noun_stem_type('tlaman', 'tli', '', '', inanimate).  % a separate entity (K TLAMAN-TLI)
noun_stem_type('tlamatini', '', '', '', animate).  % sage (K TLAMATINI, pl. TLAMATINIMEH)
noun_stem_type('tlamayocatl', '', '', '', animate).  % personal name Tlamayocatl
noun_stem_type('tlamimilolticpac', '', '', '', inanimate).  % Tlamimilolticpac (place name)
noun_stem_type('tlan', '', '', '', inanimate).  % below, among; K -TLAN: ītlan, īntlan
noun_stem_type('tlanahuatl', '', '', '', inanimate).  % circle, edge; no K headword
noun_stem_type('tlancuac', '', '', '', inanimate).  % chest, breast area; K TLANCOĀ-TL (relational -c)
noun_stem_type('tlanitzco', '', '', '', inanimate).  % under the teeth (tlan- + itz- + -co)
noun_stem_type('tlanmantihuitzeh', '', '', '', animate).  % Lexicalized possessed participle/relative: īn-tlanman-tihuitzeh 'those who came among them' (3pl possessor īn- + tlanman-ti-huitz-eh).
noun_stem_type('tlaolli', '', '', '', inanimate).  % shelled maize (K TLAŌL-LI)
noun_stem_type('tlaotonxintli', '', '', '', animate).  % poor wretch (TLAO- + TONXIN-TLI)
noun_stem_type('tlapal', 'li', '', '', inanimate).  % K TLAPAL-LI red paint
noun_stem_type('tlapalcamoh', 'tli', '', '', inanimate).  % colored sweet potato (TLAPAL-LI + CAMOH-TLI)
noun_stem_type('tlapalihui', '', '', '', animate).  % manly, strong (TLAHPALIHUI; no K headword)
noun_stem_type('tlapalpul', '', '', '', animate).  % wretched fellow
noun_stem_type('tlapaltecatl', '', '', '', animate).  % personal name Tlapaltecatl
noun_stem_type('tlapan', 'tli', 'tlapan', 'tlapan', inanimate).  % flat roof (K TLAPAN-TLI)
noun_stem_type('tlapān', '', '', '', inanimate).  % roof (K TLAPAN-TLI): ītlapān
noun_stem_type('tlapanco', '', '', '', inanimate).  % roof loft; K TLAPANCO (possessed ī-tlapanco)
noun_stem_type('tlapaneca', 'tl', '', '', animate).  % person of Tlapan (no K headword)
noun_stem_type('tlapechco', '', '', '', inanimate).  % on the bed (TLAPECH-TLI + -co)
noun_stem_type('tlapechian', '', '', '', inanimate).  % bed, platform (TLAPECH-TLI + -YĀN)
noun_stem_type('tlapepenti', '', '', '', animate).  % chosen one
noun_stem_type('tlapictli', '', '', '', inanimate).  % invented thing (K TLAPICT-LI)
noun_stem_type('tlapieliz', 'tli', '', '', inanimate).  % guarding (TLA-PIELIA + -liztli)
noun_stem_type('tlapoal', 'li', '', '', inanimate).  % K TLAPOAL-LI count, number
noun_stem_type('tlapotonil', 'li', '', '', inanimate).  % something twisted; no K headword
noun_stem_type('tlaquetzal', 'li', '', '', inanimate).  % pillar (K TLAQUETZAL-LI)
noun_stem_type('tlaquili', '', '', '', inanimate).  % food (TLA- + QUĪ?); FC
noun_stem_type('tlaquittli', '', '', '', inanimate).  % something seen (ITTA + -tli); no K headword
noun_stem_type('tlatean', 'tli', '', '', inanimate).  % something spread out; no K headword
noun_stem_type('tlateicuilol', 'li', '', '', inanimate).  % engraved design; no K headword
noun_stem_type('tlatepehualli', '', '', '', inanimate).  % mound, heap (TEPEHUALLI)
noun_stem_type('tlatepozmīhuiani', '', '', '', animate).  % crossbowman
noun_stem_type('tlatepoztlahuītōlhuiani', '', '', '', animate).  % crossbowman
noun_stem_type('tlateputzca', 'tl', '', '', animate).  % someone from Tlateputzco (other side of the mountains); no K headword
noun_stem_type('tlatilolca', '', '', '', animate).  % bare Tlatilolca (plural Tlatilolcah)
noun_stem_type('tlatilolca', 'tl', '', '', animate).  % Tlatilolca, person of Tlatilolco
noun_stem_type('tlatilolcah', '', '', '', animate).  % Tlatelolca (pl.)
noun_stem_type('tlatilolco', '', '', '', inanimate).  % place name Tlatilolco
noun_stem_type('tlatilulca', '', '', '', animate).  % bare Tlatilulca (plural Tlatilulcah)
noun_stem_type('tlatilulca', 'tl', '', '', animate).  % Tlatilulca, person of Tlatilulco
noun_stem_type('tlatilulco', '', '', '', inanimate).  % Tlatilulco (place name)
noun_stem_type('tlatlācateculoh', '', '', '', animate).  % wizard (TLĀCATECULŌ-TL + -H)
noun_stem_type('tlatlacuīhuītectli', '', '', '', inanimate).  % carved/painted thing; compound
noun_stem_type('tlatlahuitōl', '', '', '', inanimate).  % bows (reduplicated/collective variant of tlahuitōl)
noun_stem_type('tlatlahuizcal', 'li', '', '', inanimate).  % dawn light (TLA + TLAHUIZCAL-LI)
noun_stem_type('tlatlapal', 'li', '', '', inanimate).  % enclosure, fence; K TLATLAPAL-LI
noun_stem_type('tlatlapalcuāchtli', '', '', '', inanimate).  % red breeches; compound
noun_stem_type('tlatlatican', '', '', '', inanimate).  % burning place (TLATLATIA + -can)
noun_stem_type('tlatlatilcalli', '', '', '', inanimate).  % place of burning, storehouse (TLATLATIA + CALLI)
noun_stem_type('tlatlatilcuahuitl', '', '', '', inanimate).  % firewood (TLATLATIA + CUAHUITL)
noun_stem_type('tlatlatiloian', '', '', '', inanimate).  % place of burning (TLATLATIA + -lōyān)
noun_stem_type('tlatlatilōiān', '', '', '', inanimate).  % place of burning (TLATLATILIA + -YĀN, y written i; no K headword)
noun_stem_type('tlatlatlalicā', '', '', '', animate).  % substitute (TLAHTLALICĀ?)
noun_stem_type('tlatlatlamachilli', '', '', '', inanimate).  % carved thing
noun_stem_type('tlatlatlauhtiliz', '', '', '', inanimate).  % prayer (TLA-TLATLAUHTILIZ-TLI)
noun_stem_type('tlatlatzīniliz', 'tli', '', '', inanimate).  % thunderclap (K TLATLATZĪNILIZ-TLI)
noun_stem_type('tlatlilpal', 'li', '', '', inanimate).  % black paint (tlīl-li + tlapal-li)
noun_stem_type('tlatoāni', '', '', '', animate).  % ruler (K TLAHTŌĀNI)
noun_stem_type('tlatol', '', '', '', inanimate).  % word, tale (K TLAHTŌL-LI, h-less)
noun_stem_type('tlatoqueh', '', '', '', animate).  % rulers (pl. of TLAHTŌĀNI)
noun_stem_type('tlatqui', '', '', '', inanimate).  % property (possessed stem of TLAQUI-TL; īntlatquitzin)
noun_stem_type('tlatqui', 'tl', '', '', inanimate).  % goods, property (K TLATQUI-TL)
noun_stem_type('tlatzacutli', '', '', '', inanimate).  % tie, binding
noun_stem_type('tlatzincui', 'tl', '', '', inanimate).  % grains of maize (TLATZIN-TLI + CUI-TL)
noun_stem_type('tlatzoionilcaxitl', '', '', '', inanimate).  % frying vessel (TLA + TZOIO + CAXITL)
noun_stem_type('tlatzonanti', '', '', '', animate).  % chosen one
noun_stem_type('tlatzontec', 'tli', '', '', inanimate).  % barbed dart (K TLATZŌNTEC-TLI)
noun_stem_type('tlatzontectica', '', '', '', inanimate).  % with barbed darts (TLATZON-TLI + -tica)
noun_stem_type('tlatzotzon', '', '', '', inanimate).  % music
noun_stem_type('tlatzotzontli', '', '', '', inanimate).  % music
noun_stem_type('tlauhquechol', '', '', '', animate).  % roseate spoonbill (K TLAUHQUECHŌL)
noun_stem_type('tlaxacualolli', '', '', '', inanimate).  % something scratched/dug up (XACUALOĀ)
noun_stem_type('tlaxantectli', '', '', '', inanimate).  % brick (TLAXAN + TEC-TLI)
noun_stem_type('tlaxcal', 'li', '', '', inanimate).  % tortilla, bread; K TLAXCAL-LI
noun_stem_type('tlaxcallan', '', 'tlaxcallan', 'tlaxcallan', inanimate).  % Tlaxcala (place name)
noun_stem_type('tlaxcalteca', '', '', '', animate).  % gentilic Tlaxcalteca (K TLAXCALTĒCA-TL, pl. TLAXCALTECAH with short e; form is the plural)
noun_stem_type('tlaxcaltēca', 'tl', '', '', animate).  % person from Tlaxcala; K TLAXCALTĒCA-TL
noun_stem_type('tlaxcaltēcah', '', '', '', animate).  % Tlaxcaltecs (plural)
noun_stem_type('tlaxcaltecatl', '', '', '', animate).  % person of Tlaxcala (abs.)
noun_stem_type('tlaxcaltecatlahtoqueh', '', '', '', animate).  % lords of Tlaxcala (title)
noun_stem_type('tlaxillo', '', '', '', animate).  % servant, one who serves; no K headword
noun_stem_type('tlaxintli', '', '', '', inanimate).  % carved stone (K TLAXIN-TLI)
noun_stem_type('tlaxiuhtzacutli', '', '', '', inanimate).  % turquoise tie
noun_stem_type('tlaxiuhzalolli', '', '', '', inanimate).  % turquoise cord
noun_stem_type('tlaxixintli', '', '', '', inanimate).  % stone carving (TLA- + XIXIN-TLI)
noun_stem_type('tlaxochimaco', '', '', '', inanimate).  % TLĀXŌCHIMACO, 9th month
noun_stem_type('tlaxoxopiltectli', '', '', '', inanimate).  % carved green thing; no K headword
noun_stem_type('tlaxoxotlal', 'li', '', '', inanimate).  % green earth (xoxoctic + tlāl-li)
noun_stem_type('tlayacanqui', '', 'tlayacanqu', '', animate).  % subordinate leader (K TLAYACANQUI)
noun_stem_type('tlayi', '', '', '', animate).  % uncle
noun_stem_type('tlazalol', 'li', '', '', inanimate).  % something joined; no K headword
noun_stem_type('tlazoh', '', '', '', adjective).  % precious (combining form of TLĀZOH-TLI, K TLĀZOH-)
noun_stem_type('tlāzol', '', '', '', inanimate).  % trash
noun_stem_type('tlāzolli', '', '', '', inanimate).  % trash
noun_stem_type('tlazolyāotl', '', '', '', animate).  % personal name Tlazolyāōtl
noun_stem_type('tlazotetl', '', '', '', inanimate).  % precious stone (TLĀZOH- + TETL)
noun_stem_type('tlazotlanqui', '', '', '', inanimate).  % precious things ( TLĀZOH- + TLANQUI 'finished'; no K headword)
noun_stem_type('tlazotli', '', '', '', inanimate).  % precious thing (K TLAZOH-TLI, txt tlazotli)
noun_stem_type('tlazoxōchi', 'tl', '', '', inanimate).  % precious flower (TLAZO- + XŌCHI-TL)
noun_stem_type('tle', 'tl', '', '', inanimate).  % fire; K TLE-TL
noun_stem_type('tlecocomochtli', '', '', '', inanimate).  % fireplace (TLE-TL + COMŌCH-TLI)
noun_stem_type('tlecuezalō', 'tl', '', '', inanimate).  % spark, blaze (K TLECUEZALLŌ-TL)
noun_stem_type('tlemimiyāhuatl', '', '', '', inanimate).  % tongue of flame (K TLEMIMIYĀHUA-TL)
noun_stem_type('tlemiyāhua', 'tl', '', '', inanimate).  % flame (tle- + MIYĀHUA-TL)
noun_stem_type('tlemōyō', 'tl', '', '', inanimate).  % spark (tle-tl + mōyō-tl); K TLEMŌYŌ-TL
noun_stem_type('tlenenepil', 'li', '', '', inanimate).  % tongue of flame; K TLENENEPIL-LI
noun_stem_type('tlequiquiz', 'tli', '', '', inanimate).  % firearm; K TLEQUIQUIZ-TLI
noun_stem_type('tlequiquiztlalli', '', '', '', inanimate).  % gunpowder? (TLEQUIQUIZ-TLI + TLĀL-LI)
noun_stem_type('tlexōch', 'tli', '', '', inanimate).  % blazing coal; K TLEXŌCH-TLI
noun_stem_type('tlexōchi', 'tl', '', '', inanimate).  % ember, fire-flower (tle- + XŌCHI-TL)
noun_stem_type('tlilāzca', 'tl', '', '', animate).  % black ant (tlīl-āzca-tl)
noun_stem_type('tlilhuacan', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('tliliuhquitepeca', '', '', '', animate).  % person of Tliliuhquitepec (no K headword)
noun_stem_type('tliliuhquitepeca', 'tl', '', '', animate).  % someone from Tliliuhquitepec; no K headword (cf. TLILIQUITEPEC)
noun_stem_type('tliliuhquitepecah', '', '', '', animate).  % people of Tliliuhquitepec
noun_stem_type('tlillancalqui', '', '', '', animate).  % title Tlillancalqui
noun_stem_type('tlilpotonqui', '', '', '', animate).  % personal name Tlilpotonqui (no K headword)
noun_stem_type('tliltique', '', '', '', animate).  % black people (TLILTIC + plural)
noun_stem_type('tō', 'tli', '', '', inanimate).  % Diminutive allomorph -tō (pitzac-tō-tli) beside -tōn (Andrews 17.3 K -TŌN, HUĒHUĒNTŌN).
noun_stem_type('tōc', '', '', '', inanimate).  % name (possessed stem of TŌCAI-TL)
noun_stem_type('toca', 'tl', 'tōtoca', 'tohtoca', animate).  % spider
noun_stem_type('tōca', '', '', '', inanimate).  % name; possessed stem of TŌCA(I)-TL: ītōca
noun_stem_type('tōcai', '', '', '', inanimate).  % name
noun_stem_type('tōcai', 'tl', '', '', inanimate).  % name
noun_stem_type('tōcāyōcan', '', '', '', inanimate).  % named place; TŌCA(I)-TL + -YŌ + -CAN: ītōcāyōcan
noun_stem_type('tōch', 'in', 'tōtōch', 'tohtōch', animate).  % rabbit (Class -in)
noun_stem_type('tōch', 'tli', 'tōtōch', 'tohtōch', animate).  % rabbit (Class -tli)
noun_stem_type('tohualco', '', '', '', inanimate).  % courtyard ( no K headword)
noun_stem_type('tohualnepantla', '', '', '', inanimate).  % middle of the courtyard; no K headword
noun_stem_type('tolcellomeh', '', '', '', inanimate).  % reed sprouts (TŌL-IN + CEL-LI + -MEH)
noun_stem_type('tolcellutl', '', '', '', inanimate).  % reed sprout (TŌL-IN + CEL-LI?)
noun_stem_type('toleciyoh', '', '', '', inanimate).  % cloak design (no K headword; opaque)
noun_stem_type('tolitic', '', '', '', inanimate).  % among the reeds (TŌL-IN + -itic)
noun_stem_type('tolla', '', '', '', inanimate).  % reed place (TŌL-IN + -tla)
noun_stem_type('tolmayeccan', '', '', '', inanimate).  % toponym Tolmayeccan
noun_stem_type('tolteca', '', '', '', animate).  % the Tolteca; K TOLTĒCA-TL
noun_stem_type('toltecaacaloco', '', '', '', inanimate).  % Toltecaacaloco, place name
noun_stem_type('toma', '', '', '', inanimate).  % tomato
noun_stem_type('toma', 'tl', '', '', inanimate).  % tomato
noun_stem_type('tomāhuac', '', '', '', adjective).  % fat, plump (K TOMĀHUAC)
noun_stem_type('tomin', '', 'tōtomin', 'tohtomin', inanimate).  % money
noun_stem_type('tōn', '', '', '', inanimate).  % diminutive matrix stem
noun_stem_type('tōn', 'tli', '', '', inanimate).  % diminutive matrix stem (with absolutive)
noun_stem_type('tonac', '', '', '', inanimate).  % warmth, heat (TŌNA + -c)
noun_stem_type('tōnal', 'li', '', '', inanimate).  % K TŌNAL-LI fate, day-sign
noun_stem_type('tōnalhuitecoc', '', '', '', inanimate).  % sun-struck (tōnal-li + huitecoc)
noun_stem_type('tonan', '', '', '', animate).  % Tonan 'our mother' (mountain name)
noun_stem_type('tōnatiuh', '', 'tōtōnatiuh', 'tohtōnatiuh', animate).  % sun
noun_stem_type('tōnatiuhyoh', '', '', '', inanimate).  % sun-covered design (TŌNATIUH + -YOH)
noun_stem_type('topantemoctzin', '', '', '', animate).  % personal name Topantemoctzin
noun_stem_type('topil', '', '', '', inanimate).  % staff (possessed form of TOPIL-LI)
noun_stem_type('tōpīl', 'li', 'tōpīl', 'tōpīl', inanimate).  % staff, lance (K TŌPĪL-LI)
noun_stem_type('toquich', '', '', '', animate).  % man (K OQUICH-TLI; tōquich)
noun_stem_type('toquichtin', '', '', '', animate).  % our men; lexicalized plural of OQUICH-TLI
noun_stem_type('toquizhuatl', '', '', '', inanimate).  % maize leaf (K TOQUIZHUA-TL)
noun_stem_type('toro', 'tl', 'tōtoro', 'tohtoro', animate).  % bull (loan)
noun_stem_type('toroh', '', '', '', animate).  % bull (loan)
noun_stem_type('totecco', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('totēcuiyo', '', '', '', animate).  % our lord (vocative stem)
noun_stem_type('totēcuiyohuān', '', '', '', animate).  % our lords (TO-TĒCUI-YOHUĀN)
noun_stem_type('totlahtohcāuh', '', '', '', animate).  % our lord
noun_stem_type('tōtlan', '', '', '', inanimate).  % Totlan (place name)
noun_stem_type('tōtō', 'tl', 'tōtōtō', 'tohtōtō', animate).  % bird
noun_stem_type('totōcalco', '', '', '', inanimate).  % toponym Totōcalco 'bird-house' = TŌTŌ-TL + CAL-LI + -CO ( no K headword)
noun_stem_type('totoch', '', '', '', animate).  % rabbit
noun_stem_type('totol', '', '', '', animate).  % turkey stem (TŌTOL-IN; pl. tōtoltin)
noun_stem_type('tōtōlcuitlatzapo', 'tl', '', '', inanimate).  % turkey-excrement sapote (TŌTŌ-TL + CUITLA-TL + TZAPO-TL)
noun_stem_type('totoli', '', '', '', animate).  % turkey (TŌTŌ-TL variant)
noun_stem_type('tōtōli', '', '', '', animate).  % turkey (K TŌTOL-IN; FC tōtōli)
noun_stem_type('totolin', '', '', '', animate).  % turkey (unmarked variant)
noun_stem_type('tōtōlin', '', '', '', animate).  % turkey hen (TŌTŌ-TL + -LIN)
noun_stem_type('totollalhuatzalli', '', '', '', inanimate).  % roasted turkey (TŌTOL-IN + TLALHUATZALLI)
noun_stem_type('totollāpōzōnilli', '', '', '', inanimate).  % stewed turkey (TŌTOL-IN + PŌZŌNILLI)
noun_stem_type('tōtōllatleōhuatzalli', '', '', '', inanimate).  % roast turkey (TŌTOL-IN + TLATLEŌHUATZALLI)
noun_stem_type('tōtōlte', 'tl', '', '', animate).  % egg (K TŌTOLTE-TL)
noun_stem_type('totoltetl', '', '', '', inanimate).  % turkey egg (TŌTOL-IN + TE-TL)
noun_stem_type('tōtōmī', 'tl', '', '', inanimate).  % bird arrows (tōtō-tl + mī-tl); K TŌTŌ-TL, MĪ-TL
noun_stem_type('totomonaliztli', '', '', '', inanimate).  % pustules, breaking out
noun_stem_type('totomoniliztli', '', '', '', inanimate).  % pustule disease
noun_stem_type('totomoniztli', '', '', '', inanimate).  % pustule disease ( totomon- + -iztli)
noun_stem_type('totomotzin', '', '', '', animate).  % Totomotzin (personal name)
noun_stem_type('totōn', 't', '', '', animate).  % diminutive plural matrix stem
noun_stem_type('totopchimal', 'li', '', '', inanimate).  % leather shield (TOTOP-CHĪMAL-LI)
noun_stem_type('toxcatl', '', '', '', inanimate).  % Toxcatl (month)
noun_stem_type('tōyāhuān', '', '', '', animate).  % our enemies (TO-YĀŌUH-HUĀN)
noun_stem_type('tōyāōhuān', '', '', '', animate).  % our enemies (to- + YĀŌ-TL + -huān)
noun_stem_type('tōyāōuh', '', '', '', animate).  % our enemy (to- + YĀŌ-TLI)
noun_stem_type('tozcachicāhuac', '', '', '', animate).  % strong-voiced one (TOZCA-TL + CHICĀHUAC)
noun_stem_type('tozoztli', '', '', '', inanimate).  % Tozoztli (month)
noun_stem_type('tozoztontli', '', '', '', inanimate).  % Tozoztontli (month)
noun_stem_type('tozpolol', 'li', '', '', inanimate).  % yellowish thing; no K headword
noun_stem_type('tozquemitl', '', '', '', inanimate).  % TOZ-TLI + QUĒMI-TL yellow garment
noun_stem_type('toztlan', '', '', '', inanimate).  % place Toztlan (no K headword)
noun_stem_type('toztlapilolloh', '', '', '', inanimate).  % yellow-hung ornament
noun_stem_type('tzacuil', '', '', '', animate).  % protector, guardian (possessed -tzacuil); no K headword
noun_stem_type('tzacuxochi', 'tl', '', '', inanimate).  % tzacuxochitl (plant)
noun_stem_type('tzālan', '', '', '', inanimate).  % between (K -TZALAN, long first vowel in C; Andrews itzālan): ītzalan = ī- + tzālan
noun_stem_type('tzapo', 'tl', 'tzātzapotl', 'tzahtzapotl', inanimate).  % sapote fruit
noun_stem_type('tzapono', 'tl', '', '', inanimate).  % pitahaya (TZAPO-TL + NOCH-TLI)
noun_stem_type('tzapotla', '', '', '', inanimate).  % place name Tzapotla; no K headword
noun_stem_type('tzatziliz', '', '', '', inanimate).  % shouting, cry (action noun of TZATZI); K TZATZILIZ-TLI
noun_stem_type('tzatziliz', 'tli', '', '', inanimate).  % shouting (TZAHTZI + -liztli)
noun_stem_type('tzilacatzin', '', '', '', animate).  % personal name Tzilacatzin
noun_stem_type('tzin', '', '', '', inanimate).  % honorific/diminutive matrix stem
noun_stem_type('tzin', 'tli', '', '', inanimate).  % honorific/diminutive matrix stem (with absolutive)
noun_stem_type('tzinacan', 'tli', 'tzinacan', 'tzinacan', animate).  % bat (K TZINACAN-TLI)
noun_stem_type('tzinacantopilli', '', '', '', inanimate).  % bat-tooth lance (TZINACAN-TLI + TOPĪL-LI)
noun_stem_type('tzinacātopile', '', '', '', animate).  % bat-like halberdier
noun_stem_type('tzintlān', '', '', '', inanimate).  % at the base (TZIN-TLI + -TLAN): ītzintlān
noun_stem_type('tzioacpopoca', '', '', '', animate).  % personal name Tzioacpopoca (variant of Tzihuacpopoca) + tzin; no K headword
noun_stem_type('tzitzicaztilma', '', '', '', inanimate).  % nettle cloak (tzitzicaztli + tilma)
noun_stem_type('tzitzil', 'li', '', '', inanimate).  % bell (cf. K TZITZILICA 'jingle')
noun_stem_type('tzitzin', '', '', '', animate).  % honorific/diminutive plural matrix stem
noun_stem_type('tziuhcuexpal', 'li', '', '', animate).  % turquoise youth?; no K headword
noun_stem_type('tzoal', 'li', '', '', inanimate).  % K TZOAL-LI amaranth dough
noun_stem_type('tzoalilacatzol', 'li', '', '', inanimate).  % dough ball; no K headword
noun_stem_type('tzōmolco', '', '', '', inanimate).  % variant spelling of Tzōnmolco
noun_stem_type('tzon', 'tli', 'tzon', 'tzon', inanimate).  % hair (K TZON-TLI)
noun_stem_type('tzoncal', 'li', 'tzōtzoncal', 'tzohtzoncal', inanimate).  % hair
noun_stem_type('tzōnmolco', '', '', '', inanimate).  % Tzonmolco < tzon-tli + mōl-li + -co
noun_stem_type('tzonquician', '', '', '', inanimate).  % end (TZONQUIZ(A) 'end' + relational -n; no K headword)
noun_stem_type('tzontecoma', 'tl', '', '', animate).  % K TZONTECOMA-TL head
noun_stem_type('tzontecon', '', '', '', animate).  % head
noun_stem_type('tzotzocol', 'li', '', '', inanimate).  % large clay pitcher (K TZOTZOCOL-LI?)
noun_stem_type('tzotzomah', 'tli', 'tzotzomah', 'tzotzomah', inanimate).  % coarse blanket (K TZOTZOMAH-TLI)
noun_stem_type('tzoyectzin', '', '', '', animate).  % personal name Tzoyectzin
noun_stem_type('tzumpancuāuh', 'tli', '', '', animate).  % coral (K TZŌMPANCUAHU(I)-TL)
noun_stem_type('uhca', '', '', '', animate).  % old person (K UHCA?); pl. uhcahuān
noun_stem_type('vergantines', '', '', '', inanimate).  % brigantines (Sp. bergantines)
noun_stem_type('xā', '', '', '', inanimate).  % adobe? bound form; xāmitl
noun_stem_type('xacal', 'li', '', '', inanimate).  % jacal (K XAHCAL-LI)
noun_stem_type('xahualcuāuhyoh', '', '', '', inanimate).  % cloak design (XAL-LI + CUĀUH-TLI + -YOH)
noun_stem_type('xal', 'li', 'xāxal', 'xahxal', inanimate).  % sand
noun_stem_type('xalxoco', 'tl', '', '', inanimate).  % guava (K XALXOCO-TL)
noun_stem_type('xami', 'tl', '', '', inanimate).  % K XAMI-TL adobe
noun_stem_type('xāmi', 'tl', '', '', inanimate).  % adobe brick (K XĀMI-TL)
noun_stem_type('xantetl', '', '', '', inanimate).  % whetstone (K XĀLTE-TL)
noun_stem_type('xantica', '', '', '', inanimate).  % with adobe (XAMITL + -tica)
noun_stem_type('xaya', 'tl', 'xāxaya', 'xahxaya', inanimate).  % face, mask
noun_stem_type('xayac', '', '', '', inanimate).  % face (īxayac; K XĀYAC)
noun_stem_type('xāyac', 'tl', 'xāyac', 'xāyac', inanimate).  % face (K XĀYAC(A)-TL)
noun_stem_type('xāyaca', 'tl', '', '', inanimate).  % mask (K XĀYACA-TL)
noun_stem_type('xco', '', '', '', inanimate).  % in the presence/surface of (Andrews 47.2 (ix-co)): īxco = ī- + xco
noun_stem_type('xicalanco', '', '', '', inanimate).  % Xicalanco (place name)
noun_stem_type('xicalpech', '', '', '', inanimate).  % reed mat (XICAL-LI + PECH)
noun_stem_type('xicama', '', '', '', inanimate).  % jícama (no K headword)
noun_stem_type('xicol', 'li', '', '', inanimate).  % vest, sleeveless jacket (K XICOL-LI)
noun_stem_type('xīcul', 'li', '', '', inanimate).  % navel (K XĪCUL-LI)
noun_stem_type('xihualnēnemican', '', '', '', animate).  % personal name Xihualnēnemican? ( address)
noun_stem_type('xihuatla', 'tl', '', '', inanimate).  % turquoise ornament (xihuatlatl)
noun_stem_type('xihui', 'tl', 'xīxihui', 'xihxihui', inanimate).  % year, grass, turquoise (using xiuh for stem)
noun_stem_type('xihuitzol', 'li', '', '', inanimate).  % turquoise diadem ( no K headword)
noun_stem_type('xillan', '', '', '', inanimate).  % belly, short-vowel variant of XILLĀN-TLI
noun_stem_type('xillān', 'tli', 'xillān', 'xillān', inanimate).  % belly (K XILLĀN-TLI)
noun_stem_type('xilopaoaxtli', '', '', '', inanimate).  % baked maize (XILO-TL + PAOASTLI)
noun_stem_type('xiuh', '', '', '', inanimate).  % turquoise (combining form of XIHUI-TL)
noun_stem_type('xiuhchimalloh', '', '', '', inanimate).  % turquoise-shielded
noun_stem_type('xiuhcōāxāyaca', 'tl', '', '', inanimate).  % turquoise serpent mask (XIHU(I)-TL + CŌĀ-TL + XĀYAC(A)-TL)
noun_stem_type('xiuhcozcatzin', '', '', '', animate).  % personal name Xiuhcozcatzin
noun_stem_type('xiuhnacoch', 'tli', '', '', inanimate).  % turquoise ear ornament (xiuh + nacoch)
noun_stem_type('xiuhtēcu', 'tli', '', '', animate).  % Xiuhteuctli (stem before -TLI)
noun_stem_type('xiuhtēcuh', 'tli', '', '', animate).  % Xiuhteuctli (K XIUHTĒUC-TLI)
noun_stem_type('xiuhtlalpil', 'li', '', '', inanimate).  % turquoise band (xiuh + TLALPĪL-LI)
noun_stem_type('xiuhtōnal', 'li', 'xiuhtōnal', 'xiuhtōnal', inanimate).  % year count (XIHU(I)-TL + TŌNAL-LI)
noun_stem_type('xiuhtototl', '', '', '', animate).  % turquoise bird (XIUI- + TŌTŌ-TL)
noun_stem_type('xiuhxayacatl', '', '', '', inanimate).  % XIHUI-TL + XĀYACA-TL turquoise mask
noun_stem_type('xnamiquiztin', '', '', '', animate).  % those not a match (AH- + NĀMIQUI + -Z + -TIN)
noun_stem_type('xō', 'tl', 'xōxō', 'xohxō', inanimate).  % ear of corn
noun_stem_type('xōchi', '', '', '', inanimate).  % flower
noun_stem_type('xōchi', 'tl', '', '', inanimate).  % flower
noun_stem_type('xochicalco', '', '', '', inanimate).  % place name Xochicalco; no K headword
noun_stem_type('xōchicual', 'li', '', '', inanimate).  % fruit (XŌCHI-TL + CUA + -LLI)
noun_stem_type('xochimilca', '', '', '', animate).  % Xochimilca
noun_stem_type('xochimilcatl', '', '', '', animate).  % person of Xochimilco (absolutive)
noun_stem_type('xochimilco', '', '', '', inanimate).  % toponym Xochimilco
noun_stem_type('xōchinecapantli', '', '', '', inanimate).  % flower offering (short e variant)
noun_stem_type('xōchinēcapantli', '', '', '', inanimate).  % flower offering (XŌCHI-TL + NĒCAPANTLI)
noun_stem_type('xōchmilca', '', '', '', animate).  % Xōchmilca, person of Xōchmilco
noun_stem_type('xōchmilcatl', '', '', '', animate).  % Xōchmilcatl, person of Xōchmilco
noun_stem_type('xōchmilco', '', '', '', inanimate).  % XŌCHMILCO, place name
noun_stem_type('xocoteca', '', '', '', animate).  % person of Xocotitlan (no K headword)
noun_stem_type('xocotitlan', '', '', '', inanimate).  % place name; no K headword
noun_stem_type('xocotl', '', '', '', inanimate).  % XŌCO-TL, 8th month
noun_stem_type('xocotliyohuican', '', '', '', inanimate).  % place name Xocotliyohuican; no K headword
noun_stem_type('xocpal', 'li', '', '', inanimate).  % K XOCPAL-LI foot
noun_stem_type('xolloco', '', '', '', inanimate).  % place name Xolloco
noun_stem_type('xollocopa', '', '', '', inanimate).  % toponym Xollocopa
noun_stem_type('xoloc', '', '', '', inanimate).  % place Xoloc (no K headword)
noun_stem_type('xoloco', '', '', '', inanimate).  % Xoloco (place name)
noun_stem_type('xōlōuh', '', '', '', animate).  % page, servant (possessed -xōlōuh); K XŌLŌUH
noun_stem_type('xomolco', '', '', '', inanimate).  % place name Xomolco
noun_stem_type('xoxocotla', '', '', '', inanimate).  % place name Xoxocotla; no K headword
noun_stem_type('xoxoctic', '', 'xoxoctic', 'xoxoctic', adjective).  % green
noun_stem_type('xoxohuiltitlan', '', '', '', inanimate).  % toponym Xoxohuiltitlan
noun_stem_type('xoxoquiuh', '', '', '', inanimate).  % something green (XOXOQUIUI)
noun_stem_type('xpan', '', '', '', inanimate).  % before, in the presence of; K -IXPAN: īxpan
noun_stem_type('yaca', 'tl', '', '', inanimate).  % K YACA-TL nose
noun_stem_type('yaca', 'tl', 'yāyaca', 'yahyaca', inanimate).  % nose, point (K YACA-TL)
noun_stem_type('yacac', '', '', '', inanimate).  % nose, point, prow (possessed YACATL)
noun_stem_type('yacacolcah', '', '', '', animate).  % people of Yacacolco
noun_stem_type('yacacolco', '', '', '', inanimate).  % place name Yacacolco; no K headword
noun_stem_type('yacahuān', '', '', '', animate).  % warriors (pl. of yācauh?)
noun_stem_type('yacapilol', '', '', '', inanimate).  % nose ornament (yacatl + piloa)
noun_stem_type('yacatecpaio', '', '', '', inanimate).  % nose ornament; no K headword
noun_stem_type('yacatzol', 'li', 'yāyacatzol', 'yahyacatzol', inanimate).  % nose
noun_stem_type('yach', '', '', '', animate).  % companion (īyachhuān); unmarked
noun_stem_type('yāhuān', '', '', '', animate).  % enemies (possessed pl. of yāō-tl); K -YĀŌHUĀN
noun_stem_type('yāō', '', '', '', animate).  % enemy (K YĀŌ-TL): īyāōhuān
noun_stem_type('yāō', '', '', '', inanimate).  % war, enemy (K YĀŌ-TL); used in yāōchīhua, yāōyōtl
noun_stem_type('yāō', 'tl', '', '', animate).  % enemy (YĀŌ-TL)
noun_stem_type('yāō', 'tl', '', '', inanimate).  % war, enemy (K YĀŌ-TL)
noun_stem_type('yāōhuān', '', '', '', animate).  % enemies (yāō-tl + possessed plural -huān; toyāōhuān)
noun_stem_type('yāōmeh', '', '', '', animate).  % enemies (YĀŌ-TL + -MEH)
noun_stem_type('yāōtachcāuh', '', '', '', animate).  % brave warrior (YĀŌ-TL + TACHCAUH)
noun_stem_type('yāōtecani', '', '', '', animate).  % war leader, director in battle; K YĀŌ-TECANI
noun_stem_type('yāōtlahcāuh', '', '', '', animate).  % war leader (YĀŌ-TL + TLAHCAUH)
noun_stem_type('yāōtlahtoāni', '', '', '', animate).  % ruler in war; K YĀŌ-TLAHTOĀNI
noun_stem_type('yāōtlatqui', '', '', '', inanimate).  % war gear (YĀŌ-TL + TLAQUI-TL)
noun_stem_type('yāōtlatqui', 'tl', '', '', inanimate).  % K YĀŌTLATQUI-TL weapons, war gear
noun_stem_type('yāōtzin', '', '', '', animate).  % personal name Yaotzin
noun_stem_type('yāōuh', '', '', '', animate).  % enemy, possessed stem of YĀŌ-TL (to-yāōuh)
noun_stem_type('yāōyō', 'tl', '', '', inanimate).  % war, battle; K YAOYO-TL (sources yāōyōtl)
noun_stem_type('yāuhtlachixqui', '', '', '', animate).  % war lookout (YĀŌ-TL + TLACHIXQUI)
noun_stem_type('yayāhuic', '', 'yāyāhuic', 'yahyāhuic', adjective).  % black
noun_stem_type('yēlpan', '', '', '', inanimate).  % before, in front of (relational); K -YELPAN
noun_stem_type('yohua', '', '', '', inanimate).  % night; see also the verb YOHUA
noun_stem_type('yohuac', '', '', '', inanimate).  % night (YOHUAC)
noun_stem_type('yohual', 'li', '', '', inanimate).  % night (K YOHUAL-LI); also the personal name Yohualli
noun_stem_type('yohui', '', '', '', inanimate).  % road: possessed stem of OH-TLI (K possessed -OHHUI); y = postvocalic glide: īyohui = ī- + yohui
noun_stem_type('yōl', '', '', '', inanimate).  % Short combining form YŌL- of YŌLLŌ-TL 'heart' (K YŌL-): yōl-nonōtza yōl-cuepa, yōl-patzmiqui.
noun_stem_type('yōlli', '', '', '', inanimate).  % heart (K YŌL-LI)
noun_stem_type('yōllo', '', '', '', animate).  % heart
noun_stem_type('yōllo', '', '', '', inanimate).  % heart (K YŌLLO-TL, possessed -yōllo)
noun_stem_type('yōllō', 'tl', 'yōyōllō', 'yohyōllō', animate).  % heart
noun_stem_type('yōllohco', '', '', '', animate).  % mature man (, paired with oquichtli)
noun_stem_type('yolloxōchi', 'tl', '', '', inanimate).  % magnolia (K YŌLLOHXOCHI-TL)
noun_stem_type('yomotlan', '', '', '', inanimate).  % at the side of (relational); no K headword
noun_stem_type('yopicatl', '', '', '', animate).  % Yopicatl (gentilic/personal name)
noun_stem_type('zaca', 'tl', '', '', inanimate).  % grass
noun_stem_type('zacā', 'tl', 'zāzacā', 'zahzacā', inanimate).  % grass, fodder
noun_stem_type('zacamolco', '', '', '', inanimate).  % place Zacamolco (no K headword)
noun_stem_type('zacapepech', '', '', '', inanimate).  % grass bed (zaca-pepech)
noun_stem_type('zahua', 'tl', '', '', inanimate).  % pox, rash (K ZAHUA-TL)
noun_stem_type('zayol', 'in', 'zāzayol', 'zahzayol', animate).  % fly
noun_stem_type('zāyōlin', '', '', '', animate).  % fly
noun_stem_type('zol', 'li', '', '', inanimate).  % old, worn out thing (affective matrix stem)
noun_stem_type('zoqui', 'tl', 'zōzoqui', 'zohzoqui', inanimate).  % mud
noun_stem_type('zoquitlatqui', '', '', '', inanimate).  % earthenware (ZOQUI-TL + TLATQUI-TL)
noun_stem_type('zoquitlatqui', 'tl', '', '', inanimate).  % earthenware (ZOQUI-TL + TLATQUI-TL)


% ============================================================================
% VERB LEXICON
% ============================================================================
% verb_stem_type(Root, Imperfective, Perfective, Hypothetical, Class, Transitivity).
% Alphabetized by root (first argument); the root is documentation only.

verb_stem_type(aatlamati, 'aatlamati', 'aatlamat', 'aatlamati', b, intransitive).  % to be happy, content (AH- + TLAMATI?)
verb_stem_type(acacia, 'acacia', 'acaciac', 'acacia', b, transitive).  % to reach someone (ACI + -CIA?)
verb_stem_type(acalaqui, 'acalaqui', 'acalac', 'acalaqui', b, intransitive).  % enter the water/boat (ACAL-LI + AQU(I))
verb_stem_type(acalhuia, 'acalhui', 'acalhui', 'acalhui', c, transitive).  % purposive embedding form acalhui-to
verb_stem_type(acalhuia, 'acalhuiā', 'acalhui', 'acalhuiā', c, transitive).  % pret. without h
verb_stem_type(acalhuia, 'acalhuiā', 'acalhuih', 'acalhuiā', c, transitive).  % to put in a boat (ĀCAL-LI + -huia)
verb_stem_type(acaltema, 'acaltema', 'acalten', 'acaltema', a1, transitive).  % load into a boat (ACAL-LI + TEMA)
verb_stem_type(acana, 'acana', 'acan', 'acana', a1, transitive).  % to take, carry (K ACANA?; unmarked)
verb_stem_type(achquiahuia, 'achquiahuia', 'achquiahuih', 'achquiahuia', a1, intransitive).  % to drizzle
verb_stem_type(aci, 'aci', 'aci', 'aci', a1, intransitive).  % arrive (K AHCI, T h-less)
verb_stem_type(aci, 'aci', 'aci', 'aci', a1, transitive).  % reach something (K AHCI)
verb_stem_type(aci, 'aci', 'aci', 'aci', b, intransitive).  % to arrive (K AHCI, h-less): acito, onaci
verb_stem_type(aci, 'aci', 'acic', 'aci', a1, intransitive).  % to arrive; h-less variant of AHCI
verb_stem_type(aci, 'aci', 'acic', 'aci', a1, transitive).  % to reach something
verb_stem_type(aci, 'aci', 'acico', 'aci', b, intransitive).  % to arrive (K AHCI; pret. with -co)
verb_stem_type(aci, 'aci', 'acito', 'aci', b, intransitive).  % to arrive there (AHCI + -to)
verb_stem_type(ācolhuītequi, 'ācolhuītequi', 'ācolhuītec', 'ācolhuītequi', b, transitive).  % ĀCŌL-LI + HUĪTEQU(I) strike the shoulders
verb_stem_type(acotlachia, 'acotlachia', 'acotlachix', 'acotlachia', b, intransitive).  % to look upward (aco + TLACHIY(A))
verb_stem_type(actihuetzi, 'actihuetzi', 'actihuetz', 'actihuetzi', b, intransitive).  % to fall between (ACTI + HUETZI)
verb_stem_type(aculhuītequi, 'aculhuītequi', 'aculhuītec', 'aculhuītequi', b, transitive).  % u-spelling variant of ĀCOLHUĪTEQUI
verb_stem_type(ahahuiya, 'ahahuiya', 'ahahuix', 'ahahuiya', b, intransitive).  % to take pleasure; AHAHUIY(A), pret. AHAHUIX
verb_stem_type(ahci, 'ahaci', 'ahcic', 'ahaci', b, intransitive).  % to arrive (variant ahaci-); K AHCI
verb_stem_type(ahci, 'ahci', 'aci', 'aci', b, intransitive).  % to arrive (FC pret. aci-, aci-to); K AHCI
verb_stem_type(ahci, 'ahci', 'acic', 'ahci', b, intransitive).  % to arrive (pret. acic); K AHCI
verb_stem_type(ahci, 'ahci', 'ahci', 'ahci', a1, intransitive).  % arrive (K AHCI)
verb_stem_type(ahci, 'ahci', 'ahci', 'ahci', a1, transitive).  % to arrive, reach (T)
verb_stem_type(ahci, 'ahci', 'ahcic', 'ahci', a1, intransitive).  % to arrive (K AHCI; intransitive counterpart of existing transitive entry)
verb_stem_type(ahcitiuetzico, 'ahcitiuetzico', 'ahcitiuetzico', 'ahcitiuetzico', a1, intransitive).  % to arrive quickly (AHCI + TI + HUETZI + -co)
verb_stem_type(ahhua, 'ahhua', 'ahhua', 'ahhua', a1, transitive).  % to scold
verb_stem_type(ahhuachquiquiyahui, 'ahhuachquiquiyahui', 'ahhuachquiquiyauh', 'ahhuachquiquiyahui', b, intransitive).  % to rain lightly (reduplicated); K AHHUACHQUIYAHU(I)
verb_stem_type(ahhuachquiyahui, 'ahhuachquiyahui', 'ahhuachquiyauh', 'ahhuachquiyahui', b, intransitive).  % to rain lightly; K AHHUACHQUIYAHU(I)
verb_stem_type(ahquetzihuetzi, 'ahquetzihuetzi', 'ahquetzihuetz', 'ahquetzihuetzi', b, intransitive).  % to rise/fall suddenly (AHQUETZA + HUETZI)
verb_stem_type(ahqui, 'ahqui', 'ahqui', 'ahqui', a1, intransitive).  % to swim
verb_stem_type(ahua, 'ahua', 'ahuac', 'ahua', a1, transitive).  % to scold, reproach (K AHU(A), variant of AHHUA)
verb_stem_type(ahualaca, 'ahualaca', 'ahualaca', 'ahualaca', a1, intransitive).  % to reel, sway; K AHUALACA
verb_stem_type(āhuatilhuia, 'āhuatilhuiā', 'āhuatilhui', 'āhuatilhuī', c, transitive).  % speak to (ĀHUATILHUIĀ?)
verb_stem_type(ahueliti, 'ahueliti', 'ahuelit', 'ahueliti', b, intransitive).  % to be unable (AH- + HUELITI)
verb_stem_type(ahxiti, 'ahxiti', 'ahxit', 'ahxiti', a1, intransitive).  % to arrive (AHCI + -ti)
verb_stem_type(aixtlatitia, 'aixtlatitiā', 'aixtlatitih', 'aixtlatiti', c, transitive).  % show the way (IXTLATITIA)
verb_stem_type(alcahui, 'alcahui', 'alcahui', 'alcahui', b, transitive).  % leave, abandon (cf. CAHUA; FC)
verb_stem_type(alcaltia, 'alcaltiā', 'alcaltih', 'alcaltī', c, transitive).  % to carry on the shoulders (CAL-LI + -tia)
verb_stem_type(alhuacaqui, 'alhuacaqui', 'alhuacac', 'alhuacaqui', b, intransitive).  % to land, come to shore (ALHUACAQUI)
verb_stem_type(alhuia, 'alhuiā', 'alhui', 'alhuī', c, transitive).  % say to someone (variant of ILHUIĀ with l-directional)
verb_stem_type(altotoca, 'altotoca', 'altotoca', 'altotoca', a1, intransitive).  % ALTOTOCA run
verb_stem_type(altotoca, 'altotoca', 'altotocac', 'altotoca', a1, intransitive).  % to run in haste (AL- + TOTOC(A))
verb_stem_type(amiqui, 'āmiqui', 'āmic', 'āmiqui', b, intransitive).  % to be thirsty; AMIQU(I), pret. AMIC
verb_stem_type(amiqui, 'āmiqui', 'āmic', 'āmiqui', b, transitive).  % to thirst for something; the form has 3sg object c-āmiqui
verb_stem_type(ana, 'ana', 'an', 'ana', a1, transitive).  % take (K ANA; FC pret. pl. an-queh)
verb_stem_type(ana, 'ana', 'ana', 'ana', a1, transitive).  % to take, grasp
verb_stem_type(anapaloa, 'anapaloa', 'anapalo', 'anapalo', c, transitive).  % to carry in the arms (purposive anapalotiuh)
verb_stem_type(anapaloa, 'anapaloa', 'anapalo', 'anapaloa', c, transitive).  % to carry in the arms (cf. NAPALOA)
verb_stem_type(apachihui, 'apachihui', 'apachiuh', 'apachihui', b, intransitive).  % to be covered over (K ĀPACHIHU(I))
verb_stem_type(apizmiqui, 'apizmiqui', 'apizmic', 'apizmiqui', b, intransitive).  % to starve (K APIZMIQU(I), pret. APIZMIC)
verb_stem_type(aqui, 'aqui', 'aquic', 'aqui', a1, transitive).  % to put on (clothing) (K AQU(I))
verb_stem_type(aqui, 'aqui', 'aquic', 'aqui', b, intransitive).  % enter (K AQU(I))
verb_stem_type(aquia, 'aquia', 'aquic', 'aquia', a1, transitive).  % to put on, insert (K AQUIA)
verb_stem_type(atēquia, 'atēquia', 'atēquih', 'atēquiā', c, transitive).  % to throw water at (Ā-TL + TĒQUIA?)
verb_stem_type(ātequia, 'ātequia', 'ātequih', 'ātequiā', c, transitive).  % to sprinkle water on (K ĀTĒQUIĀ)
verb_stem_type(atzelhuia, 'atzelhuiā', 'atzelhuih', 'atzelhuī', c, transitive).  % to sprinkle someone
verb_stem_type(atzupa, 'atzupa', 'atzup', 'atzupa', b, transitive).  % ATZUP(A) shut in, dam up (pret. ATZUP)
verb_stem_type(atzupa, 'atzupa', 'atzupac', 'atzupa', a1, transitive).  % to fill in (Ā-TL + TZUP(A))
verb_stem_type(axihua, 'axihua', 'axihuac', 'axihua', b, intransitive).  % be reached (AHXĪHUA nonact. AHCI)
verb_stem_type(axotla, 'axotla', 'axotla', 'axotla', a1, intransitive).  % perfective shape used before -ti-uh (axotlatiuh)
verb_stem_type(axotla, 'axotla', 'axotlac', 'axotla', a1, intransitive).  % to wade (K AXOTLA?; axotlatiuh)
verb_stem_type(cacacatzca, 'cacacatzca', 'cacacatzca', 'cacacatzca', a1, intransitive).  % to rattle, clatter (onomatopoeic); cf. CACALACA
verb_stem_type(cacahuaca, 'cacahuaca', 'cacahuacac', 'cacahuaca', a1, intransitive).  % to clamor (K CACAHUACA)
verb_stem_type(cacalaca, 'cacalaca', 'cacalacac', 'cacalaca', a1, intransitive).  % to rattle, make noise (K CACALACA)
verb_stem_type(cacalaqui, 'cacalaqui', 'cacalac', 'cacalaqui', b, intransitive).  % redup. CALAQU(I) enter repeatedly
verb_stem_type(cacalhuitequi, 'cacalhuitequi', 'cacalhuitec', 'cacalhuitequi', a1, transitive).  % strike noisily (cacal- + huitequi)
verb_stem_type(cacamatlapani, 'cacamatlapani', 'cacamatlapan', 'cacamatlapani', b, intransitive).  % CACAMA + TLAPAN(I) split open (heads)
verb_stem_type(cacaqu, 'cacaqu', 'cacaquic', 'cacaqu', b, transitive).  % to listen (CAQUI without final i)
verb_stem_type(cacaqui, 'cacaqui', 'cacaquic', 'cacaqui', b, transitive).  % to listen (redup. CAQUI)
verb_stem_type(cacayahua, 'cacayāhua', 'cacayāhuac', 'cacayāhuā', b, transitive).  % mock (K CAHCAYĀHU(A))
verb_stem_type(cacoquixtia, 'cacoquixtia', 'cacoquixti', 'cacoquixtī', c, intransitive).  % same, object omitted
verb_stem_type(cacoquixtia, 'cacoquixtia', 'cacoquixti', 'cacoquixtī', c, transitive).  % h-less perfective as written
verb_stem_type(cacoquixtia, 'cacoquixtia', 'cacoquixtih', 'cacoquixtī', c, transitive).  % snatch out noisily; no K headword
verb_stem_type(cacti, 'cacti', 'cacti', 'cacti', a1, intransitive).  % to be silent (K CACTI)
verb_stem_type(cahcacatzca, 'cahcacatzca', 'cahcacatzca', 'cahcacatzca', a1, intransitive).  % redup. cacacatzca
verb_stem_type(cahua, 'cahua', 'cauh', 'cahua', b, transitive).  % to leave
verb_stem_type(cahua, 'caoa', 'caoac', 'caoa', b, intransitive).  % intransitive use (cequi caoa)
verb_stem_type(cahua, 'caoa', 'caoac', 'caoa', b, transitive).  % FC spelling of CAHUA 'to leave'
verb_stem_type(cāhua, 'cāhua', 'cāuh', 'cāhuā', b, intransitive).  % CAHU(A) stop, remain
verb_stem_type(cahuatza, 'cahuatza', 'cahuatz', 'cahuatza', b, transitive).  % to shout at someone; K CAHUATZ(A)
verb_stem_type(cāhuia, 'cāhuia', 'cāhuih', 'cāhui', c, transitive).  % to leave something for someone (applic. CAHU(A))
verb_stem_type(cāhuili, 'cāhuili', 'cāhuilih', 'cāhuili', c, transitive).  % to leave something to someone (applic. CAHU(A))
verb_stem_type(cāhuilia, 'cāhuiliā', 'cāhuilih', 'cāhuilī', c, transitive).  % to leave someone (K CĀHUILIĀ)
verb_stem_type(cahuilitia, 'cahuilitiā', 'cahuiliti', 'cahuiliti', c, transitive).  % to leave someone (CAHUA + -LITIA)
verb_stem_type(calacohua, 'calacohua', 'calacohua', 'calacohua', a1, intransitive).  % iterative CALAQU(I) keep entering
verb_stem_type(calaqui, 'calaqui', 'cala', 'calaqui', b, intransitive).  % cala-que (for calac-queh)
verb_stem_type(calaqui, 'calaqui', 'calac', 'calaqui', b, intransitive).  % to enter; CALAQU(I), pret. CALAC
verb_stem_type(calaqui, 'calaqui', 'calac', 'calaqui', b, transitive).  % to put in (causative use; quicalaquique)
verb_stem_type(calaqui, 'calaqui', 'callac', 'calaqui', b, intransitive).  % to enter (K CALAQU(I); assimilated pret. CALLAC)
verb_stem_type(calaquia, 'calaquia', 'calaquih', 'calaqui', c, transitive).  % to put inside (caus. CALAQU(I))
verb_stem_type(calaquia, 'calaquiā', 'calaqui', 'calaqui', c, transitive).  % to put inside (caus. CALAQU(I))
verb_stem_type(calicali, 'calicali', 'calical', 'calicali', a1, transitive).  % to fight in the houses (CAL- + (I)CAL(I))
verb_stem_type(calioa, 'calioa', 'calioac', 'calioa', a1, intransitive).  % to fight
verb_stem_type(caltechpachotia, 'caltechpachotiā', 'caltechpachotih', 'caltechpachoti', c, transitive).  % shut in a house
verb_stem_type(caltema, 'caltema', 'caltemac', 'caltema', b, transitive).  % to arrange oneself in a building
verb_stem_type(caltzaca, 'caltzaca', 'caltzac', 'caltzaca', a1, transitive).  % to shut into houses (CAL- + TZACU(A))
verb_stem_type(camacahua, 'camacahua', 'camacauh', 'camacahuā', b, transitive).  % to open the mouth (K CAMACAHU(A))
verb_stem_type(camacaoa, 'camacaoa', 'camacao', 'camacaoa', b, transitive).  % to open the mouth (variant of CAMACAHU(A))
verb_stem_type(caqui, 'caqui', 'ca', 'caqui', b, transitive).  % to hear (reduced perfective ca- before -queh)
verb_stem_type(caqui, 'caqui', 'cac', 'caqui', b, transitive).  % to hear, understand
verb_stem_type(caqui, 'caqui', 'caqui', 'caqui', b, transitive).  % to hear (variant perfective CAQUI as written)
verb_stem_type(caquiltia, 'caquiltia', 'caquilti', 'caquilti', c, transitive).  % to make someone hear (K CAQUILTIA)
verb_stem_type(caquitia, 'caquitia', 'caquiti', 'caquiti', c, transitive).  % to announce, make hear (K CAQUITIA)
verb_stem_type(caquitia, 'caquitiā', 'caquitih', 'caquiti', c, transitive).  % to announce, report (K CAQUITIA)
verb_stem_type(caquitia, 'caquitiā', 'caquitih', 'caquitī', c, transitive).  % to make hear, announce (K CAQUITIA)
verb_stem_type(caquiz, 'caqui', 'caquiz', 'caqui', b, transitive).  % to hear (K CAQU(I))
verb_stem_type(caquizti, 'caquizti', 'caquizti', 'caquizti', a1, intransitive).  % to sound, be heard (K CAQUIZTI)
verb_stem_type(caquiztilia, 'caquiztiliā', 'caquiztilih', 'caquiztili', c, transitive).  % make heard (CAQUI + -ztilia)
verb_stem_type(catzelhuia, 'catzelhuiā', 'catzelhui', 'catzelhuiā', c, intransitive).  % to sprinkle (intransitive use)
verb_stem_type(catzelhuia, 'catzelhuiā', 'catzelhui', 'catzelhuiā', c, transitive).  % to sprinkle (blood) (no K headword)
verb_stem_type(catzohua, 'catzohua', 'catzohuac', 'catzohua', b, transitive).  % to block (a road); no K headword
verb_stem_type(cāuhtiquiza, 'cāuhtiquiza', 'cāuhtiquiz', 'cāuhtiquiza', a1, intransitive).  % to leave and go out (CĀHUA + TI + QUĪZA)
verb_stem_type(caxahua, 'caxahua', 'caxahua', 'caxahuā', b, intransitive).  % c-final perfective lost before -que (caxahuaque)
verb_stem_type(caxahua, 'caxahua', 'caxahuac', 'caxahuā', b, intransitive).  % short-vowel variant
verb_stem_type(caxāhua, 'caxāhua', 'caxāhuac', 'caxāhuā', b, intransitive).  % to become weak/loose (K CAXĀHU(A))
verb_stem_type(cayahua, 'cayāhua', 'cayāhuac', 'cayāhuā', b, transitive).  % to deceive, mock; CAYĀHU(A)
verb_stem_type(cayohua, 'cayohua', 'cayohuac', 'cayohuā', b, transitive).  % variant spelling of CAYĀHU(A)
verb_stem_type(cecehui, 'cecehui', 'cecehuic', 'cecehui', b, transitive).  % to rest (reflexive mo-cecehui); K CECEHUI
verb_stem_type(cecehui, 'cecehui', 'ceceuh', 'cecehui', b, intransitive).  % to pause, rest (K CECEHUI)
verb_stem_type(cecelia, 'cecelia', 'ceceliac', 'cecelia', a1, intransitive).  % to be/become cool, fresh; CECELIA (used intransitively here)
verb_stem_type(cecēmana, 'cecēmana', 'cecēman', 'cecēmana', a1, transitive).  % redup. of CĒMAN(A) 'scatter'
verb_stem_type(cecemitta, 'cecemitta', 'cecemittac', 'cecemitta', a1, transitive).  % stare at each (CEMITTA)
verb_stem_type(cecemitta, 'cēcemitta', 'cēcemittac', 'cēcemitta', a1, transitive).  % stare at each (CEMITTA)
verb_stem_type(cecencahua, 'cecencahua', 'cecencauh', 'cecencahua', b, transitive).  % array each one (CĒCEN + CAHUA)
verb_stem_type(cecencahua, 'cecencāhua', 'cecencāhuac', 'cecencāhua', b, transitive).  % to prepare (redup. CENCĀHU(A))
verb_stem_type(cecencāhua, 'cecencāhua', 'cecencāuh', 'cecencāhuā', b, transitive).  % distributive CENCĀHUA arrange each
verb_stem_type(cecentlalia, 'cecentlaliā', 'cecentlalih', 'cecentlalī', c, transitive).  % to gather people (redup. CENTLALIA)
verb_stem_type(cecepantilia, 'cecēpantiliā', 'cecēpantilih', 'cecēpantili', c, transitive).  % to arrange in rows; K CECĒPANTIA + applic.
verb_stem_type(cecēquetza, 'cecēquetza', 'cecēquetz', 'cecēquetza', b, transitive).  % stand each one up (CĒCEN + QUETZA)
verb_stem_type(cēhua, 'cēhua', 'cēuh', 'cēhuā', b, intransitive).  % to cool, be extinguished
verb_stem_type(cehuetzinoa, 'cehuetzinoā', 'cehuetzino', 'cehuetzinō', c, intransitive).  % be quiet (K CEHUETZINOA)
verb_stem_type(cehui, 'cehui', 'cehuic', 'cehui', b, transitive).  % to rest, take breath (mo-cehui); K CEHUI
verb_stem_type(cēhui, 'cēhui', 'cēhuic', 'cēhui', b, intransitive).  % to rest (K CĒHUI)
verb_stem_type(cēhuia, 'cēhuiā', 'cēhuih', 'cēhui', c, transitive).  % to extinguish (K CĒHUIĀ)
verb_stem_type(cehuilia, 'cehuiliā', 'cehuilih', 'cehuili', c, transitive).  % quiet someone (K CEHUILIA)
verb_stem_type(cemimacaxoa, 'cemimacaxoa', 'cemimacaxoac', 'cemimacaxoa', a1, transitive).  % distribute one by one; no K headword
verb_stem_type(cemitoa, 'cemitoa', 'cemito', 'cemitoa', c, transitive).  % to agree as one (CEM- + ITOA)
verb_stem_type(cempohua, 'cempōhua', 'cempōuh', 'cempōhua', b, transitive).  % to count (K CEMPŌHUA)
verb_stem_type(cencahua, 'cencahua', 'cencauh', 'cencahua', b, transitive).  % to prepare (K CENCĀHU(A))
verb_stem_type(cencahua, 'cencahua', 'cencauh', 'cencahuā', b, transitive).  % to ready, arrange (K CENCĀHU(A))
verb_stem_type(cencahua, 'cencāhua', 'cencāhuac', 'cencāhua', b, transitive).  % to prepare (K CENCĀHU(A))
verb_stem_type(cencahua, 'cencāhua', 'cencāhuac', 'cencāhuā', b, transitive).  % prepare (K CENCĀHU(A))
verb_stem_type(cencāhua, 'cencāhua', 'cencāuh', 'cencāhuā', b, transitive).  % CENCĀHU(A) prepare, arrange
verb_stem_type(cenmaca, 'cenmaca', 'cenmacac', 'cenmaca', a1, transitive).  % to give completely (CEM- + MACA)
verb_stem_type(cenquīxtia, 'cenquīxtia', 'cenquīxti', 'cenquīxtiā', c, transitive).  % h-less perfective (omocenquīxtiqueh)
verb_stem_type(cenquīxtia, 'cenquīxtia', 'cenquīxtih', 'cenquīxtiā', c, transitive).  % to assemble all (CEM + QUĪXTIA)
verb_stem_type(centlalhuia, 'centlalhuiā', 'centlalhuih', 'centlalhui', c, transitive).  % assemble people (CEN- + TLĀLIĀ + applic.)
verb_stem_type(centlalhuia, 'centlālhuī', 'centlālhuih', 'centlālhuī', c, transitive).  % long vowels as written
verb_stem_type(centlalia, 'centlaliā', 'centlali', 'centlaliā', c, transitive).  % to assemble (K CENTLĀLIĀ; perfective centlali)
verb_stem_type(centlalia, 'centlaliā', 'centlali', 'centlalī', c, transitive).  % to gather (K CENTLALIĀ); sources h-less perfective
verb_stem_type(centlalia, 'centlaliā', 'centlalih', 'centlalī', c, transitive).  % to gather
verb_stem_type(centlami, 'centlami', 'centlan', 'centlami', b, transitive).  % to complete something (CEM- + TLAM(I), pret. TLAN)
verb_stem_type(centlancua, 'centlancua', 'centlancuac', 'centlancua', a1, transitive).  % CEM- + TLAM(I)/TLANCUA 'to finish everything'
verb_stem_type(centlatalhuia, 'centlatalhuia', 'centlatalhui', 'centlatalhui', c, transitive).  % h-less perfective/future stem (quicentlatalhuique, quicentlatalhuizque)
verb_stem_type(centlatalhuia, 'centlatalhuia', 'centlatalhuih', 'centlatalhuiā', c, transitive).  % to assemble all (CENTLALIA + TLAHUIA?)
verb_stem_type(centlatia, 'centlatiā', 'centlati', 'centlatiā', c, transitive).  % pret. without h
verb_stem_type(centlatia, 'centlatiā', 'centlatih', 'centlatī', c, transitive).  % to burn together (CEM- + TLATIĀ)
verb_stem_type(centlaxilia, 'centlaxilia', 'centlaxili', 'centlaxili', c, transitive).  % h-less perfective/future stem (quincentlaxilizque)
verb_stem_type(centlaxilia, 'centlaxilia', 'centlaxilih', 'centlaxiliā', c, transitive).  % to send all (CENTLALIA + XILIA?)
verb_stem_type(centlaza, 'centlāza', 'centlāz', 'centlāza', a1, transitive).  % gather (K CENTLĀZA)
verb_stem_type(centlāza, 'centlāza', 'centlāz', 'centlāza', b, transitive).  % to send everyone (CEM- + TLAZ(A))
verb_stem_type(chachacua, 'chachacua', 'chachacuac', 'chachacua', a1, intransitive).  % to be covered with mud (K CHACHACU(A))
verb_stem_type(chachalaca, 'chachalaca', 'chachalacac', 'chachalaca', a1, intransitive).  % Class A stem with the predictable preterit CHACHALACAC.
verb_stem_type(chachalatza, 'chachalatza', 'chachalatz', 'chachalatza', b, transitive).  % Class b after CAHUATZ(A).
verb_stem_type(chachapaca, 'chachapaca', 'chachapacac', 'chachapaca', a1, intransitive).  % to splash on the ground.
verb_stem_type(chachapani, 'chachapani', 'chachapan', 'chachapani', b, intransitive).  % short-vowel variant of CHACHAPĀN(I)
verb_stem_type(chachapani, 'chachapāni', 'chachapan', 'chachapāni', b, intransitive).  % to sprinkle, patter; K CHACHAPĀN(I)
verb_stem_type(chachapāni, 'chachapāni', 'chachapān', 'chachapāni', b, intransitive).  % to fall splattering (K CHACHAPĀN(I))
verb_stem_type(chanchīhua, 'chanchīhua', 'chanchīuh', 'chanchīhua', b, intransitive).  % to build a home (CHĀN + CHĪHU(A))
verb_stem_type(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, intransitive).  % to be strong
verb_stem_type(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, transitive).  % to strengthen
verb_stem_type(chicahua, 'chicāhua', 'chicāhuah', 'chicāhua', b, intransitive).  % to be strong (K CHICĀHU(A); perfective -h as written)
verb_stem_type(chicahua, 'chīcahua', 'chīcahuac', 'chīcahua', b, transitive).  % long-ī variant of CHICĀHU(A)
verb_stem_type(chīcāhua, 'chīcāhua', 'chīcāuh', 'chīcāhuā', b, intransitive).  % CHICĀHU(A) be strong
verb_stem_type(chicanahua, 'chicanahua', 'chicanahuac', 'chicanahua', b, intransitive).  % to follow behind (K CHICANAHU(A))
verb_stem_type(chicanahua, 'chicanahua', 'chicanauh', 'chicanahua', b, intransitive).  % pret. CHICANAUH
verb_stem_type(chicanahua, 'chicanahua', 'chicanauh', 'chicanahua', b, transitive).  % transitive variant (quinhualchicanauhque)
verb_stem_type(chiccanoa, 'chiccanaoa', 'chiccanaoac', 'chiccanaoa', a1, transitive).  % variant spelling as written
verb_stem_type(chiccanoa, 'chiccanoa', 'chiccanoac', 'chiccanoa', a1, transitive).  % arrange; no K headword
verb_stem_type(chichicahua, 'chichīcāhua', 'chichīcahuh', 'chichīcāhua', b, transitive).  % to be/become strong; redup. CHICĀHU(A)
verb_stem_type(chīchīcāhua, 'chīchīcāhua', 'chīchīcāhuac', 'chīchīcāhuā', b, intransitive).  % to work up one's spirits (CHĪCĀHUA redup.)
verb_stem_type(chīchīcāhua, 'chīchīcāhua', 'chīchīcāhuac', 'chīchīcāhuā', b, transitive).  % reflexive/transitive counterpart
verb_stem_type(chichicha, 'chichicha', 'chichichac', 'chichicha', a1, intransitive).  % to spit (no K headword)
verb_stem_type(chichihua, 'chīchīhua', 'chīchīuh', 'chīchīhua', b, transitive).  % to prepare, arrange; redup. CHĪHU(A)
verb_stem_type(chichihua, 'chīchīhua', 'chīchīuh', 'chīchīhuā', b, transitive).  % redup. CHĪHU(A), prepare
verb_stem_type(chīchihua, 'chīchihua', 'chīchihuac', 'chīchihuā', b, transitive).  % to adorn, dress someone (K CHĪCHIHU(A))
verb_stem_type(chīchīhua, 'chīchīhua', 'chīchīuh', 'chīchīhuā', b, intransitive).  % reflexive/anticausative use
verb_stem_type(chīchīhualo, 'chīchīhualō', 'chīchīhualō', 'chīchīhualō', a1, intransitive).  % to be adorned (nonactive of CHĪCHĪHUA)
verb_stem_type(chichinaca, 'chichinaca', 'chichinacac', 'chichinaca', a1, intransitive).  % CHICHINACA 'to hurt, suffer pain' (K CHICHINACA). .
verb_stem_type(chichipahua, 'chichipahua', 'chichipahuac', 'chichipahuā', b, intransitive).  % short-vowel variant
verb_stem_type(chichipāhua, 'chichipāhua', 'chichipāhuac', 'chichipāhuā', b, intransitive).  % to glisten (cf. CHIPĀHU(A))
verb_stem_type(chichitotza, 'chichitotza', 'chichitotz', 'chichitotza', a1, transitive).  % to make crackle/fly (K CHICHITOTZ(A))
verb_stem_type(chieltia, 'chieltia', 'chielti', 'chieltia', a1, transitive).  % to await (K CHIYELTIA, caus. CHIY(A))
verb_stem_type(chihua, 'chihua', 'chihuac', 'chihuā', b, transitive).  % unmarked spelling variant
verb_stem_type(chihua, 'chīhua', 'chīhuac', 'chīhua', b, transitive).  % short future stem (quichīhuazqueh)
verb_stem_type(chihua, 'chīhua', 'chīhuac', 'chīhuā', b, transitive).  % to make, do
verb_stem_type(chihua, 'chīhua', 'chīhuah', 'chīhuā', b, transitive).  % variant with perfective CHĪHUAH (quichīhuahqueh)
verb_stem_type(chihua, 'chīhua', 'chīhuh', 'chīhuā', b, transitive).  % CHIHU(A) perfective variant chīhuh
verb_stem_type(chihua, 'chīhua', 'chīuh', 'chīhua', b, transitive).  % to make (perf. CHĪUH, fut. CHĪHUAZ)
verb_stem_type(chihua, 'chīhua', 'chīuh', 'chīhuā', b, transitive).  % CHIHU(A) 'to make, do'; the reflexive/nonactive perfective is CHĪUH (mochīuh 'it happened'), distinct from the active CHĪHUAC.
verb_stem_type(chīhualō, 'chīhualō', 'chīhualō', 'chīhualō', a1, transitive).  % passive stem of CHĪHU(A); nēch-chīhualōz
verb_stem_type(chihuhtia, 'chihuhtia', 'chihuhtih', 'chihuhti', c, intransitive).  % to happen, get done
verb_stem_type(chīhuhtia, 'chīhuhtiā', 'chīhuhtih', 'chīhuhti', c, transitive).  % make (reflexive-passive of CHĪHU(A))
verb_stem_type(chīhuia, 'chīhuiā', 'chīhuih', 'chīhui', c, transitive).  % to do something to someone (applic. CHĪHU(A))
verb_stem_type(chīmallāza, 'chīmallāza', 'chīmallāz', 'chīmallāza', b, transitive).  % to hurl shields (CHĪMAL-LI + TLĀZA)
verb_stem_type(chipāhua, 'chipāhua', 'chipāhuac', 'chipāhuā', b, intransitive).  % to be clean, clear (K CHIPĀHU(A))
verb_stem_type(chitoni, 'chitoni', 'chiton', 'chitoni', b, intransitive).  % to slip out, escape (K CHITON(I))
verb_stem_type(chitoni, 'chitoni', 'chiton', 'chitoni', b, transitive).  % to let something slip out (transitive use)
verb_stem_type(chitonia, 'chitonia', 'chitoni', 'chitoni', c, transitive).  % to let (a piece) fly off (caus. of K CHITŌN(I))
verb_stem_type(chiya, 'chiya', 'chix', 'chi', b, intransitive).  % to wait (future chiz-)
verb_stem_type(chiya, 'chiya', 'chix', 'chiya', b, intransitive).  % to wait (K CHIY(A))
verb_stem_type(chiyeltia, 'chiyeltiā', 'chiyelti', 'chiyelti', c, transitive).  % to await (CHIYELTIA)
verb_stem_type(choca, 'choca', 'choca', 'choca', a1, intransitive).  % to cry
verb_stem_type(chochoquilia, 'chōchōquiliā', 'chōchōquilih', 'chōchōquiliā', c, transitive).  % redup. CHŌQUILIA
verb_stem_type(choloa, 'choloā', 'cholo', 'cholō', c, intransitive).  % CHOLOĀ 'to flee'; the writes the preterit without the final h (cholo-queh for choloh-queh).
verb_stem_type(choloa, 'choloā', 'choloh', 'cholō', c, intransitive).  % to flee, run away
verb_stem_type(chololtia, 'chololtia', 'chololti', 'chololti', b, intransitive).  % to flee (CHOLOA + -LTI)
verb_stem_type(chololtia, 'chololtia', 'chololti', 'chololti', b, transitive).  % to flee (transitive/reflexive)
verb_stem_type(choloti, 'choloti', 'cholot', 'choloti', b, intransitive).  % to flee (K CHOLOA + -TI)
verb_stem_type(choltia, 'choltia', 'cholti', 'cholti', b, intransitive).  % to flee (CHOLOA + -TI)
verb_stem_type(choltia, 'choltia', 'cholti', 'cholti', b, transitive).  % to flee (transitive/reflexive)
verb_stem_type(choltia, 'chōltiā', 'chōltih', 'chōltī', c, transitive).  % to make flee (caus. K CHOLOA)
verb_stem_type(choquilia, 'chōquiliā', 'chōquilih', 'chōquili', c, transitive).  % to weep for someone; K CHŌQUILIA
verb_stem_type(choquilia, 'chōquiliā', 'chōquilih', 'chōquiliā', c, transitive).  % to weep for someone (K CHŌQUILIA, applic. CHOCA)
verb_stem_type(choquiztlehua, 'choquiztlehua', 'choquiztlehuh', 'choquiztlehuā', b, intransitive).  % for a wail to arise (CHOQUIZ-TLI + TLEHUA)
verb_stem_type(choquīztlehua, 'choquīztlehua', 'choquīztleh', 'choquīztlehua', b, intransitive).  % wailing arises (CHŌQUIZ-TLI + TLEHUA)
verb_stem_type(ciahui, 'ciahui', 'ciauh', 'ciahui', b, intransitive).  % K CIAHU(I) to get tired
verb_stem_type(ciahui, 'ciahui', 'ciauh', 'ciahui', b, transitive).  % K CIAHU(I) vt to attain by labor
verb_stem_type(ciāhuia, 'ciāhuia', 'ciāhuih', 'ciāhui', c, intransitive).  % to be refreshed (K CIĀHUI(A))
verb_stem_type(ciāhuiltia, 'ciāhuiltia', 'ciāhuiltih', 'ciāhuilti', c, transitive).  % to refresh someone (K CIĀHUILTIĀ)
verb_stem_type(ciauhcahua, 'ciauhcāhua', 'ciauhcāhuac', 'ciauhcāhuā', b, transitive).  % (FC; uncertain)
verb_stem_type(ciauhpoa, 'ciauhpoa', 'ciauhpoh', 'ciauhpō', c, intransitive).  % to tire, weaken
verb_stem_type(ciauhpoa, 'ciauhpoa', 'ciauhpoh', 'ciauhpō', c, transitive).  % reflexive mo-ciauhpoa
verb_stem_type(ciauhquetza, 'ciauhquetza', 'ciauhquetz', 'ciauhquetza', b, intransitive).  % to rest
verb_stem_type(ciauhquetza, 'ciauhquetza', 'ciauhquetz', 'ciauhquetza', b, transitive).  % reflexive mo-ciauhquetza
verb_stem_type(cicihua, 'cicihua', 'cicih', 'cicihua', b, intransitive).  % breathe (K CICIHUA?; unmarked)
verb_stem_type(ciyahuiltia, 'ciyahuiltiā', 'ciyahuiltih', 'ciyahuilti', c, transitive).  % rejoice (K CIYAHUILTIĀ)
verb_stem_type(cnelilia, 'cnelilia', 'cnelilih', 'cnelili', c, transitive).  % to favor someone (K CNELILIA)
verb_stem_type(cniuhtla, 'cniuhtla', 'cniuhtla', 'cniuhtla', a1, intransitive).  % be friends (CNIUH-TLI)
verb_stem_type(cniuhtla, 'cniuhtla', 'cniuhtlac', 'cniuhtla', b, transitive).  % to make friends (K CNĪUHTLA)
verb_stem_type(cochi, 'cochi', 'coch', 'cochi', b, intransitive).  % Class B perfective variant
verb_stem_type(cochi, 'cochi', 'cochi', 'cochi', a1, intransitive).  % to sleep
verb_stem_type(cochitia, 'cochitiā', 'cochitih', 'cochitī', c, intransitive).  % to sleep (COCHI + -tia)
verb_stem_type(cochitia, 'cochitiā', 'cochitih', 'cochitī', c, transitive).  % reflexive mo-cochitia
verb_stem_type(cochitlehua, 'cochitlehua', 'cochitleuh', 'cochitlehuā', b, intransitive).  % have a dream (intransitive use)
verb_stem_type(cochitlehua, 'cochitlehua', 'cochitleuh', 'cochitlehuā', b, transitive).  % have a dream (K COCHIHTLĒHUA)
verb_stem_type(cochitta, 'cochitta', 'cochittac', 'cochitta', a1, transitive).  % dream of (K COCHITTA)
verb_stem_type(cocmamauhtia, 'cocmamauhtia', 'cocmamauhtih', 'cocmamauhti', c, intransitive).  % to be stunned with fright
verb_stem_type(cocoa, 'cocoā', 'cocoh', 'cocō', c, transitive).  % to harm
verb_stem_type(cocoioni, 'cocoioni', 'cocoion', 'cocoioni', b, intransitive).  % variant spelling of cocoyōni
verb_stem_type(cocolehua, 'cocolehua', 'cocoleuh', 'cocolehua', b, transitive).  % redup. of an unattested COLEHUA 'peel off'; 'strip off'
verb_stem_type(cocolia, 'cocoliā', 'cocolih', 'cocoliā', c, transitive).  % to hate
verb_stem_type(cocolizcui, 'cocolizcui', 'cocolizcui', 'cocolizcui', a1, intransitive).  % to take sick (intransitive use)
verb_stem_type(cocolizcui, 'cocolizcui', 'cocolizcui', 'cocolizcui', a1, transitive).  % to take sick (COCOLIZ-TLI + CUI)
verb_stem_type(cocololoa, 'cocololoa', 'cocololoh', 'cocololō', c, intransitive).  % lament, wail; no K headword
verb_stem_type(cocoltia, 'cocoltia', 'cocolti', 'cocolti', c, transitive).  % to hate (variant of K COCOLIA)
verb_stem_type(cocomolihui, 'cocomolihui', 'cocomoliuh', 'cocomolihui', b, intransitive).  % redup. comōlihui
verb_stem_type(cocomotza, 'cocomotza', 'cocomotzac', 'cocomotza', a1, transitive).  % attested with the indefinite object prefix: tla-cocomotza.
verb_stem_type(cocotona, 'cocotona', 'cocoton', 'cocotona', a1, intransitive).  % COCOTŌN(A) be cut off
verb_stem_type(cocotona, 'cocotona', 'cocoton', 'cocotona', b, intransitive).  % COCOTŌN(A) be cut off
verb_stem_type(cocotona, 'cocotona', 'cocoton', 'cocotona', b, transitive).  % COCOTŌN(A) cut up (pret. COCOTŌN)
verb_stem_type(cocoyoni, 'cocoyōni', 'cocoyon', 'cocoyōni', b, intransitive).  % to open holes, become hollow; redup. COYŌN(I)
verb_stem_type(cocozcatia, 'cocozcatiā', 'cocozcati', 'cocozcati', c, transitive).  % COZCA-TL + -tia put necklaces on
verb_stem_type(cohua, 'cōhua', 'cōhua', 'cōhua', a1, transitive).  % to buy
verb_stem_type(coionia, 'coionia', 'coioni', 'coionia', c, transitive).  % to make holes in something (FC io for yo); K COYŌNIA
verb_stem_type(colehua, 'colehua', 'coleuh', 'colehua', b, transitive).  % to take off, detach (K COLEHU(A))
verb_stem_type(cōlhua, 'cōlhua', 'cōluh', 'cōlhua', b, transitive).  % to remove (cf. K CŌLHU(A))
verb_stem_type(colihui, 'cōlihui', 'cōliuh', 'cōlihui', b, intransitive).  % K CŌLIHU(I) to curve, turn
verb_stem_type(cololhui, 'cololhui', 'cololhui', 'cololhui', b, intransitive).  % to go in a line/gathered
verb_stem_type(cololhui, 'cololhui', 'cololhuic', 'cololhui', b, intransitive).  % to crowd together
verb_stem_type(coloquetza, 'coloquetza', 'coloquetz', 'coloquetza', b, transitive).  % to twist/turn oneself; no K headword
verb_stem_type(comacho, 'comacho', 'comachoc', 'comacho', a1, intransitive).  % to be angry? ( tlacomachozqueh)
verb_stem_type(comolihui, 'comōlihui', 'comoliuh', 'comōlihui', b, intransitive).  % to become gullied; K COMŌLIHU(I)
verb_stem_type(comonia, 'comonia', 'comoni', 'comonia', a1, transitive).  % to gather, come together (K COMŌNIA)
verb_stem_type(cotona, 'cotona', 'coton', 'cotona', a1, transitive).  % to cut (K COTŌN(A))
verb_stem_type(cototza, 'cototza', 'cototzac', 'cototza', a1, transitive).  % to hunch (K COTOTZ(A))
verb_stem_type(cototztlalia, 'cototztlaliā', 'cototztlali', 'cototztlaliā', c, transitive).  % pret. without h
verb_stem_type(cototztlalia, 'cototztlaliā', 'cototztlalih', 'cototztlalī', c, intransitive).  % intransitive variant
verb_stem_type(cototztlalia, 'cototztlaliā', 'cototztlalih', 'cototztlalī', c, transitive).  % to hunch down (COTOTZ- + TLĀLIĀ)
verb_stem_type(cotzhuihuitequi, 'cotzhuihuitequi', 'cotzhuihuitec', 'cotzhuihuitequi', b, transitive).  % COTZ-TLI + redup. HUĪTEQU(I)
verb_stem_type(cotzhuītequi, 'cotzhuītequi', 'cotzhuītec', 'cotzhuītequi', b, transitive).  % COTZ-TLI + HUĪTEQU(I) strike the calves
verb_stem_type(cozcati, 'cozcati', 'cozcati', 'cozcati', a1, transitive).  % put a necklace on (short variant)
verb_stem_type(cozcati, 'cōzcati', 'cōzcati', 'cōzcati', a1, transitive).  % put a necklace on (CŌZCA-TL + -ti)
verb_stem_type(cozcatia, 'cozcatiā', 'cozcati', 'cozcati', c, transitive).  % CŌZCA-TL + -tia put a necklace on
verb_stem_type(cōzcatia, 'cōzcatia', 'cōzcati', 'cōzcati', c, transitive).  % to put a necklace on someone (denominal CŌZCA-TL)
verb_stem_type(cua, 'cua', 'cuah', 'cua', b, transitive).  % to eat
verb_stem_type(cua, 'cua', 'cuā', 'cua', b, transitive).  % to eat (K CUA; perfective CUĀ as written)
verb_stem_type(cua, 'cuā', 'cuah', 'cuā', b, transitive).  % to eat
verb_stem_type(cuacua, 'cuacua', 'cuacuah', 'cuacua', b, transitive).  % eat (redup. CUA)
verb_stem_type(cuacuacuecuechoa, 'cuacuacuecuechoā', 'cuacuacuecuechoh', 'cuacuacuecuechō', c, transitive).  % mo-cuacuacuecuechoa 'to shake oneself, toss one's head' (reduplicated stem).
verb_stem_type(cuacuauhzoa, 'cuacuauhzoa', 'cuacuauhzo', 'cuacuauhzō', c, transitive).  % (FC; uncertain)
verb_stem_type(cuahuitequi, 'cuahuitequi', 'cuahuitec', 'cuahuitequi', b, transitive).  % to strike on the head
verb_stem_type(cuāhuītequi, 'cuāhuītequi', 'cuāhuītec', 'cuāhuītequi', b, transitive).  % CUĀI-TL + HUĪTEQU(I) strike the head
verb_stem_type(cualani, 'cualāni', 'cualan', 'cualāni', b, intransitive).  % to be angry (K CUALĀN(I), pret. CUALAN)
verb_stem_type(cualani, 'cualāni', 'cualān', 'cualāni', b, intransitive).  % to get angry (K CUALĀN(I))
verb_stem_type(cualāni, 'cuallāni', 'cuallān', 'cuallāni', b, intransitive).  % to be angry
verb_stem_type(cualāni, 'cualāni', 'cualāni', 'cualāni', a1, intransitive).  % CUALĀNI(A) be angry
verb_stem_type(cualitta, 'cualitta', 'cualitta', 'cualitta', a1, transitive).  % to like, find good
verb_stem_type(cuamana, 'cuāmana', 'cuāman', 'cuāmana', b, transitive).  % to lie to someone; CUĀMAN(A)
verb_stem_type(cuapotonia, 'cuapotonia', 'cuapotonih', 'cuapotonī', c, transitive).  % CUAPOTONIA to roll something
verb_stem_type(cuātzatzaiana, 'cuātzatzaiana', 'cuātzatzaian', 'cuātzatzaiana', a1, transitive).  % y written i in CUĀTZATZAYANA
verb_stem_type(cuātzatzayana, 'cuātzatzayana', 'cuātzatzayan', 'cuātzatzayana', a1, transitive).  % CUĀI-TL + TZATZAYAN(A) split heads
verb_stem_type(cuauhtlapachoa, 'cuauhtlapachoa', 'cuauhtlapachoh', 'cuauhtlapachō', c, transitive).  % to place on wood
verb_stem_type(cuechinia, 'cuechinia', 'cuechinic', 'cuechinia', a1, intransitive).  % to move, stir ( mocuechiniaia)
verb_stem_type(cuechinia, 'cuechinia', 'cuechinic', 'cuechinia', a1, transitive).  % transitive/reflexive counterpart
verb_stem_type(cuecuenoa, 'cuecuenoa', 'cuecueno', 'cuecuenoa', c, intransitive).  % to rejoice (CUECUENOA)
verb_stem_type(cuecuenoa, 'cuecuenoa', 'cuecuenot', 'cuecuenoa', c, intransitive).  % to rejoice (perfective cuecuenot-)
verb_stem_type(cuecuepa, 'cuecuepa', 'cuecuep', 'cuecuepa', b, transitive).  % to turn over repeatedly (CUEP(A) redup.)
verb_stem_type(cuecuepoca, 'cuecuepoca', 'cuecuepoca', 'cuecuepoca', a1, intransitive).  % to burst, sputter; K CUEHCUEPOCA
verb_stem_type(cuecueponi, 'cuecuepōni', 'cuecuepon', 'cuecuepōni', b, intransitive).  % to explode; redup. CUEPŌN(I)
verb_stem_type(cuecuetlaca, 'cuecuetlaca', 'cuecuetlacac', 'cuecuetlaca', a1, intransitive).  % to crackle (redup. CUETLAC(A))
verb_stem_type(cuecuetlaca, 'cuecuetlaca', 'cuecuetlacac', 'cuecuetlaca', b, intransitive).  % to crackle (K CUECUETLACA)
verb_stem_type(cuecuetlani, 'cuecuetlani', 'cuecuetlan', 'cuecuetlani', b, intransitive).  % to flicker, tremble; redup. CUETLĀN(I)
verb_stem_type(cuecuetlaxoa, 'cuecuetlaxoa', 'cuecuetlaxoh', 'cuecuetlaxō', c, transitive).  % to strike repeatedly (CUETLAXOA redup.)
verb_stem_type(cuecuetzoa, 'cuecuetzoa', 'cuecuetzo', 'cuecuetzoa', b, transitive).  % to toss, turn (K CUECUETZOA)
verb_stem_type(cuecuetzoa, 'cuecuetzoa', 'cuecuetzo', 'cuecuetzoā', c, intransitive).  % to turn over
verb_stem_type(cuecuetzoa, 'cuecuetzoa', 'cuecuetzo', 'cuecuetzoā', c, transitive).  % transitive/reflexive counterpart
verb_stem_type(cuecuetzoa, 'cuecuetzoā', 'cuecuetzoh', 'cuecuetzō', c, transitive).  % Reduplicated CUETZOA 'to shake'; mo-cuecuetzoa 'to shake oneself'.
verb_stem_type(cuepa, 'cuepa', 'cuep', 'cuepa', a1, transitive).  % turn (K CUEP(A))
verb_stem_type(cuepa, 'cuepa', 'cuep', 'cuepa', b, transitive).  % to turn (K CUEP(A)); mocuepa
verb_stem_type(cuepatzinōa, 'cuepatzinōa', 'cuepatzinō', 'cuepatzinōa', b, transitive).  % to return (CUEP(A) + -TZINŌA)
verb_stem_type(cuepcayōtia, 'cuepcayōtia', 'cuepcayōtih', 'cuepcayōti', c, transitive).  % to return something (CUEP(A) + -cāyōtia)
verb_stem_type(cuepcayotilia, 'cuepcayotilia', 'cuepcayotili', 'cuepcayotili', c, transitive).  % to return something to someone
verb_stem_type(cuepcayōtilia, 'cuepcayōtilia', 'cuepcayōtili', 'cuepcayōtili', c, transitive).  % perfective without h, as written
verb_stem_type(cuepcayōtilia, 'cuepcayōtilia', 'cuepcayōtilih', 'cuepcayōtili', c, transitive).  % to return something to someone
verb_stem_type(cueponi, 'cuepōni', 'cuepōni', 'cuepōni', b, intransitive).  % to bloom
verb_stem_type(cueptzinōa, 'cueptzinōa', 'cueptzinō', 'cueptzinō', b, intransitive).  % to return (CUEP(A) + -TZINŌA)
verb_stem_type(cueptzinōa, 'cueptzinōa', 'cueptzinō', 'cueptzinō', b, transitive).  % to return (reflexive/transitive use)
verb_stem_type(cueptzinōa, 'cueptzinōa', 'cueptzinō', 'cueptzinōa', b, transitive).  % to return (CUEP(A) + -TZINŌA, stem cuep-)
verb_stem_type(cuetia, 'cuētia', 'cuēti', 'cuētī', c, transitive).  % K CUĒTIĀ to put on a skirt
verb_stem_type(cuetlani, 'cuetlani', 'cuetlan', 'cuetlani', b, intransitive).  % short-vowel variant
verb_stem_type(cuetlāni, 'cuetlāni', 'cuetlān', 'cuetlāni', b, intransitive).  % to abate, flicker (K CUETLĀN(I))
verb_stem_type(cuetlaxoa, 'cuetlaxoā', 'cuetlaxo', 'cuetlaxō', c, transitive).  % be weak/faint (K CUETLAXOĀ)
verb_stem_type(cuexcochhuihuitequi, 'cuexcochhuihuitequi', 'cuexcochhuihuitec', 'cuexcochhuihuitequi', b, transitive).  % redup. CUEXCOCHHUITEQUI
verb_stem_type(cuexcochhuitequi, 'cuexcochhuitequi', 'cuexcochhuitec', 'cuexcochhuitequi', b, transitive).  % to strike on the nape
verb_stem_type(cui, 'cui', 'cui', 'cui', a1, transitive).  % to take, get
verb_stem_type(cui, 'cuī', 'cuic', 'cuī', a1, transitive).  % to take (K CUĪ with long ī)
verb_stem_type(cui, 'cuī', 'cuī', 'cuī', a1, transitive).  % K CUĪ to take, long ī
verb_stem_type(cuica, 'cuīca', 'cuīca', 'cuīca', a1, intransitive).  % to sing
verb_stem_type(cuicuiloa, 'cuicuiloa', 'cuicuiloh', 'cuicuilō', c, transitive).  % to paint, decorate (K CUICUILOA)
verb_stem_type(cuicuiti, 'cuicuiti', 'cuicuiti', 'cuicuiti', a1, intransitive).  % to be dizzy, thunderstruck (redup. CUITI)
verb_stem_type(cuicuitlahui, 'cuicuitlahui', 'cuicuitlahuic', 'cuicuitlahui', b, intransitive).  % to be alarmed (redup.)
verb_stem_type(cuihcuilo, 'cuihcuilo', 'cuihcuilo', 'cuihcuilo', a1, transitive).  % to paint/write (K (I)HCUILOA)
verb_stem_type(cuilia, 'cuiliā', 'cuili', 'cuili', c, transitive).  % h-less perfective as written
verb_stem_type(cuilia, 'cuiliā', 'cuilih', 'cuili', c, transitive).  % K CUILIA to take for someone
verb_stem_type(cuitlacuepa, 'cuitlacuepa', 'cuitlacuep', 'cuitlacuepa', b, intransitive).  % to turn the back, retreat (K CUITLACUEP(A))
verb_stem_type(cuitlahuatz, 'cuitlahuatz', 'cuitlahuatz', 'cuitlahuatz', a1, transitive).  % FC variant (quincuitlahuatzque)
verb_stem_type(cuitlahuia, 'cuitlahuiā', 'cuitlahuih', 'cuitlahui', c, transitive).  % to care for (K CUITLAHUIA)
verb_stem_type(cuitlahuia, 'cuitlahuiā', 'cuitlahuih', 'cuitlahuiā', c, transitive).  % to care for (K CUITLAHUIA)
verb_stem_type(cuitlahuitequi, 'cuitlahuitequi', 'cuitlahuitec', 'cuitlahuitequi', a1, transitive).  % strike on the back (cuitla- + huitequi)
verb_stem_type(cuitlalpia, 'cuitlalpia', 'cuitlalpih', 'cuitlalpi', c, transitive).  % tie on the back (CUITLA- + ILPIA)
verb_stem_type(cuitlalpia, 'cuitlalpiā', 'cuitlalpih', 'cuitlalpiā', c, transitive).  % gird (CUITLAPAN-TLI + ILPIA)
verb_stem_type(cuitlapahuitia, 'cuitlapahuitia', 'cuitlapahuitia', 'cuitlapahuitia', a1, transitive).  % a1 variant
verb_stem_type(cuitlapahuitia, 'cuitlapahuitiā', 'cuitlapahuitih', 'cuitlapahuitī', c, transitive).  % to lance (CUITLAPAN- + PAHUITIA)
verb_stem_type(cuitlatlāza, 'cuitlatlāza', 'cuitlatlāz', 'cuitlatlāza', a1, transitive).  % CUITLAXCOL-LI + TLĀZ(A) stab in the intestines
verb_stem_type(cuitlaxeloa, 'cuitlaxeloa', 'cuitlaxelo', 'cuitlaxelo', a1, transitive).  % to twist, turn something; K CUITLAXELOĀ
verb_stem_type(cuitlaxeloa, 'cuitlaxēloā', 'cuitlaxēloh', 'cuitlaxēlō', c, transitive).  % to scatter (K CUITLAXĒLOĀ)
verb_stem_type(eco, 'eco', 'eco', 'eco', a1, intransitive).  % short-vowel variant
verb_stem_type(eezhuia, 'eezhuiā', 'eezhui', 'eezhuiā', c, transitive).  % to blood something (EZ-TLI + -HUIA)
verb_stem_type(ehco, 'ehco', 'ehco', 'ehco', a1, intransitive).  % to arrive (K EHCO)
verb_stem_type(ehua, 'ēhua', 'eh', 'ēhua', c, intransitive).  % to rise, set out (K ĒHU(A))
verb_stem_type(ehua, 'ēhua', 'eh', 'ēhuā', c, intransitive).  % to rise, leave
verb_stem_type(ehua, 'ēhua', 'ēhuac', 'ēhuā', c, intransitive).  % to rise (FC pret. ēhuac); K EHU(A)
verb_stem_type(ehua, 'ēhua', 'ēuh', 'ēhuā', c, transitive).  % to raise someone (K EHU(A), transitive pret. EUH)
verb_stem_type(ēhua, 'ēhua', 'ēhua', 'ēhuā', c, intransitive).  % depart (K EHUA, intrans. pret. ĒHUAC)
verb_stem_type(ēhualo, 'ēhualō', 'ēhualō', 'ēhualō', a1, intransitive).  % to be set out (nonactive of EHUA)
verb_stem_type(ēhualtia, 'ēhualtiā', 'ēhualtih', 'ēhualtī', c, transitive).  % to set out, raise
verb_stem_type(ehuatitlalia, 'ehuatitlaliā', 'ehuatitlalili', 'ehuatitlaliā', c, transitive).  % to raise someone into a sitting position
verb_stem_type(ehuatitlalia, 'ēhuatitlaliā', 'ēhuatitlali', 'ēhuatitlaliā', c, transitive).  % to raise someone into a sitting position
verb_stem_type(ehuitia, 'ehuitiā', 'ehuitih', 'ehuiti', c, transitive).  % punish (K EHUITIA?; unmarked)
verb_stem_type(elcicihui, 'elcicihui', 'elciuh', 'elcicihui', b, intransitive).  % to sigh (K ĒLCIHCIHU(I))
verb_stem_type(enotza, 'enotza', 'enotzac', 'enotza', a1, transitive).  % to call, summon ( quinnenotzallani)
verb_stem_type(eteca, 'eteca', 'etecac', 'eteca', a1, transitive).  % to lay out, plant in a row ( quimetecaqueh)
verb_stem_type(etepātzacca, 'etepātzacca', 'etepātzaccac', 'etepātzacca', a1, transitive).  % to press down ( opaque compound)
verb_stem_type(hcuiloa, 'hcuiloa', 'hcuiloh', 'hcuilō', c, transitive).  % to write
verb_stem_type(htoa, 'htoā', 'htoh', 'htō', c, transitive).  % to say
verb_stem_type(hual_lah, 'huāllah', 'huāllah', 'huāllā', d, intransitive).  % to come hither (HUĀL + YAUH)
verb_stem_type(huala, 'huala', 'hualac', 'huala', a1, intransitive).  % to come hither; K HUALLA
verb_stem_type(hualā, 'hualā', 'hualā', 'hualā', b, intransitive).  % to come (unmarked HUĀLĀ): nihualaz
verb_stem_type(huālaci, 'huālaci', 'huālacico', 'huālaci', a1, intransitive).  % to arrive here (HUĀL + AHCI)
verb_stem_type(huālaltotoca, 'huālaltotoca', 'huālaltotocac', 'huālaltotoca', a1, intransitive).  % to come running
verb_stem_type(hualati, 'hualati', 'hualatih', 'hualati', a1, intransitive).  % to come (unmarked spelling of HUĀL + ATI)
verb_stem_type(huālati, 'huālati', 'huālatih', 'huālati', a1, intransitive).  % to come (HUĀL + ATI?)
verb_stem_type(huālitta, 'huālitta', 'huālitta', 'huālitta', a1, transitive).  % to look this way (HUĀL + ITTA)
verb_stem_type(hualla, 'hualla', 'hualla', 'hualla', d, intransitive).  % come: huāl- + yauh, written hualla-
verb_stem_type(hualla, 'huallauh', 'hualla', 'huallā', d, intransitive).  % come hither (FC pret. hualla-)
verb_stem_type(hualla, 'huallauh', 'huallah', 'huallā', d, intransitive).  % come hither (K HUALLA, short a)
verb_stem_type(huallā, 'huāllā', 'huālla', 'huāllā', d, intransitive).  % to come hither (perfective as written)
verb_stem_type(huālla, 'huālla', 'huāllah', 'huāllā', d, intransitive).  % to come hither (K HUALLA; HUĀL + YA)
verb_stem_type(huālla, 'huāllauh', 'huālla', 'huāllā', d, intransitive).  % come hither (FC spelling with ā)
verb_stem_type(huālla, 'huāllauh', 'huāllah', 'huāllā', d, intransitive).  % come hither (K HUALLA)
verb_stem_type(huallamati, 'huallamati', 'huallamat', 'huallamati', a1, intransitive).  % become known (hual- + MATI)
verb_stem_type(huāllamelāhua, 'huāllamelāhua', 'huāllamelāuh', 'huāllamelāhua', b, intransitive).  % to come straight back
verb_stem_type(huāllamelauh, 'huāllamelāhua', 'huāllamelauh', 'huāllamelāhua', b, intransitive).  % to come straight back
verb_stem_type(huāllatotoca, 'huāllatotoca', 'huāllatotoca', 'huāllatotoca', a1, intransitive).  % to come running (HUĀL + LATOTOCA)
verb_stem_type(hualmicalia, 'hualmicalia', 'hualmicalic', 'hualmicalia', a1, intransitive).  % to come fighting
verb_stem_type(huālmochīhuhtia, 'huālmochīhuhtia', 'huālmochīhuhtih', 'huālmochīhuhti', c, intransitive).  % to be done here (HUĀL + MO + CHĪHUHTIA)
verb_stem_type(huālmocuepa, 'huālmocuepa', 'huālmocuep', 'huālmocuepa', b, intransitive).  % to come back (HUĀL + MO + CUEP(A))
verb_stem_type(huālnehnemi, 'huālnehnemi', 'huālnehnēn', 'huālnehnemi', b, intransitive).  % to come along (HUĀL + NEHNEM(I))
verb_stem_type(hualolini, 'hualolini', 'hualolin', 'hualolini', a1, intransitive).  % to move hither (huāl + OLIN(I))
verb_stem_type(huālquīza, 'huālquīza', 'huālquīz', 'huālquīza', b, intransitive).  % to come out hither (HUĀL + QUĪZ(A))
verb_stem_type(hualtaticac, 'hualtaticac', 'hualtaticac', 'hualtaticac', a1, intransitive).  % to come straight
verb_stem_type(huāltequixtitlani, 'hualtequixtitlani', 'hualtequixtitlani', 'hualtequixtitlani', a1, intransitive).  % to let (children) go out ( lexicalised; short-vowel spelling)
verb_stem_type(huāltequixtitlani, 'huāltequixtitlani', 'huāltequixtitlani', 'huāltequixtitlani', a1, intransitive).  % HUĀL + TEQUIXTIA 'to let (children) go out'
verb_stem_type(huāltlaquīxtia, 'huāltlaquīxtia', 'huāltlaquīxtih', 'huāltlaquīxti', c, transitive).  % to bring things out (HUĀL + TLA + QUĪXTIĀ)
verb_stem_type(hualtzatza, 'hualtzatza', 'hualtzatzac', 'hualtzatza', a1, intransitive).  % huāl- + TZATZ(A)
verb_stem_type(huaztia, 'huaztia', 'huaztic', 'huaztia', a1, intransitive).  % to move toward
verb_stem_type(huecahua, 'huecahua', 'huecahuac', 'huecahuā', b, intransitive).  % to be far apart
verb_stem_type(huēhcāhu, 'huēhcāhu', 'huēhcāhu', 'huēhcāhu', b, intransitive).  % delay (FC allomorph before -ti; cf. K HUEHCAHU(I))
verb_stem_type(huehcāhua, 'huēhcāhua', 'huēhcāhuac', 'huēhcāhua', b, intransitive).  % to delay (K HUĒHCĀHU(A))
verb_stem_type(huēhcāhua, 'huēhcāhua', 'huēhcāhua', 'huēhcāhua', b, intransitive).  % HUĒHCĀHU(A) last long
verb_stem_type(huēhcāhuh, 'huēhcāhuh', 'huēhcāhuh', 'huēhcāhuh', b, intransitive).  % delay (FC stem before optative -ti)
verb_stem_type(huēhcāhui, 'huēhcāhui', 'huēhcāhuih', 'huēhcāhui', b, intransitive).  % delay (K HUEHCAHU(I))
verb_stem_type(huehcahuiltia, 'huehcahuiltia', 'huehcahuilti', 'huehcahuilti', b, transitive).  % to take leave (HUEHCĀHUALTIA)
verb_stem_type(huehcapahuia, 'huehcapahuiā', 'huehcapahui', 'huehcapahui', c, transitive).  % to bring from afar (HUEHCAPAHUIA)
verb_stem_type(huehuat, 'huehuat', 'huehuat', 'huehuat', a1, intransitive).  % to do good
verb_stem_type(huehuetzca, 'huehuetzca', 'huehuetzca', 'huehuetzca', a1, intransitive).  % to laugh (K HUEHUETZCA)
verb_stem_type(huehuetzi, 'huehuetzi', 'huehuetz', 'huehuetzi', b, intransitive).  % to fall (redup. of K HUETZ(I))
verb_stem_type(hueliti, 'hueliti', 'huelit', 'hueliti', a1, intransitive).  % to be able (K HUELITI)
verb_stem_type(hueliti, 'hueliti', 'huelit', 'hueliti', b, intransitive).  % to be able (K HUELITI; pret. HUELIT, Class B)
verb_stem_type(huetzca, 'huetzca', 'huetzca', 'huetzca', a1, intransitive).  % to laugh
verb_stem_type(huetzi, 'huetzi', 'huetz', 'huetzi', b, intransitive).  % HUETZ(I) 'to fall'; pret. HUETZ.
verb_stem_type(huetzitia, 'huetzitiā', 'huetziti', 'huetziti', c, intransitive).  % fall (HUETZI + -tia)
verb_stem_type(huetzitia, 'huetzitiā', 'huetzitih', 'huetziti', c, intransitive).  % fall (HUETZI + -tia)
verb_stem_type(hui, 'hui', 'hui', 'hui', a1, intransitive).  % K HUĪ to go (plural)
verb_stem_type(hui, 'huī', 'huī', 'huī', a1, intransitive).  % K HUĪ to go, long ī
verb_stem_type(huī, 'huī', 'huī', 'huī', b, intransitive).  % to go (K HUI)
verb_stem_type(huica, 'huica', 'huica', 'huica', a1, transitive).  % to take, carry
verb_stem_type(huica, 'huīca', 'huīca', 'huīca', a1, intransitive).  % object omitted (ohualhuīcaqueh)
verb_stem_type(huica, 'huīca', 'huīca', 'huīca', a1, transitive).  % K HUĪCA to take, carry (long ī)
verb_stem_type(huica, 'huīca', 'huīcac', 'huīca', a1, transitive).  % take (K HUĪCA; pret. huīcac)
verb_stem_type(huīca, 'huīca', 'huīcac', 'huīca', b, transitive).  % to take (pret. huīcac before plural -queh)
verb_stem_type(huīcatia, 'huīcatia', 'huīcatih', 'huīcati', c, transitive).  % to have someone taken (caus. HUĪCA)
verb_stem_type(huīcatia, 'huīcatia', 'huīcatiā', 'huīcatia', c, transitive).  % to have someone taken (perfective as written)
verb_stem_type(huicini, 'huicini', 'huicin', 'huicini', b, intransitive).  % to hum, whiz
verb_stem_type(huīcoc, 'huīcoc', 'huīcoc', 'huīcoc', a1, intransitive).  % to be carried off (cf. HUĪCA)
verb_stem_type(huihui, 'huihui', 'huihui', 'huihui', a1, intransitive).  % to be weak?
verb_stem_type(huīhuīca, 'huīhuīca', 'huīhuīca', 'huīhuīca', a1, transitive).  % to conduct (redup. HUĪCA)
verb_stem_type(huihuīlano, 'huīhuīlano', 'huīhuīlan', 'huīhuīlano', a1, intransitive).  % (FC; uncertain)
verb_stem_type(huihuioca, 'huihuioca', 'huihuiocac', 'huihuioca', a1, intransitive).  % K HUIHUIYOCA to tremble (y written i)
verb_stem_type(huihuioca, 'huihuioca', 'huihuiocac', 'huihuioca', a1, transitive).  % same, transitive (K: v refl, vt); tlā-huihuioca
verb_stem_type(huihuipana, 'huihuipana', 'huihuipan', 'huihuipana', a1, transitive).  % to line up (K HUIPAN(A) redup.)
verb_stem_type(huihuipana, 'huihuipana', 'huihuipana', 'huihuipana', a1, transitive).  % to arrange in rows; redup. HUIPANA
verb_stem_type(huihuitequi, 'huihuitequi', 'huihuitec', 'huihuitequi', b, transitive).  % redup. HUĪTEQU(I) strike repeatedly
verb_stem_type(huihuītequi, 'huihuītequi', 'huihuītec', 'huihuītequi', b, transitive).  % to strike repeatedly (HUĪTEQU(I) redup.)
verb_stem_type(huīhuītequi, 'huīhuītequi', 'huīhuītec', 'huīhuītequi', b, transitive).  % to strike repeatedly (redup. HUĪTEQU(I))
verb_stem_type(huilana, 'huilāna', 'huilan', 'huilāna', b, transitive).  % to drag, crawl (K HUILĀN(A))
verb_stem_type(huilana, 'huilāna', 'huilān', 'huilāna', a1, transitive).  % K HUILĀN(A) to drag, fetch
verb_stem_type(huīlāna, 'huīlāna', 'huīlān', 'huīlāna', a1, transitive).  % HUĪLĀN(A) drag
verb_stem_type(huilanō, 'huilanō', 'huilanoh', 'huilanō', c, transitive).  % to drag (K HUILANŌ)
verb_stem_type(huiloa, 'huiloa', 'huiloh', 'huilō', c, transitive).  % to spread out (K HUILOĀ)
verb_stem_type(huīloa, 'huīloa', 'huīlo', 'huīlo', a1, intransitive).  % to go about, disperse (var. of HUĪLOHUA)
verb_stem_type(huīlohua, 'huīlohua', 'huīlohuac', 'huīlohua', b, intransitive).  % for everyone to go, depart (K HUĪLOHUA)
verb_stem_type(huiltequi, 'huiltequi', 'huiltec', 'huiltequi', b, transitive).  % to head off
verb_stem_type(huipana, 'huipana', 'huipan', 'huipana', a1, transitive).  % to line up, arrange (K HUIPAN(A))
verb_stem_type(huīpano, 'huīpano', 'huīpanoc', 'huīpano', b, intransitive).  % pass by (HUĪTZ + PANO?)
verb_stem_type(huītequi, 'huītequi', 'huītec', 'huītequi', b, transitive).  % to strike (K HUĪTEQU(I))
verb_stem_type(huitoni, 'huītoni', 'huītoni', 'huītoni', a1, intransitive).  % to dance
verb_stem_type(huittitia, 'huittitiā', 'huittiti', 'huittiti', c, transitive).  % show (FC pret. pl. huittiti-queh)
verb_stem_type(huittitia, 'huittitiā', 'huittitih', 'huittiti', c, transitive).  % show (caus. ITTA; FC h-variant)
verb_stem_type(huitz, 'huitz', 'huitz', 'huitz', b, intransitive).  % to come (short-vowel variant)
verb_stem_type(huitz, 'huītz', 'huītz', 'huītz', b, intransitive).  % to come (irregular)
verb_stem_type(huītzana, 'huītzana', 'huītzan', 'huītzana', a1, transitive).  % drag, pull (HUĪTZ- + ANA; not a K headword)
verb_stem_type(i, 'ī', 'ih', 'īh', b, transitive).  % to drink
verb_stem_type(iaca, 'iaca', 'iaca', 'iaca', a1, transitive).  % lead (FC pret. of YACAN(A))
verb_stem_type(iacachacuachiuhque, 'iacachacuachiuhque', 'iacachacuachiuhque', 'iacachacuachiuhque', a1, intransitive).  % faces/noses roughened ( opaque)
verb_stem_type(iacana, 'iacana', 'iacan', 'iacana', a1, transitive).  % variant of YACAN(A), y written i
verb_stem_type(iacantia, 'iacantiā', 'iacantih', 'iacanti', c, transitive).  % guide (FC variant of YACANTIA)
verb_stem_type(iacatia, 'iacatiā', 'iacatih', 'iacati', c, transitive).  % lead, guide (yacatl)
verb_stem_type(iacatzacuilia, 'iacatzacuiliā', 'iacatzacuilih', 'iacatzacuili', c, transitive).  % to cut someone off; K IACATZACUILIA
verb_stem_type(iacatzopini, 'iacatzopini', 'iacatzopini', 'iacatzopini', b, transitive).  % hook/pull (not a K headword; YACATZOL-LI + TZOPĪNIĀ)
verb_stem_type(ica, 'ica', 'ica', 'ica', a1, intransitive).  % to be (standing) there (K ICAC)
verb_stem_type(icahuaca, 'icahuaca', 'icahuaca', 'icahuaca', a1, intransitive).  % to be gathered/gather (K ICahuaca?)
verb_stem_type(icahuatza, 'icahuatza', 'icahuatzac', 'icahuatza', b, transitive).  % to push someone (K ICAHUATZA)
verb_stem_type(icahuatza, 'icahuatza', 'icahuaz', 'icahuatza', b, transitive).  % to push (perfective icahuaz- as written)
verb_stem_type(icahuaz, 'icahuaz', 'icahuaz', 'icahuaz', b, transitive).  % to push (variant stem of ICAHUATZA before -ti-hui)
verb_stem_type(icali, 'icali', 'ical', 'icali', a1, transitive).  % to fight (K (I)CAL(I))
verb_stem_type(icati, 'icati', 'icat', 'icati', a1, intransitive).  % to come leading
verb_stem_type(ichachacuachiuhque, 'ichachacuachiuhque', 'ichachacuachiuhque', 'ichachacuachiuhque', a1, intransitive).  % variant of the preceding
verb_stem_type(ichchioa, 'ichchioa', 'ichchioac', 'ichchioa', a1, transitive).  % to make faces at; prob. ix-chīhua with x > ch assimilation
verb_stem_type(ichpeliuhticac, 'ichpeliuhticac', 'ichpeliuhticac', 'ichpeliuhticac', a1, intransitive).  % road description; opaque
verb_stem_type(ichpelpulicac, 'ichpelpulicac', 'ichpelpulicac', 'ichpelpulicac', a1, intransitive).  % road description; opaque
verb_stem_type(ichtacacalaqui, 'ichtacacalaqui', 'ichtacacalaquic', 'ichtacacalaqui', b, intransitive).  % to enter secretly
verb_stem_type(ichtacacalaquia, 'ichtacacalaquia', 'ichtacacalaquih', 'ichtacacalaqui', c, transitive).  % to put in secretly
verb_stem_type(ichtacatlatlani, 'ichtacatlatlani', 'ichtacatlatlani', 'ichtacatlatlani', a1, transitive).  % ichtaca-tlatlani 'to ask secretly': ichtaca 'secretly' + TLAHTLAN(I) 'ask'.
verb_stem_type(icoyoca, 'icoyoca', 'icoyocac', 'icoyoca', a1, intransitive).  % to roar, whir, crackle; K IHCOYOCA
verb_stem_type(icpacxochiti, 'icpacxōchiti', 'icpacxōchiti', 'icpacxōchiti', a1, transitive).  % crown with flowers (ICPAC + XŌCHI-TL)
verb_stem_type(ieyecoa, 'ieyecoa', 'ieyeco', 'ieyeco', c, transitive).  % to try, test (YECOA, redup. YEHYECOA; y written i)
verb_stem_type(ihcihui, 'ihcihui', 'ihcihui', 'ihcihui', a1, intransitive).  % to hurry
verb_stem_type(ihcuiloa, 'ihcuiloā', 'ihcuiloh', 'ihcuilō', c, transitive).  % to write
verb_stem_type(ihicolia, 'ihicoliā', 'ihicolih', 'ihicolī', c, transitive).  % variant of IHICŌLTIA/ĪCŌLTIĀ
verb_stem_type(ihicultia, 'ihicultiā', 'ihicultih', 'ihicultī', c, transitive).  % K IHICŌLTIA (redup. ĪCŌLTIĀ) to covet
verb_stem_type(ihiyahuā, 'ihiyahuā', 'ihiyahuh', 'ihiyahuā', c, transitive).  % Rare compound verbs attested only in this passage ihiyahuā 'to lift, raise up' (the banners); perfective ihiyahuh.
verb_stem_type(ihīyōcui, 'ihīyōcui', 'ihīyōcui', 'ihīyōcui', a1, intransitive).  % to take breath, refresh oneself (K IHIYOCUI)
verb_stem_type(ihīyōcui, 'ihīyōcui', 'ihīyōcui', 'ihīyōcui', a1, transitive).  % to take breath, refresh oneself (K IHIYOCUI)
verb_stem_type(ihiyohui, 'hīyohui', 'hīyohuic', 'hīyohui', b, transitive).  % supportive i deleted after object prefix (qu-ihīyohui)
verb_stem_type(ihiyohui, 'ihiyohui', 'ihiyohuic', 'ihiyohui', b, intransitive).  % to suffer, be tired (K IHIYOHU(I))
verb_stem_type(ihiyohui, 'ihiyohui', 'ihiyohuic', 'ihiyohui', b, transitive).  % transitive use (quihīyohui)
verb_stem_type(ihiyohui, 'ihīyohui', 'ihīyohuic', 'ihīyohui', b, transitive).  % sources quihīyohui (long ī)
verb_stem_type(ihiyohuia, 'hiohuiā', 'hiohuih', 'hiohui', c, transitive).  % same stem after the object prefix qu- (quihiohuia)
verb_stem_type(ihiyohuia, 'ihiohuiā', 'ihiohuih', 'ihiohui', c, transitive).  % same, h-less spelling in the sources
verb_stem_type(ihiyohuia, 'ihiyohuia', 'ihiyohuih', 'ihiyohuiā', c, intransitive).  % to suffer, expire (K IHIYOHUIA)
verb_stem_type(ihiyohuia, 'ihiyohuia', 'ihiyohuih', 'ihiyohuiā', c, transitive).  % transitive use (quihiyohuia)
verb_stem_type(ihiyohuia, 'ihiyōhuia', 'ihiyōhuih', 'ihiyōhui', c, intransitive).  % be troubled (K IHIYOHUIA)
verb_stem_type(ihiyohuia, 'ihiyōhuia', 'ihiyōhuih', 'ihiyōhui', c, transitive).  % trouble (transitive use)
verb_stem_type(ihiyohuia, 'ihīyōhuiā', 'ihīyōhuih', 'ihīyōhui', c, transitive).  % K IHĪYŌHUIĀ to endure hardship
verb_stem_type(ihiyohuiltia, 'ihiyōhuiltiā', 'ihiyōhuiltih', 'ihiyōhuilti', c, transitive).  % trouble (K IHIYŌHUILTIĀ)
verb_stem_type(ihīyōhuiltia, 'ihīyōhuiltiā', 'ihīyōhuilti', 'ihīyōhuilti', c, transitive).  % to welcome, give rest (K IHĪYŌHUILTIĀ)
verb_stem_type(ihiyoti, 'ihiyoti', 'ihiyotic', 'ihiyoti', a1, transitive).  % to suffer (cf. IHIYOHUIA)
verb_stem_type(ihizahuia, 'ihizahuia', 'ihizahuih', 'ihizahui', c, intransitive).  % to be startled (cf. K IHIZA)
verb_stem_type(ihizahuia, 'ihizahuiā', 'ihizahuih', 'ihizahui', c, transitive).  % redup. IZAHUIA 'to be overawed, frighten'
verb_stem_type(iholiyoac, 'iholiyoac', 'iholiyoac', 'iholiyoac', a1, intransitive).  % to revive, convalesce
verb_stem_type(ihtihuītequi, 'ihtihuītequi', 'ihtihuītec', 'ihtihuītequi', b, transitive).  % ĪHTI-TL + HUĪTEQU(I) strike the belly
verb_stem_type(ihtoa, 'ihto', 'ihtoh', 'ihtō', c, intransitive).  % absolute/impersonal use
verb_stem_type(ihtoa, 'ihto', 'ihtoh', 'ihtō', c, transitive).  % to say (h-less stem)
verb_stem_type(ihtoa, 'ihtoi', 'ihtoh', 'ihtō', c, transitive).  % ihtoa + -ya surfaces as ihtoia
verb_stem_type(ihtoa, 'ihtoā', 'ihtoh', 'ihtō', c, transitive).  % to say, speak
verb_stem_type(īhuā, 'īhuā', 'īhuah', 'īhuā', d, transitive).  % IHUĀ 'to send someone'; pret. IHUAH (Karttunen), Class D.
verb_stem_type(ihyaya, 'ihyāya', 'ihyāyac', 'ihyāya', a1, intransitive).  % to stink (K IHYAYA)
verb_stem_type(ilhuia, 'ilhui', 'ilhui', 'ilhuī', c, transitive).  % to say to someone (ILHUIĀ)
verb_stem_type(ilhuia, 'ilhuia', 'ilhui', 'ilhui', c, transitive).  % to say to someone (K ILHUIĀ)
verb_stem_type(ilhuia, 'ilhuia', 'ilhui', 'ilhuī', c, transitive).  % variant before -ya
verb_stem_type(ilhuia, 'ilhuiā', 'ilhui', 'ilhuī', c, transitive).  % ILHUIĀ 'to say something to someone', the suppletive applicative of (I)HTOĀ (Andrews 26.9.1); perfective ilhui as written in the .
verb_stem_type(ilhuia, 'ilhuiā', 'ilhuih', 'ilhuī', c, transitive).  % to say to someone (perfective ilhuih); K ILHUIĀ
verb_stem_type(ilhuilo, 'ilhuilo', 'ilhuilo', 'ilhuilo', b, intransitive).  % it was said (nonact. ILHUIĀ, FC h-less)
verb_stem_type(ilhuiltia, 'ilhuiltia', 'ilhuiltih', 'ilhuiltī', c, transitive).  % celebrate a festival (ILHUI-TL)
verb_stem_type(ilhuiquīxtia, 'ilhuiquīxtiā', 'ilhuiquīxti', 'ilhuiquīxti', c, intransitive).  % ILHUIQUĪXTIA celebrate the feast (intrans.)
verb_stem_type(ilhuiquīxtia, 'ilhuiquīxtiā', 'ilhuiquīxti', 'ilhuiquīxti', c, transitive).  % ILHUIQUĪXTIA bring out the feast
verb_stem_type(ilhuitia, 'ilhuitia', 'ilhuiti', 'ilhuitia', c, intransitive).  % pret. without h
verb_stem_type(ilhuitia, 'ilhuitia', 'ilhuitih', 'ilhuiti', c, intransitive).  % for days to pass (ILHUITL + -tia)
verb_stem_type(ilhuitla, 'ilhuitla', 'ilhuitlac', 'ilhuitla', a1, intransitive).  % same, intransitive use
verb_stem_type(ilhuitla, 'ilhuitla', 'ilhuitlac', 'ilhuitla', a1, transitive).  % celebrate (ILHUI-TL)
verb_stem_type(ilhuitlamati, 'ilhuitlamati', 'ilhuitlamah', 'ilhuitlamati', b, intransitive).  % same, intransitive use
verb_stem_type(ilhuitlamati, 'ilhuitlamati', 'ilhuitlamah', 'ilhuitlamati', b, transitive).  % observe a festival (ILHUI-TL + MATI)
verb_stem_type(illia, 'illia', 'illi', 'illi', a1, transitive).  % to tell (someone)
verb_stem_type(ilnamiqui, 'ilnamiqui', 'ilnamic', 'ilnamiqui', b, transitive).  % to remember (K ILNAM(IQU)I)
verb_stem_type(ilnamiquia, 'ilnamiquia', 'ilnamiquih', 'ilnamiquiā', c, transitive).  % to remember (ILNAMIQU(I) + -ia)
verb_stem_type(iloti, 'iloti', 'ilot', 'iloti', b, intransitive).  % to turn back (no K headword)
verb_stem_type(ilpia, 'ilpiā', 'ilpi', 'ilpiā', c, transitive).  % pret. without h
verb_stem_type(ilpia, 'ilpiā', 'ilpih', 'ilpiā', c, transitive).  % to tie (someone)
verb_stem_type(ilpilo, 'ilpilō', 'ilpilō', 'ilpilō', a1, intransitive).  % to be tied: nonactive of ILPIĀ (K ILPĪLŌ); ilpiloqueh
verb_stem_type(ilpilo, 'ilpīlō', 'ilpīlō', 'ilpīlō', a1, intransitive).  % to be tied (K ILPĪLŌ); ilpiloqueh
verb_stem_type(ilpitza, 'ilpītza', 'ilpitz', 'ilpītza', b, transitive).  % to blow (K (I)LPĪTZ(A))
verb_stem_type(imacaxoa, 'imacaxoa', 'imacaxoh', 'imacaxō', c, transitive).  % to dread (K IMACAXOĀ)
verb_stem_type(imati, 'imati', 'imat', 'imati', a1, transitive).  % to know (K (I)MATI)
verb_stem_type(inanquilia, 'īnanquiliā', 'īnanquili', 'īnanquili', c, transitive).  % to answer; supportive-ī variant of NĀNQUILIĀ
verb_stem_type(inaya, 'īnaia', 'īnax', 'īnaia', b, transitive).  % orthographic variant of ĪNAY(A), y written i
verb_stem_type(inaya, 'īnaya', 'īnax', 'īnaya', b, transitive).  % to hide oneself, take refuge; ĪNAY(A), pret. INAX
verb_stem_type(ipitza, 'ipitza', 'ipitz', 'ipitza', a1, transitive).  % to blow on someone (supportive-i variant of PITZA)
verb_stem_type(italhuia, 'italhuia', 'italhuih', 'italhui', c, transitive).  % to say to someone (IHTŌ + applic.)
verb_stem_type(italhuia, 'italhuiā', 'italhuih', 'italhui', c, transitive).  % say to someone (ITOA + -lhuia)
verb_stem_type(ītia, 'ītia', 'īti', 'īti', c, transitive).  % to make someone drink (caus. of I)
verb_stem_type(itihuītequi, 'itihuītequi', 'itihuītec', 'itihuītequi', b, transitive).  % h-less variant of IHTIHUĪTEQUI
verb_stem_type(itlacahui, 'itlacahui', 'itlacauh', 'itlacahui', b, intransitive).  % to be spoiled (ITLACAHU(I))
verb_stem_type(itlahtlahuizoa, 'itlahtlahuizoa', 'itlahtlahuizo', 'itlahtlahuizoa', b, transitive).  % itlahtlahuizoa 'to wave (something) from side to side'; initial i is retained after the object prefix qu- (qui-tlahtlahuizo...).
verb_stem_type(itlahtlatia, 'itlahtlatiā', 'itlahtlatih', 'itlahtlatī', c, intransitive).  % same, used intransitively here
verb_stem_type(itlahtlatia, 'itlahtlatiā', 'itlahtlatih', 'itlahtlatī', c, transitive).  % TLAHTLĀTIĀ 'to hide things' with supportive i- (K TLAHTLĀTIĀ)
verb_stem_type(itlanilia, 'itlanilia', 'itlanili', 'itlanilia', c, transitive).  % to ask someone for something (supportive i after QUIM-)
verb_stem_type(itoa, 'itoa', 'ito', 'itoa', c, transitive).  % to say (attested short-vowel variant of (I)HTOĀ)
verb_stem_type(itoa, 'itoa', 'ito', 'itō', c, transitive).  % to say (itoa + -ya)
verb_stem_type(itoa, 'itoā', 'ito', 'itō', c, transitive).  % Speech verbs (I)HTOĀ 'to say something'; the uses the h-less stem itoa / perfective ito.
verb_stem_type(itoctitoca, 'itoctitoca', 'itoctitocac', 'itoctitoca', a1, transitive).  % to hide behind
verb_stem_type(itoctitoca, 'otoctitoca', 'otoctitocac', 'otoctitoca', a1, transitive).  % variant (quimotoctitoca)
verb_stem_type(itohua, 'itohua', 'itohuac', 'itohua', a1, transitive).  % to say (FC variant of (I)HTOĀ; inquitohuaya)
verb_stem_type(itqui, 'itqui', 'itqui', 'itqui', a1, transitive).  % ITQUI carry
verb_stem_type(itqui, 'itqui', 'itqui', 'itqui', b, transitive).  % carry (K ITQUI; FC pret. itqui-)
verb_stem_type(itqui, 'itqui', 'itquic', 'itqui', b, transitive).  % ITQU(I) 'to carry something'; pret. ITQUIC (cf. nonact. ITCŌ).
verb_stem_type(itquilia, 'itquilia', 'itquilih', 'itquiliā', c, transitive).  % to carry for someone (ITQU(I) + applic.)
verb_stem_type(itquilia, 'otquilia', 'otquilih', 'otquiliā', c, transitive).  % variant with supportive o (quimotquilia)
verb_stem_type(itquiti, 'itquiti', 'itquiti', 'itquiti', a1, transitive).  % to carry (K ITQU(I) + -ti)
verb_stem_type(itta, 'itta', 'itta', 'itta', a1, transitive).  % to see
verb_stem_type(ittatia, 'ittatia', 'ittatih', 'ittati', c, transitive).  % to go to see (ITTA + -tia)
verb_stem_type(ittilia, 'ittilia', 'ittilih', 'ittiliā', c, transitive).  % to show (ITTA + applic.)
verb_stem_type(ittilia, 'ittiliā', 'ittilih', 'ittili', c, transitive).  % show (K ITTILIA)
verb_stem_type(ittilia, 'ottilia', 'ottilih', 'ottiliā', c, transitive).  % variant with supportive o (quimottilia)
verb_stem_type(ittitia, 'ittitia', 'ittiti', 'ittiti', c, transitive).  % to show (K (I)TTITIA, caus. of (I)TTA)
verb_stem_type(ittitia, 'ittitia', 'ittitih', 'ittitī', c, transitive).  % causative of ITTA 'to show'
verb_stem_type(ittitia, 'ittitiā', 'ittiti', 'ittiti', c, transitive).  % to show (K ITTITIA, caus. ITTA; sources pret. ittiti-)
verb_stem_type(itto, 'ittō', 'ittō', 'ittō', a1, intransitive).  % to be seen (nonact. ITTA)
verb_stem_type(itztia, 'itztia', 'itzti', 'itztia', a1, intransitive).  % to belong to, be from (K ĪTZTIĀ)
verb_stem_type(itztia, 'itztia', 'itztih', 'itztia', a1, intransitive).  % to go toward
verb_stem_type(ixapapatza, 'ixapapatza', 'ixapapatzac', 'ixapapatza', a1, transitive).  % to make water stream down the face (IX- + PAPATZA)
verb_stem_type(ixapapatza, 'īxapapatza', 'īxapapatzac', 'īxapapatza', a1, transitive).  % long ī after m (quimīxapapatza)
verb_stem_type(ixcāhuālo, 'ixcāhuālo', 'ixcāhuālo', 'ixcāhuālo', a1, intransitive).  % to be left out of sight (nonact.)
verb_stem_type(ixcahui, 'ixcahui', 'ixcahuic', 'ixcahui', b, transitive).  % to meet, greet (cf. K IXCAHUIA)
verb_stem_type(ixcāhuia, 'ixcāhuia', 'ixcāhuih', 'ixcāhui', c, intransitive).  % to be left out of sight (ĪX + CĀHUIA)
verb_stem_type(ixcāhuia, 'ixcāhuia', 'ixcāhuih', 'ixcāhui', c, transitive).  % to let someone out of sight (ĪX + CĀHUIA)
verb_stem_type(ixcuepa, 'ixcuepa', 'ixcuep', 'ixcuepa', b, transitive).  % to turn someone's head, deceive; IXCUEP(A); IX-TLI 'face' has short i
verb_stem_type(ixcueponi, 'ixcueponi', 'ixcuepon', 'ixcueponi', b, intransitive).  % for the eye to burst/open ( yixcueponque)
verb_stem_type(ixeuhtica, 'ixeuhtica', 'ixeuhticac', 'ixeuhtica', a1, intransitive).  % to be carved (IX- + EUH + -tica)
verb_stem_type(ixili, 'hualixili', 'hualixil', 'hualixili', b, transitive).  % to see someone (hual- + IXILI)
verb_stem_type(ixili, 'ixili', 'ixil', 'ixili', b, intransitive).  % intransitive entry is needed alongside the existing transitive facts.
verb_stem_type(ixili, 'ixili', 'ixil', 'ixili', b, transitive).  % to see someone (K (I)TTA? variant): quixili
verb_stem_type(iximachoa, 'iximachoa', 'iximacho', 'iximachō', c, transitive).  % pret. without h
verb_stem_type(iximachoa, 'iximachoa', 'iximachoh', 'iximachō', c, transitive).  % to recognize (K IXIMACHOĀ)
verb_stem_type(īximachoa, 'īximachoa', 'īximacho', 'īximachō', c, intransitive).  % intransitive use (ōīximachoqueh)
verb_stem_type(īximachoa, 'īximachoa', 'īximacho', 'īximachō', c, transitive).  % sources oīximachoqueh (long ī)
verb_stem_type(iximati, 'iximati', 'iximat', 'iximati', a1, transitive).  % know (K ĪXIMATI)
verb_stem_type(ixiptlatia, 'ixiptlatiā', 'ixiptlati', 'ixiptlatī', c, transitive).  % IXIPTLATIA 'to represent, stand in for' (denominal from ixiptla, Andrews 31.6 not a headword in Karttunen). The writes the perfective without h.
verb_stem_type(ixmamatiloa, 'ixmamatiloā', 'ixmamatiloh', 'ixmamatilō', c, transitive).  % to confound someone's face/vision; MAMATILOA
verb_stem_type(ixmana, 'hualixmana', 'hualixman', 'hualixmana', b, transitive).  % to await (hual- + IXMANA)
verb_stem_type(ixmana, 'ixmana', 'ixman', 'ixmana', b, transitive).  % to await (K IXMANA)
verb_stem_type(ixmimictia, 'ixmimictiā', 'ixmimictih', 'ixmimicti', c, transitive).  % to dazzle, blind; redup. IXMICTIA
verb_stem_type(ixmoyāhua, 'ixmoyāhua', 'ixmoyāhuac', 'ixmoyāhua', b, intransitive).  % to become confused (ĪX + MO + YĀHUA)
verb_stem_type(ixnahua, 'ixnahua', 'ixnahua', 'ixnahua', a1, intransitive).  % to spread out, extend (K IXNAHU(A))
verb_stem_type(ixpantia, 'ixpantia', 'ixpanti', 'ixpanti', c, transitive).  % to present, put before (K IXPANTIA)
verb_stem_type(ixpantia, 'ixpantiā', 'ixpantih', 'ixpantī', c, transitive).  % to present, reveal (K IXPANTIA)
verb_stem_type(ixpatilia, 'ixpatiliā', 'ixpatilih', 'ixpatili', c, transitive).  % to change/misdirect someone's face; ix 'face' + PATILIA
verb_stem_type(ixpia, 'ixpia', 'ixpix', 'ixpia', b, transitive).  % to keep watch (IX- + PĪA)
verb_stem_type(īxpia, 'īxpia', 'īxpix', 'īxpia', b, transitive).  % to keep watch
verb_stem_type(ixpipia, 'ixpipia', 'ixpipix', 'ixpipia', b, transitive).  % to watch everyone's face (IX- + PIPIA)
verb_stem_type(ixpolihui, 'īxpolihui', 'īxpoliuh', 'īxpolihui', b, intransitive).  % to perish, be ruined (K ĪXPOLIHU(I))
verb_stem_type(ixpoliuh, 'ixpoliuh', 'ixpoliuh', 'ixpoliuh', b, intransitive).  % be destroyed (IX-TLI + POLIHU(I))
verb_stem_type(īxpoliuh, 'īxpoliuh', 'īxpoliuh', 'īxpoliuh', b, intransitive).  % be destroyed (IX-TLI + POLIHU(I), long ī)
verb_stem_type(ixpoloā, 'ixpoloā', 'ixpoloh', 'ixpolō', c, transitive).  % to destroy people
verb_stem_type(ixpopoloa, 'ixpopoloā', 'ixpopoloh', 'ixpopolō', c, transitive).  % to confuse someone's vision; ix 'face' + POPOLOA
verb_stem_type(ixpopoyomictia, 'ixpopoyomictiā', 'ixpopoyomictih', 'ixpopoyomictī', c, transitive).  % to kill treacherously (IXPOPOYOA + MICTIA)
verb_stem_type(ixpopoyoti, 'ixpopoyoti', 'ixpopoyot', 'ixpopoyoti', a1, intransitive).  % to be blinded (IX- + POPOYAUH)
verb_stem_type(ixquetza, 'ixiquetza', 'ixiquetz', 'ixiquetza', b, transitive).  % turn someone's face (IX-TLI + QUETZA)
verb_stem_type(īxtia, 'īxtia', 'īxtia', 'īxtia', a1, intransitive).  % preterit plural īxtia-queh
verb_stem_type(īxtia, 'īxtia', 'īxtih', 'īxti', c, intransitive).  % to emerge, appear (K ĪXTIA)
verb_stem_type(ixtlahua, 'ixtlahua', 'ixtlauh', 'ixtlahua', b, transitive).  % K IXTLAHU(A) to pay
verb_stem_type(ixtlapachteca, 'ixtlapachteca', 'ixtlapachtecac', 'ixtlapachteca', a1, intransitive).  % m-ix-tlapach-teca 'to lie face down, cover one's face by lying down'.
verb_stem_type(ixtlapalhuihui, 'ixtlapalhuihui', 'ixtlapalhuihui', 'ixtlapalhuihui', a1, intransitive).  % to go sideways (IXTLAPAL + HUI)
verb_stem_type(ixtlatia, 'ixtlatiā', 'ixtlati', 'ixtlati', c, transitive).  % level, destroy (FC pret. pl. ixtlati-queh)
verb_stem_type(ixtlatia, 'ixtlatiā', 'ixtlati', 'ixtlatiā', c, transitive).  % pret. without h
verb_stem_type(ixtlatia, 'ixtlatiā', 'ixtlatih', 'ixtlati', c, transitive).  % level, destroy (IX-TLI + TLATIA)
verb_stem_type(ixtlatia, 'ixtlatiā', 'ixtlatih', 'ixtlatī', c, transitive).  % pay (variant of IXTLAHU(A))
verb_stem_type(ixximachoa, 'ixximachoa', 'ixximachoh', 'ixximachō', c, transitive).  % to identify (IX- + XIMACHOA)
verb_stem_type(īxximachoa, 'īxximachoa', 'īxximachoh', 'īxximachō', c, transitive).  % to identify
verb_stem_type(ixzoquihuia, 'ixzoquihuiā', 'ixzoquihuih', 'ixzoquihui', c, transitive).  % to throw mud in someone's eyes; ZOQUIHUIA
verb_stem_type(ixzoquimatoca, 'ixzoquimatoca', 'ixzoquimatocac', 'ixzoquimatoca', a1, transitive).  % to put muddy hands on someone's face; ZOQUITOCA + mā
verb_stem_type(iyolmiqui, 'iyōlmiqui', 'iyōlmic', 'iyōlmiqui', b, intransitive).  % supportive-i variant of YOLMIQU(I)
verb_stem_type(iza, 'iza', 'iza', 'iza', a1, intransitive).  % to wake up
verb_stem_type(izahui, 'izahui', 'izahui', 'izahui', a1, intransitive).  % to be overawed (reflexive use of K IZAHUIA)
verb_stem_type(izahuia, 'izahui', 'izahuih', 'izahui', c, transitive).  % to frighten (K IZAHUIA)
verb_stem_type(izahuia, 'izahuiā', 'izahuih', 'izahuiā', c, transitive).  % to be overawed; frighten (K IZAHUIA)
verb_stem_type(izahuiloa, 'izahuiloā', 'izahuiloh', 'izahuilō', c, intransitive).  % to shout
verb_stem_type(iztlacahui, 'iztlacahui', 'iztlacahuic', 'iztlacahui', b, intransitive).  % to lie (iztlaca + -hui)
verb_stem_type(iztlacahuia, 'iztlacahuiā', 'iztlacahuih', 'iztlacahui', c, transitive).  % to lie to, deceive; IZTLACA- 'false' + -huia
verb_stem_type(lanahuati, 'lanahuati', 'lanahuatih', 'lanahuati', a1, intransitive).  % to give orders
verb_stem_type(laocuya, 'tlaocuya', 'tlaocux', 'tlaocuya', a1, intransitive).  % to be sad, weep (K TLAŌCOY(A))
verb_stem_type(latotoca, 'latotoca', 'latotoca', 'latotoca', a1, intransitive).  % to run
verb_stem_type(laza, 'lāza', 'lāz', 'lāza', b, transitive).  % to throw (allomorph of TLĀZ(A) after huāl-)
verb_stem_type(lāza, 'lāza', 'lāz', 'lāza', a1, transitive).  % TLĀZ(A) after HUĀL- (huāl-lāza)
verb_stem_type(lecahuia, 'lecahuiā', 'lecahuih', 'lecahuiā', c, transitive).  % to bring up (K LECAHUIA)
verb_stem_type(lehua, 'lehua', 'lehuac', 'lehua', b, intransitive).  % to come from, depart (hual-lehua); K EHU(A) variant
verb_stem_type(lemeni, 'lemēni', 'lemēni', 'lemēni', a1, intransitive).  % to burn
verb_stem_type(loloa, 'loloa', 'loloh', 'lolo', c, transitive).  % LOLOĀ gather, bundle
verb_stem_type(maca, 'maca', 'maca', 'maca', a1, transitive).  % to give
verb_stem_type(maca, 'maca', 'maci', 'maca', a1, transitive).  % give (FC pret. maci-)
verb_stem_type(macalaqui, 'macalaqui', 'macalac', 'macalaqui', b, intransitive).  % enter (mo- + ACALAQUI)
verb_stem_type(macalhuitequi, 'macalhuitequi', 'macalhuitec', 'macalhuitequi', b, transitive).  % to strike with the hand (MĀITL + CAL + HUITEQU(I))
verb_stem_type(macalten, 'macalten', 'macalten', 'macalten', a1, transitive).  % to put into boats (MAITL + CAL-LI?)
verb_stem_type(macalten, 'macalten', 'macalten', 'macalten', b, intransitive).  % be put into a boat (mo- + ACALTEMA pret.)
verb_stem_type(macehua, 'macehua', 'maceuh', 'macehua', b, intransitive).  % to deserve (K MACĒHUA)
verb_stem_type(machitia, 'machitiā', 'machitih', 'machiti', c, transitive).  % make known (K MACHITIA)
verb_stem_type(machitia, 'machītiā', 'machītih', 'machītī', c, transitive).  % variant caus. of MAT(I): to inform (K MACHĪTIĀ)
verb_stem_type(machiztia, 'machiztia', 'machizti', 'machizti', c, transitive).  % to announce, find out (K MACHIZTIA)
verb_stem_type(machiztia, 'machiztia', 'machiztiac', 'machiztia', a1, transitive).  % MACHIZTIA with unmarked i
verb_stem_type(machiztia, 'machiztiā', 'machiztiac', 'machiztia', a1, transitive).  % to make known (K MACHIZTIA)
verb_stem_type(machtia, 'machtiā', 'machtih', 'machtiā', c, transitive).  % to teach
verb_stem_type(māhua, 'māhua', 'māhuah', 'māhua', a1, transitive).  % to scold (K MĀHU(A))
verb_stem_type(māhuītequi, 'māhuītequi', 'māhuītec', 'māhuītequi', b, transitive).  % MĀI-TL + HUĪTEQU(I) strike the hands
verb_stem_type(mahuizcui, 'mahuizcui', 'mahuizcui', 'mahuizcui', b, intransitive).  % take fear (K MAHUIZCUITIA)
verb_stem_type(mahuizmachia, 'mahuizmachia', 'mahuizmachi', 'mahuizmachti', c, transitive).  % to honor, make much of (MAHUIZ-TLI + MACHIA)
verb_stem_type(mahuizmacho, 'mahuizmachō', 'mahuizmachō', 'mahuizmachō', a1, intransitive).  % to be honored (nonactive of MAHUIZMACHIA)
verb_stem_type(mahuizmati, 'mahuizmati', 'mahuizmat', 'mahuizmati', a1, transitive).  % to honor (MAHUIZ-TLI + MAT(I))
verb_stem_type(mahuizoa, 'mahuizo', 'mahuizo', 'mahuizo', c, transitive).  % to marvel at (K MAHUIZOA)
verb_stem_type(mahuizoa, 'mahuizoa', 'mahuizo', 'mahuizo', c, transitive).  % to marvel at (K MAHUIZOA, h-less perfective as written)
verb_stem_type(mahuizoa, 'mahuizoa', 'mahuizoh', 'mahuizō', c, transitive).  % to honor, marvel at (K MAHUIZOA)
verb_stem_type(mahuizotia, 'mahuizōtiā', 'mahuizōtih', 'mahuizōti', c, transitive).  % honor (K MAHUIZŌTIA)
verb_stem_type(mahuiztemoa, 'mahuiztemoa', 'mahuiztemoh', 'mahuiztemō', c, transitive).  % to seek honor for someone
verb_stem_type(māhuiztia, 'māhuiztia', 'māhuiztih', 'māhuizti', c, transitive).  % to honor (denom. MAHUIZ-TLI)
verb_stem_type(mahuizzōltia, 'mahuizzōltia', 'mahuizzōltih', 'mahuizzōltī', c, transitive).  % variant of MAHUIZŌTIA
verb_stem_type(mahuizzōtia, 'mahuizzōtia', 'mahuizzōtih', 'mahuizzō', c, transitive).  % hypothetical mahuizzō- (quimahuizzōznequi)
verb_stem_type(mahuizzōtia, 'mahuizzōtia', 'mahuizzōtih', 'mahuizzōtī', c, transitive).  % MAHUIZŌTIA to honor
verb_stem_type(mahuizzotitia, 'mahuizzōtitiā', 'mahuizzōtiti', 'mahuizzōtiti', c, transitive).  % to make someone honored (caus. MAHUIZZŌTIA)
verb_stem_type(mahxiti, 'mahxiti', 'mahxiti', 'mahxiti', a1, intransitive).  % arrive (K MAHXITIA)
verb_stem_type(maiztlacoa, 'maiztlacoa', 'maiztlaco', 'maiztlaco', c, transitive).  % to struggle against (future maiztlacoz)
verb_stem_type(maiztlacoa, 'maiztlacoa', 'maiztlaco', 'maiztlacoa', c, transitive).  % to struggle against (no K headword)
verb_stem_type(malacachoa, 'malacachoa', 'malacacho', 'malacacho', b, transitive).  % to spin something; K MALACACHOA
verb_stem_type(malacachoa, 'malacachoa', 'malacachoh', 'malacachō', c, transitive).  % to wind, twist (K MALACACHOĀ)
verb_stem_type(malihui, 'malihui', 'malihuih', 'malihui', b, intransitive).  % to flourish
verb_stem_type(malo, 'malo', 'maloh', 'malō', c, transitive).  % to take captive (K MALO)
verb_stem_type(maltia, 'maltiā', 'maltih', 'maltī', c, transitive).  % to bathe
verb_stem_type(mama, 'mama', 'mama', 'mama', a1, transitive).  % give (FC variant of MAMACA)
verb_stem_type(mama, 'mama', 'mamah', 'mama', a1, transitive).  % to carry on the back (K MAMAH)
verb_stem_type(mama, 'mama', 'maman', 'mama', a1, transitive).  % K MAMA to carry on the back
verb_stem_type(mama, 'mama', 'man', 'mama', a1, transitive).  % to carry; K MAMA
verb_stem_type(mama, 'mamā', 'mamā', 'mamā', a1, transitive).  % give (FC long ā variant)
verb_stem_type(mama, 'māmā', 'mamah', 'māmā', d, transitive).  % to carry on the back (K MĀMĀ, pret. MAMAH)
verb_stem_type(mamaca, 'mamaca', 'mamacac', 'mamaca', a1, transitive).  % give (K MAMACA)
verb_stem_type(mamaiyahua, 'mamaiyahua', 'mamaiyahua', 'mamaiyahua', a1, intransitive).  % to go carrying on the back ( ommamaiyahuaqueh)
verb_stem_type(mamalacachoa, 'mamalacachoa', 'mamalacacho', 'mamalacachoa', b, transitive).  % to spin something; redup. MALACACHOA
verb_stem_type(mamaltia, 'mamaltia', 'mamaltih', 'mamalti', c, transitive).  % to take captive (K MAMALTIĀ)
verb_stem_type(mamana, 'mamana', 'maman', 'mamana', a1, intransitive).  % to be spread out (redup. MAN(A))
verb_stem_type(mamana, 'mamana', 'mamana', 'mamana', a1, transitive).  % to be spread out; K MAMANA
verb_stem_type(mamauhtia, 'mamauhtia', 'mamauhtih', 'mamauhti', c, transitive).  % to frighten (K MAMAUHTIĀ)
verb_stem_type(mamauhtia, 'mamauhtiā', 'mamauhti', 'mamauhtī', a1, transitive).  % redup. MAUHTIA; perfective without -h
verb_stem_type(mamauhtia, 'mamauhtiā', 'mamauhtih', 'mamauhti', c, transitive).  % to frighten (redup. MAUHTIA)
verb_stem_type(mamayahua, 'mamayahua', 'mamayahuac', 'mamayahua', b, intransitive).  % to be carried
verb_stem_type(mamayahua, 'mamayahua', 'mamayahuac', 'mamayahua', b, transitive).  % to carry something (transitive use)
verb_stem_type(mamayahui, 'mamayahui', 'mamayahui', 'mamayahui', b, transitive).  % to carry (stem before -to)
verb_stem_type(man, 'mani', 'man', 'mani', b, intransitive).  % to be located (K MAN(I))
verb_stem_type(mana, 'mana', 'man', 'mana', b, transitive).  % to lay down (K MAN(A))
verb_stem_type(mana, 'mana', 'mana', 'mana', a1, transitive).  % to spread out; K MAN(A)
verb_stem_type(mana, 'māna', 'man', 'māna', a1, transitive).  % to offer (K MANA)
verb_stem_type(mani, 'mani', 'man', 'mani', b, transitive).  % to be located; reflexive moman 'set oneself' (K MAN(I))
verb_stem_type(mani, 'mani', 'manca', 'mani', b, intransitive).  % to lie, extend (K MAN(I), pret. MANCA)
verb_stem_type(manilia, 'maniliā', 'manili', 'maniliā', c, transitive).  % to place on someone's arm/hand (MAN(A) + applic.)
verb_stem_type(mantia, 'mantia', 'mantih', 'mantia', c, intransitive).  % lie, be located (MANI + -tiā)
verb_stem_type(mapilhuia, 'mapilhuia', 'mapilhuih', 'mapilhuiā', c, transitive).  % to point at (MĀITL + PILHUI?)
verb_stem_type(mapiloa, 'mapiloa', 'mapiloh', 'mapilō', c, transitive).  % to spread out the arms (MĀITL + PILOA)
verb_stem_type(maquetztiteca, 'maquetztiteca', 'maquetztitecac', 'maquetztiteca', a1, intransitive).  % ma-quetzti-teca 'to lie face up/prone' (the text has an intransitive use).
verb_stem_type(maquetztitecaia, 'maquetztitecaia', 'maquetztitecac', 'maquetztitecaia', a1, intransitive).  % to raise the head
verb_stem_type(maquia, 'maquia', 'maquic', 'maquia', a1, transitive).  % to put on a garment; variant with m- of AQUIA
verb_stem_type(maquilia, 'maquiliā', 'maquilih', 'maquili', c, transitive).  % give to someone (K MAQUILIA, applic. MACA)
verb_stem_type(maquixtia, 'maquixtiā', 'maquixti', 'maquixti', c, transitive).  % MAQUIXTIA save
verb_stem_type(maquixtia, 'maquīxtiā', 'maquīxtih', 'maquīxtī', c, transitive).  % to save (K MAQUĪXTIA)
verb_stem_type(mati, 'mati', 'ma', 'mati', a1, transitive).  % to know, find out (K MAT(I); irregular pret. MAH, h lost)
verb_stem_type(mati, 'mati', 'mat', 'mati', a1, transitive).  % to know
verb_stem_type(mati, 'mati', 'mati', 'mati', a1, transitive).  % know (K MAT(I); FC pret. mati-)
verb_stem_type(matocti, 'matocti', 'matocti', 'matocti', b, intransitive).  % go in single file (FC; cf. TOCA)
verb_stem_type(mauhcahui, 'mauhcahui', 'mauhcahuic', 'mauhcahui', b, intransitive).  % to be afraid (MAUHCĀHUI)
verb_stem_type(mauhcaquiza, 'mauhcaquiza', 'mauhcaquiz', 'mauhcaquiza', b, intransitive).  % to come out in alarm (MAUHC(A) + QUIZA)
verb_stem_type(mauhcatlaloa, 'mauhcatlaloa', 'mauhcatlaloh', 'mauhcatlalō', c, intransitive).  % to flee in fear
verb_stem_type(mauhcatlaloa, 'mauhcatlaloa', 'mauhcatlaloh', 'mauhcatlalō', c, transitive).  % reflexive/transitive counterpart
verb_stem_type(mauhti, 'mauhti', 'mauhti', 'mauhti', a1, intransitive).  % fear (K MAUHTI)
verb_stem_type(mauhtia, 'mauhti', 'mauhtih', 'mauhti', c, transitive).  % to frighten; be afraid (K MAUHTIA)
verb_stem_type(mauhtia, 'mauhtiā', 'mauhti', 'mauhti', c, transitive).  % to frighten (K MAUHTIĀ)
verb_stem_type(mauhtia, 'mauhtiā', 'mauhti', 'mauhtiā', c, transitive).  % to fear; frighten (redup. base of K MAHMAUHTIA)
verb_stem_type(mauhtia, 'mauhtiā', 'mauhtih', 'mauhtī', a1, transitive).  % K MAUHTIA vt to fear
verb_stem_type(maxiltia, 'maxiltia', 'maxilti', 'maxilti', c, transitive).  % to complete (K MAXĪLTIA)
verb_stem_type(maxiti, 'maxiti', 'maxiti', 'maxiti', a1, intransitive).  % arrive (fused reflex. AHCI)
verb_stem_type(maxiti, 'maxiti', 'maxitic', 'maxiti', b, intransitive).  % to arrive (K MAXITI)
verb_stem_type(mayahui, 'mayahui', 'mayauh', 'mayahui', b, transitive).  % to hurl, scatter (K MAYAHU(I))
verb_stem_type(mayāna, 'mayāna', 'mayāna', 'mayāna', a1, intransitive).  % be hungry (K MAYĀNA)
verb_stem_type(mazoa, 'mazoa', 'mazoh', 'mazō', c, transitive).  % to spread out the arms (MĀITL + ZOA?)
verb_stem_type(mehua, 'mehua', 'meuh', 'mehua', b, intransitive).  % to rise (MO- + EHUA)
verb_stem_type(mehuati, 'mehuati', 'mehuatic', 'mehuati', a1, intransitive).  % to rise up (ĒHUA + -ti)
verb_stem_type(melahua, 'melāhua', 'melāuh', 'melāhua', b, intransitive).  % to go straight (K MELĀHU(A))
verb_stem_type(melāhua, 'melāhua', 'melauh', 'melāhua', b, transitive).  % to straighten (FC pret. melauh); K MELĀHU(A)
verb_stem_type(melāhua, 'melāhua', 'melāhuah', 'melāhuā', b, intransitive).  % MELĀHU(A) go straight
verb_stem_type(melāhua, 'melāhuā', 'melāhuh', 'melāhuā', b, intransitive).  % to go straight (K MELĀHU(A); intransitive use)
verb_stem_type(melāhua, 'melāhuā', 'melāhuh', 'melāhuā', b, transitive).  % MELĀHU(A) 'to straighten, go straight'; perfective melāhuh (cf. chīhua > chīuh).
verb_stem_type(melāhuac, 'melāhuac', 'melāhuac', 'melāhuac', a1, intransitive).  % to be straight/true
verb_stem_type(mellacuahua, 'mellacuahua', 'mellacuauh', 'mellacuahua', b, transitive).  % anoint oneself (MELLI + CUAHUA?); no K headword
verb_stem_type(mellelquixtia, 'mellelquixtia', 'mellelquixti', 'mellelquixti', c, intransitive).  % to be driven out (reflexive)
verb_stem_type(mellelquixtia, 'mellelquixtia', 'mellelquixti', 'mellelquixti', c, transitive).  % to drive out (perfective as written)
verb_stem_type(mellelquixtia, 'mellelquixtia', 'mellelquixtih', 'mellelquixti', c, transitive).  % to drive out (MELLEL + QUĪXTIĀ)
verb_stem_type(metzhuihuitequi, 'metzhuihuitequi', 'metzhuihuitec', 'metzhuihuitequi', b, transitive).  % METZ-TLI + redup. HUĪTEQU(I)
verb_stem_type(metzhuitequi, 'metzhuitequi', 'metzhuitec', 'metzhuitequi', a1, transitive).  % strike on the leg (metz- + huitequi)
verb_stem_type(metzhuītequi, 'metzhuītequi', 'metzhuītec', 'metzhuītequi', b, transitive).  % METZ-TLI + HUĪTEQU(I) strike the thighs
verb_stem_type(micaltia, 'micaltia', 'micaltih', 'micalti', c, intransitive).  % to fight (K MICALTIĀ?)
verb_stem_type(micca, 'micca', 'micca', 'micca', a1, intransitive).  % to die (redup. MIC?) duplicate avoided
verb_stem_type(micoa, 'micoa', 'micoa', 'micoa', a1, intransitive).  % there is dying, people die; nonact. of MIQU(I)
verb_stem_type(micoa, 'micoa', 'micoac', 'micoa', a1, intransitive).  % to die (MIC(O)A)
verb_stem_type(micoa, 'micoa', 'micoac', 'micoā', b, intransitive).  % die (FC micoa)
verb_stem_type(micoa, 'micoa', 'micoh', 'micō', c, intransitive).  % there is death (K MICOĀ)
verb_stem_type(micoa, 'micohua', 'micohuac', 'micohuā', b, intransitive).  % die (K MICOHUA)
verb_stem_type(micohua, 'micohua', 'micoac', 'micohua', a1, intransitive).  % for there to be dying (K MICOHUA)
verb_stem_type(micqui, 'micqui', 'mic', 'micqui', b, intransitive).  % to die (variant of MIQU(I))
verb_stem_type(mictia, 'mictia', 'micti', 'micti', c, transitive).  % to kill (pret. micti- as written)
verb_stem_type(mictia, 'mictia', 'mictih', 'micti', c, transitive).  % to kill (K MICTIĀ)
verb_stem_type(mictia, 'mictiā', 'micti', 'micti', c, transitive).  % kill (FC pret. micti-)
verb_stem_type(mictia, 'mictiā', 'mictih', 'micti', c, transitive).  % kill (K MICTIA)
verb_stem_type(mictia, 'mictiā', 'mictih', 'mictī', c, transitive).  % K MICTIA to kill
verb_stem_type(micuania, 'micuania', 'micuani', 'micuania', b, intransitive).  % to be troubled (MICUANIA)
verb_stem_type(mihtoa, 'mihtoa', 'mihtoh', 'mihtō', c, intransitive).  % to be said (m- + IHTOĀ)
verb_stem_type(mihtotia, 'mihtotiā', 'mihtotih', 'mihtotī', c, intransitive).  % to dance
verb_stem_type(mimiqui, 'mimiqui', 'mimic', 'mimiqui', b, intransitive).  % to die (redup. of K MIGQUI)
verb_stem_type(mina, 'mina', 'min', 'mina', a1, intransitive).  % shoot arrows (intransitive use)
verb_stem_type(mina, 'mina', 'min', 'mina', a1, transitive).  % to shoot (K MINA)
verb_stem_type(mina, 'mina', 'minac', 'mina', a1, transitive).  % to shoot (K MĪNA)
verb_stem_type(mina, 'mīna', 'mīna', 'mīna', a1, transitive).  % to kill (people); K MĪNA
verb_stem_type(mīna, 'mīna', 'mīn', 'mīna', a1, transitive).  % to shoot (K MĪNA)
verb_stem_type(mīnāya, 'mīnāya', 'mīnāx', 'mīnāya', b, transitive).  % to shoot (variant)
verb_stem_type(miqui, 'miqui', 'mic', 'miqui', b, intransitive).  % to die
verb_stem_type(miquili, 'miquili', 'miquili', 'miquili', b, intransitive).  % to die (applicative of MIQU(I); momiquili)
verb_stem_type(miquili, 'miquili', 'miquili', 'miquili', b, transitive).  % reflexive/transitive counterpart (momiquili)
verb_stem_type(miquiti, 'miquiti', 'miquiti', 'miquiti', a1, intransitive).  % to be about to die (Miqui + -ti)
verb_stem_type(miquiznahuatia, 'miquiznahuatia', 'miquiznahuati', 'miquiznahuati', c, transitive).  % to order someone killed (MIQUIZ-TLI + NAHUATIA)
verb_stem_type(mitonia, 'mitonia', 'mitonia', 'mitonia', a1, intransitive).  % to sweat; K ITONIA
verb_stem_type(mitotia, 'mitōtia', 'mitōti', 'mitōti', c, intransitive).  % variant of MIHTŌTIA dance
verb_stem_type(mīxca, 'mīxca', 'mīxca', 'mīxca', a1, intransitive).  % to be born? (cf. K MĪX?)
verb_stem_type(mīxcahuia, 'mīxcahuia', 'mīxcahuih', 'mīxcahui', c, intransitive).  % to be born (MĪX + CĀHUI?)
verb_stem_type(mixtlapachtecaia, 'mixtlapachtecaia', 'mixtlapachtecac', 'mixtlapachtecaia', a1, intransitive).  % to lie face down
verb_stem_type(mocaqui, 'mocaqui', 'mocac', 'mocaqui', b, intransitive).  % to be heard, obeyed (nonact. CAQU(I))
verb_stem_type(mocehuetzinoa, 'mocehuetzinoa', 'mocehuetzino', 'mocehuetzino', c, intransitive).  % be quiet (mo- + CEHUETZINOA)
verb_stem_type(mocehuilia, 'mocehuiliā', 'mocehuilih', 'mocehuili', c, transitive).  % quiet oneself (mo- + CEHUILIA)
verb_stem_type(mochiyeltia, 'mochiyeltiā', 'mochiyelti', 'mochiyelti', c, transitive).  % to await for oneself (MO- + CHIYELTIA)
verb_stem_type(mocihuia, 'mocihuia', 'mocihuih', 'mocihuiā', c, intransitive).  % to be perturbed
verb_stem_type(mocihuia, 'mocihuia', 'mocihuih', 'mocihuiā', c, transitive).  % reflexive/transitive counterpart
verb_stem_type(mocniuhtia, 'mocniuhtiā', 'mocniuhti', 'mocniuhti', c, transitive).  % to make friends with (MO- + CNĪUHTIA)
verb_stem_type(mocolehua, 'mocolehua', 'mocoleuh', 'mocolehua', b, intransitive).  % to be taken off (MO + COLEHUA)
verb_stem_type(mocōlhua, 'mocōlhua', 'mocōluh', 'mocōlhua', b, intransitive).  % to be removed (MO + CŌLHU(A)?)
verb_stem_type(mocototztlālia, 'mocototztlālia', 'mocototztlāli', 'mocototztlāli', c, intransitive).  % to set oneself in line (pret. as written)
verb_stem_type(mocototztlālia, 'mocototztlālia', 'mocototztlālih', 'mocototztlāli', c, intransitive).  % to set oneself in a line (MO + COTOTZ + TLĀLIĀ)
verb_stem_type(mocuepa, 'mocuepa', 'mocuep', 'mocuepa', b, intransitive).  % to turn back (MO + CUEP(A))
verb_stem_type(molini, 'molini', 'molin', 'molini', b, intransitive).  % move (K MOLĪN(I))
verb_stem_type(moma, 'moma', 'moma', 'moma', a1, intransitive).  % to place oneself
verb_stem_type(momachitia, 'momachitiā', 'momachitih', 'momachiti', c, transitive).  % know oneself (mo- + MACHITIA)
verb_stem_type(momana, 'momana', 'moman', 'momana', b, intransitive).  % to spread out, come to rest (K MAN(A))
verb_stem_type(momaquilia, 'momaquiliā', 'momaquilih', 'momaquili', c, transitive).  % give oneself (mo- + MAQUILIA)
verb_stem_type(momauhcatlaloa, 'momauhcatlaloa', 'momauhcatlaloh', 'momauhcatlaloa', c, intransitive).  % m-o- + mauhca 'fear' + TLALOĀ 'run'; reflexive is lexicalized
verb_stem_type(momauhti, 'momauhti', 'momauhti', 'momauhti', a1, intransitive).  % be afraid (mo- + MAUHTI)
verb_stem_type(momiquili, 'momiquili', 'momiquil', 'momiquili', b, intransitive).  % die (mo- + MIQUI)
verb_stem_type(momoloca, 'momoloca', 'momolocac', 'momoloca', a1, intransitive).  % to bubble (K MOMOLOCA)
verb_stem_type(momomoloca, 'momomoloca', 'momomolocac', 'momomoloca', a1, intransitive).  % reduplicated MOMOLOCA
verb_stem_type(monacacicteca, 'monacacicteca', 'monacacictecac', 'monacacicteca', a1, intransitive).  % to stretch out on one side
verb_stem_type(monequi, 'monequi', 'monequic', 'monequi', b, intransitive).  % be necessary (K MONEQU(I))
verb_stem_type(motechtia, 'motechtia', 'motechti', 'motechtī', c, transitive).  % same, perfective without -h as written
verb_stem_type(motechtia, 'motechtia', 'motechtih', 'motechtī', c, transitive).  % reflexive of TECHTIĀ 'take possession for oneself'
verb_stem_type(motēma, 'motēma', 'motēmac', 'motēma', a1, intransitive).  % to come down (MO + TEMŌ)
verb_stem_type(motenēhua, 'tenēhua', 'tenēuh', 'tenēhua', b, transitive).  % to mention (K TENĒHU(A))
verb_stem_type(motla, 'motla', 'motlac', 'motla', a1, transitive).  % to stone, shoot at (K MOTLA)
verb_stem_type(motlālia, 'motlālia', 'motlāli', 'motlāli', c, intransitive).  % to settle (MO + TLĀLIĀ)
verb_stem_type(motlālia, 'motlālia', 'motlālih', 'motlāli', c, intransitive).  % to set oneself down, settle (MO + TLĀLIĀ)
verb_stem_type(motlaloa, 'motlaloa', 'motlali', 'motlaloa', b, intransitive).  % to run (K MOTLALOĀ; preterit motlali as written)
verb_stem_type(motlaloa, 'motlaloā', 'motlaloh', 'motlalō', c, intransitive).  % to run
verb_stem_type(motlapielilia, 'motlapieliliā', 'motlapielili', 'motlapieliliā', c, transitive).  % to guard it for oneself (c-on-mo-tlapielilia)
verb_stem_type(motlatetextia, 'motlatetextia', 'motlatetextia', 'motlatetextia', a1, transitive).  % to shoot to dust (mo-tla-TETEXTIA, lexicalized)
verb_stem_type(motlati, 'motlati', 'motlati', 'motlati', a1, intransitive).  % hide oneself (mo- + TLATI)
verb_stem_type(motlatlauhtilia, 'motlatlauhtiliā', 'motlatlauhtili', 'motlatlauhtiliā', c, transitive).  % to address someone for oneself
verb_stem_type(motlatlauhtilia, 'motlatlauhtiliā', 'motlatlauhtilih', 'motlatlauhtili', c, transitive).  % pray (reflexive stem of TLAHTLAUHTILIĀ)
verb_stem_type(motlaza, 'motlaza', 'motlaz', 'motlaza', b, transitive).  % to throw oneself/them (MO- + TLAZ(A))
verb_stem_type(motolinia, 'motoliniā', 'motolinih', 'motoliniā', c, intransitive).  % to suffer (K MOTOLINIA)
verb_stem_type(motōnaltia, 'motōnaltia', 'motōnalti', 'motōnaltī', c, transitive).  % same, perfective without -h as written
verb_stem_type(motōnaltia, 'motōnaltia', 'motōnaltih', 'motōnaltī', c, transitive).  % reflexive of TŌNALTIĀ 'assign to oneself'
verb_stem_type(mottitia, 'mottitia', 'mottitih', 'mottitiā', c, transitive).  % to show to one another (MO- + ITTITIA)
verb_stem_type(motzahtzilia, 'motzahtzilia', 'motzahtzilih', 'motzahtzili', c, intransitive).  % to shout to one another (MO + TZAHTZILIA)
verb_stem_type(motzotzopontitlaza, 'motzotzopontitlaza', 'motzotzopontitlaz', 'motzotzopontitlaza', a1, intransitive).  % to be struck down together (MO + TZOTZOPON + TITLAZA)
verb_stem_type(moyahua, 'moyāhua', 'moyāhuac', 'moyāhua', b, transitive).  % to spread, disperse; K MOYĀHU(A)
verb_stem_type(nacayōtia, 'nacaiōtia', 'nacaiōtih', 'nacaiōtī', c, transitive).  % variant, y written i
verb_stem_type(nacayōtia, 'nacayōtia', 'nacayōtih', 'nacayōtī', c, transitive).  % NACAYŌTIA to make flesh
verb_stem_type(nacazcoca, 'nacazcoca', 'nacazcoca', 'nacazcoca', a1, intransitive).  % listen (NACAZ-TLI + CAQUI)
verb_stem_type(nahua, 'nahua', 'nahuac', 'nahua', a1, intransitive).  % to speak, utter a sound; K NAHUA
verb_stem_type(nāhuālettia, 'nāhuālettia', 'nāhuālettih', 'nāhuāletti', c, transitive).  % to spy on people
verb_stem_type(nāhuālitta, 'nāhuālitta', 'nāhuālitta', 'nāhuālitta', a1, transitive).  % to spy on people (NĀHUALLI + ITTA)
verb_stem_type(nāhuālittia, 'nāhuālittia', 'nāhuālittih', 'nāhuālitti', c, transitive).  % to spy on people (NĀHUALLI + ITTIA)
verb_stem_type(nāhuālpoloa, 'nāhuālpoloa', 'nāhuālpoloh', 'nāhuālpolō', c, transitive).  % to deceive people (NĀHUALLI + POLOĀ)
verb_stem_type(nahualquiza, 'nahualquīza', 'nahualquīz', 'nahualquīza', b, intransitive).  % to emerge secretly; K NAHUALQUĪZ(A)
verb_stem_type(nahuati, 'nahuati', 'nahuati', 'nahuati', b, transitive).  % command (FC pret. of NAHUATIĀ)
verb_stem_type(nahuati, 'nāhuati', 'nāhuat', 'nāhuati', b, intransitive).  % speak Nahuatl (K NĀHUAT(I))
verb_stem_type(nāhuati, 'nāhuati', 'nāhuatih', 'nāhuati', a1, intransitive).  % to speak, order (K NĀHUATI)
verb_stem_type(nahuatia, 'nahuatia', 'nahuati', 'nahuati', c, transitive).  % to order someone (K NAHUATIĀ)
verb_stem_type(nahuatia, 'nahuatia', 'nahuati', 'nahuatī', c, transitive).  % same, perfective without -h as written
verb_stem_type(nahuatia, 'nahuatia', 'nahuatih', 'nahuati', c, transitive).  % to command, warn (K NĀHUATIĀ)
verb_stem_type(nahuatia, 'nahuatia', 'nahuatih', 'nahuatī', c, transitive).  % K NAHUATIA to command
verb_stem_type(nahuatia, 'nahuatiā', 'nahuati', 'nahuati', c, transitive).  % NAHUATIĀ order, command
verb_stem_type(nahuatia, 'nahuatiā', 'nahuatih', 'nahuati', c, transitive).  % command (K NAHUATIĀ)
verb_stem_type(nahuatia, 'nāhuatiā', 'nāhuatih', 'nāhuati', c, transitive).  % command (FC long ā)
verb_stem_type(nāhuatlahtoa, 'nāhuatlahtōa', 'nāhuatlahtoh', 'nāhuatlahtō', c, intransitive).  % to speak Nahuatl
verb_stem_type(nahuatlahtotia, 'nāhuatlahtotia', 'nāhuatlahtotih', 'nāhuatlahtoti', c, intransitive).  % interpret (NAHUATLAHTOA + -tia)
verb_stem_type(nāhuatlahtotia, 'nāhuatlahtotiā', 'nāhuatlahtotih', 'nāhuatlahtotī', c, intransitive).  % to interpret, speak Nahuatl for others
verb_stem_type(namaca, 'namaca', 'namaca', 'namaca', a1, transitive).  % to sell
verb_stem_type(namicoa, 'namicoa', 'namicoh', 'namicō', c, transitive).  % to meet, be a match for (NĀMIQU(I) + -OA)
verb_stem_type(nāmicti, 'nāmicti', 'nāmictic', 'nāmicti', a1, transitive).  % to go to meet (NĀMIQU(I) + -ti; quinnamictiuh)
verb_stem_type(nāmictia, 'nāmictiā', 'nāmictih', 'nāmictī', c, transitive).  % to meet someone
verb_stem_type(namictoca, 'nāmictoca', 'nāmictocac', 'nāmictoca', a1, transitive).  % face, go to meet (NĀMIQUI + TOCA)
verb_stem_type(namiqui, 'namiqui', 'namic', 'namiqui', b, transitive).  % to meet, find (K NĀMIQU(I))
verb_stem_type(namiqui, 'nāmiqui', 'nāmic', 'nāmiqui', b, transitive).  % to meet (K NĀMIQU(I))
verb_stem_type(namoia, 'namoia', 'namoia', 'namoia', a1, transitive).  % to capture (K NĀMOIĀ?)
verb_stem_type(namoxqueh, 'namoxqueh', 'namox', 'namoxqueh', a1, intransitive).  % to surrender? (cf. NAMOIA)
verb_stem_type(namoxtihui, 'namoxtihui', 'namoxtiuh', 'namoxtihui', b, intransitive).  % to snatch things
verb_stem_type(nāmoya, 'nāmoya', 'nāmox', 'nāmoya', b, transitive).  % to plunder (K NĀMOY(A))
verb_stem_type(nāmoya, 'nāmoya', 'nāmox', 'nāmoye', b, transitive).  % short future stem (quinnāmoyezqueh)
verb_stem_type(nāmoyelō, 'nāmoyelō', 'nāmoyeloh', 'nāmoyelō', c, transitive).  % to plunder (NĀMOY(A) + -lō)
verb_stem_type(nanquilia, 'nanquilia', 'nanquili', 'nanquili', c, transitive).  % answer (FC short variant of NĀNQUILIĀ)
verb_stem_type(nanquilia, 'nanquiliā', 'nanquili', 'nanquiliā', c, transitive).  % to answer someone (K NĀNQUILIĀ)
verb_stem_type(nanquilia, 'nanquiliā', 'nanquilih', 'nanquili', c, transitive).  % K NANQUILIĀ to answer someone
verb_stem_type(nanquilia, 'nānquilia', 'nānquilih', 'nānquili', c, transitive).  % to answer someone (K NĀNQUILIA)
verb_stem_type(nanquilia, 'nānquiliā', 'nānquili', 'nānquili', c, transitive).  % to answer (K NĀNQUILIĀ; sources pret. nānquili-)
verb_stem_type(nanquilia, 'nānquiliā', 'nānquilih', 'nānquili', c, transitive).  % answer (K NĀNQUILIĀ)
verb_stem_type(nanquilia, 'nānquiliā', 'nānquilih', 'nānquiliā', c, transitive).  % to answer (K NĀNQUILIĀ)
verb_stem_type(nānquilia, 'nānquilia', 'nānquili', 'nānquili', c, transitive).  % to answer (perfective as written)
verb_stem_type(necalihua, 'necalihua', 'necaliuh', 'necalihua', b, intransitive).  % to gather together (NE + CALIHUA?)
verb_stem_type(nechicāhua, 'nechicāhua', 'nechicāhuac', 'nechicāhua', b, intransitive).  % NECHICĀHU(A) be strengthened
verb_stem_type(nechicoa, 'nechicoā', 'nechico', 'nechicō', c, transitive).  % same, perfective without -h as written
verb_stem_type(nechicoa, 'nechicoā', 'nechicoh', 'nechicō', c, transitive).  % K NECHICOĀ to collect
verb_stem_type(nechicōya, 'nechicōya', 'nechicōx', 'nechicōya', b, intransitive).  % to assemble (K NECHICŌY(A))
verb_stem_type(nechicōya, 'nechicōya', 'nechicōx', 'nechicōya', b, transitive).  % reflexive/transitive counterpart
verb_stem_type(neci, 'nez', 'nez', 'nez', b, intransitive).  % to appear (pret. nēz; sources nēz)
verb_stem_type(neci, 'nēc', 'nēc', 'nēci', b, intransitive).  % nēci + -ya surfaces as nēcia
verb_stem_type(neci, 'nēci', 'nēc', 'nēci', b, intransitive).  % to appear
verb_stem_type(neci, 'nēz', 'nēz', 'nēz', b, intransitive).  % long-vowel variant (nēz, nēzqueh)
verb_stem_type(necuēpa, 'necuēpa', 'necuēp', 'necuēpa', b, transitive).  % to turn back, return something
verb_stem_type(necuicuiti, 'necuicuiti', 'necuicuiti', 'necuicuiti', a1, intransitive).  % to be thunderstruck (NE + CUICUITI)
verb_stem_type(necuiloa, 'necuiloā', 'necuiloh', 'necuilō', c, transitive).  % to bend, curve (K NECUILOĀ)
verb_stem_type(necuitlahuia, 'necuitlahuiā', 'necuitlahuih', 'necuitlahui', c, transitive).  % worry (K NECUITLAHUIA)
verb_stem_type(nehnemi, 'nēhnemi', 'nēhnen', 'nēhnemi', b, intransitive).  % to walk around
verb_stem_type(nehnemi, 'nēhnemi', 'nēhnēn', 'nēhnemi', b, intransitive).  % to go about (K NEHNEM(I); pret. NĒHNĒN as written)
verb_stem_type(nehuehcāntlamati, 'nehuehcāntlamati', 'nehuehcāntlamat', 'nehuehcāntlamati', a1, intransitive).  % to find out by comparison (NEHUEHCĀN + TLAMATI)
verb_stem_type(nelchihua, 'nelchihua', 'nelchīuh', 'nelchihua', b, transitive).  % to believe (NEL- + CHĪHU(A))
verb_stem_type(nelhuia, 'nelhuia', 'nelhuih', 'nelhui', c, transitive).  % to paddle (K NELHUIA)
verb_stem_type(nelhuihuitia, 'nelhuihuitia', 'nelhuihuitih', 'nelhuihuitiā', c, transitive).  % to pole a boat (NELHUI + -huia)
verb_stem_type(neloa, 'neloa', 'nelo', 'neloa', c, transitive).  % to mix (K NELOA)
verb_stem_type(nelotoca, 'nelotoca', 'nelotoc', 'nelotoca', a1, transitive).  % to pursue (pret. nelotoc as written)
verb_stem_type(nelotoca, 'nelotoca', 'nelotoc', 'nelotoca', b, transitive).  % to pursue (class B pret. nelotoc)
verb_stem_type(nelotoca, 'nēlotoca', 'nēlotoca', 'nēlotoca', a1, transitive).  % to pursue (TĒ? + LOTOCA)
verb_stem_type(neltilia, 'neltilia', 'neltilih', 'neltili', c, transitive).  % to verify (K NELTILIĀ)
verb_stem_type(nemachtia, 'nemachtiā', 'nemachtih', 'nemachti', c, transitive).  % to accustom, prepare (K NEMACHTIĀ)
verb_stem_type(nemi, 'nemi', 'nen', 'nemi', b, intransitive).  % to walk, live
verb_stem_type(nemilia, 'nemilia', 'nemili', 'nemiliā', c, transitive).  % h-less perfective (quinemilique)
verb_stem_type(nemilia, 'nemilia', 'nemilih', 'nemili', c, transitive).  % to contemplate (K NEMILIA)
verb_stem_type(nemilia, 'nemilia', 'nemilih', 'nemiliā', c, transitive).  % to consider (K NEMILIA)
verb_stem_type(nemilia, 'nemiliā', 'nemilih', 'nemili', c, transitive).  % to consider (K NEMILIĀ)
verb_stem_type(nemitia, 'nemītia', 'nemīti', 'nemīti', c, transitive).  % make live (FC pret. nemīti-)
verb_stem_type(nemitia, 'nemītia', 'nemītih', 'nemīti', c, transitive).  % make live (NEMI + -tia)
verb_stem_type(nenacahuia, 'nenacahuia', 'nenacahuih', 'nenacahui', c, intransitive).  % to be dazed (redup. NACA?)
verb_stem_type(nenamicqui, 'nenamicqui', 'nenamic', 'nenamicqui', a1, intransitive).  % to meet one another (NE + NĀMIQU(I))
verb_stem_type(nenca, 'nenca', 'nenca', 'nenca', a1, intransitive).  % to live, exist (K NENCA)
verb_stem_type(nenecihui, 'nenecihui', 'nenecihuh', 'nenecihui', b, intransitive).  % to sniff, smell; redup. NECIHU(I)
verb_stem_type(nenectia, 'nenectiā', 'nenecti', 'nenecti', c, transitive).  % to offer various things (NENECTIA)
verb_stem_type(nenemachoc, 'nenemachoc', 'nenemachoc', 'nenemachoc', a1, intransitive).  % to convalesce
verb_stem_type(nenemia, 'nenemia', 'nenen', 'nenemia', b, intransitive).  % to walk about (redup. NEMI)
verb_stem_type(nenemoa, 'nehnemohua', 'nehnemohuac', 'nehnemohuā', b, intransitive).  % go about (K NEHNEMOHUA)
verb_stem_type(nenemoa, 'nenemoa', 'nenemoac', 'nenemoā', b, intransitive).  % go about (FC nenemoa)
verb_stem_type(nēnenecihui, 'nēnenecihui', 'nēnenecihuh', 'nēnenecihui', b, intransitive).  % redup. nenecihui
verb_stem_type(nenequi, 'nenequi', 'nenequic', 'nenequi', b, transitive).  % to pretend, imagine (redup. NEQU(I))
verb_stem_type(nenequiltia, 'nenequiltiā', 'nenequilti', 'nenequilti', c, transitive).  % to offer various things (NENEQUILTIA)
verb_stem_type(nenotzallani, 'nenotzallani', 'nenotzallan', 'nenotzallani', a1, transitive).  % nē-notza 'go summoning';, no K headword
verb_stem_type(nenqui, 'nenqui', 'nenqui', 'nenqui', a1, intransitive).  % to be dependent, live in vain
verb_stem_type(nentlamatia, 'nentlamatiā', 'nentlamatih', 'nentlamatī', c, intransitive).  % to be anxious (NĒN- + TLAMATI)
verb_stem_type(nepanhui, 'nepanhui', 'nepanhui', 'nepanhui', b, intransitive).  % to line up (NEPANHUI)
verb_stem_type(nepanhui, 'nepanhui', 'nepanhui', 'nepanhui', b, transitive).  % to line someone up (transitive)
verb_stem_type(nepanixtia, 'nepanixtiā', 'nepanixtih', 'nepanixtī', c, intransitive).  % to come together
verb_stem_type(nepanixtinemi, 'nepanixtinemi', 'nepanixtinen', 'nepanixtinemi', b, intransitive).  % go face to face (nepan + ix + nemi)
verb_stem_type(nepanoa, 'nepanoā', 'nepanoh', 'nepanō', c, transitive).  % to join, come together (K NEPANOĀ)
verb_stem_type(nepechtequilia, 'nepechtequiliā', 'nepechtequilih', 'nepechtequili', c, transitive).  % bow down (PECHTEQUILIA)
verb_stem_type(nequi, 'nequi', 'nec', 'nequi', b, transitive).  % to want
verb_stem_type(nequiltia, 'nequiltiā', 'nequilti', 'nequilti', c, transitive).  % to make someone want (K NEQUILTIĀ)
verb_stem_type(netepehualo, 'netepehualo', 'netepehualo', 'netepehualo', a1, intransitive).  % everyone scattered (NONACT. TEPEHUA)
verb_stem_type(netequtipachoa, 'netequipachoa', 'netequipachoh', 'netequipacho', c, intransitive).  % to be anguished (NE + TEQUIPACHOA)
verb_stem_type(netlatilia, 'netlatiliā', 'netlatilih', 'netlatili', c, transitive).  % to hide someone; shuntline ne + TLĀTIĀ + applic.
verb_stem_type(nētoltia, 'nētoltia', 'nētoltih', 'nētoltī', c, transitive).  % make oneself ready; no K headword
verb_stem_type(netotia, 'netōtiā', 'netōti', 'netōti', c, intransitive).  % NETŌTIA dance
verb_stem_type(neuhcahui, 'neuhcahui', 'neuhcahuic', 'neuhcahui', b, intransitive).  % to challenge one another (no K headword)
verb_stem_type(neuhcahui, 'neuhcahui', 'neuhcahuic', 'neuhcahui', b, transitive).  % to challenge one another (reflexive)
verb_stem_type(neuhcaiotia, 'neuhcaiotia', 'neuhcaioti', 'neuhcaiotia', b, transitive).  % to sustain (K NĒUHCĀYŌTIA)
verb_stem_type(nexotla, 'nēxotla', 'nēxotla', 'nēxotla', a1, transitive).  % pret. without -c (tlanexotlaque)
verb_stem_type(nexotla, 'nēxotla', 'nēxotlac', 'nēxotla', a1, transitive).  % to let out, reveal (FC tlanexotlaque)
verb_stem_type(nextia, 'nextia', 'nexti', 'nexti', c, transitive).  % h-less perfective/hypothetical as written
verb_stem_type(nextia, 'nextia', 'nextih', 'nextiā', c, transitive).  % attested x for z (monextiaya)
verb_stem_type(nextia, 'nextia', 'nextih', 'nextī', c, transitive).  % show (K NEXTIA)
verb_stem_type(nextia, 'nēxtiā', 'nēxtih', 'nēxti', c, intransitive).  % to appear, reveal oneself (FC hual-nēxtia); K NĒXTIA
verb_stem_type(nextia, 'nēxtiā', 'nēxtih', 'nēxti', c, transitive).  % to reveal, show; K NĒXTIA
verb_stem_type(nēxtia, 'nēxtia', 'nēxtih', 'nēxti', c, transitive).  % to show (K NĒXTIĀ)
verb_stem_type(nēxtia, 'nēxtia', 'nēxtih', 'nēxtiā', c, intransitive).  % intransitive use (hualnēxtia)
verb_stem_type(nēxtia, 'nēxtia', 'nēxtih', 'nēxtiā', c, transitive).  % to show (K NĒXTIA)
verb_stem_type(nēxtia, 'nēxtiā', 'nēxti', 'nēxti', c, transitive).  % NĒXTIA show
verb_stem_type(nextilia, 'nextiliā', 'nextilih', 'nextili', c, transitive).  % reveal (K NEXTLIA?)
verb_stem_type(neztia, 'neztia', 'neztih', 'neztiā', c, transitive).  % short-vowel variant
verb_stem_type(nomahui, 'nomahui', 'nomauh', 'nomahui', b, intransitive).  % to act by oneself
verb_stem_type(nomahui, 'nomahui', 'nomauh', 'nomahui', b, transitive).  % reflexive monomahui
verb_stem_type(nonōchilia, 'nonōchiliā', 'nonōchilih', 'nonōchili', c, transitive).  % to address, advise (NONŌCHILIA)
verb_stem_type(nonotza, 'nonotza', 'nonotz', 'nonotza', a1, transitive).  % NOTZA has a frequentative nonotza (no-notza) (Andrews 27.2); the sources has the perfective nonotz before the connective -ti.
verb_stem_type(nonotza, 'nonotza', 'nonotza', 'nonotza', a1, transitive).  % NONŌTZ(A) take counsel
verb_stem_type(nonotza, 'nonōtza', 'nonōtz', 'nonōtza', a1, transitive).  % to converse, take counsel (K NONŌTZ(A))
verb_stem_type(nonotza, 'nonōtza', 'nonōtzac', 'nonōtza', a1, transitive).  % to take counsel, converse (K NONŌTZ(A))
verb_stem_type(nonotza, 'nōtza', 'nōtz', 'nōtza', b, transitive).  % NŌTZ(A) call (pret. NŌTZ)
verb_stem_type(nonotza, 'yōlnonōtza', 'yōlnonōtz', 'yōlnonōtza', a1, transitive).  % YŌL- + NONŌTZ(A)
verb_stem_type(nonōtza, 'nōnōtza', 'nōnōtz', 'nōnōtza', b, transitive).  % take counsel (K NONŌTZ(A))
verb_stem_type(nōnōtza, 'nōnōtza', 'nōnōtz', 'nōnōtza', a1, transitive).  % to inform (redup. NOTZ(A))
verb_stem_type(notza, 'notza', 'notz', 'notza', b, transitive).  % to call (perf. NOTZ)
verb_stem_type(notza, 'notza', 'notza', 'notza', a1, transitive).  % to call, summon
verb_stem_type(notza, 'notza', 'notzā', 'notza', a1, transitive).  % to call (imperfect notzāya as written)
verb_stem_type(notza, 'nōnotza', 'nōnotz', 'nōnotza', a1, transitive).  % reduplicated NŌTZA 'call'
verb_stem_type(notza, 'nōtza', 'nōtz', 'nōtza', a1, transitive).  % to call, address (K NOTZ(A), long ō)
verb_stem_type(o, 'o', 'oc', 'o', b, intransitive).  % In free use it obligatorily takes the directional on-: on-o-ca 'it was lying', on-o-queh 'they were lying'.
verb_stem_type(oca, 'oca', 'oc', 'oca', a1, intransitive).  % K OCA to lie, be located (pret. OC)
verb_stem_type(oca, 'oca', 'oc', 'oca', b, intransitive).  % same, Class B perfective OC without -c
verb_stem_type(ocaquiltia, 'ocaquiltia', 'ocaquilti', 'ocaquilti', c, transitive).  % to make someone hear it (quim-o-caquilti)
verb_stem_type(ocaquitia, 'ocaquitia', 'ocaquiti', 'ocaquiti', c, transitive).  % h-less variant (quimocaquitin)
verb_stem_type(ociahualtia, 'ociahualtia', 'ociahualti', 'ociahualti', c, transitive).  % to have someone received (CIAHUALTIA + -o-)
verb_stem_type(ociaquiltia, 'ociaquiltia', 'ociaquilti', 'ociaquilti', c, transitive).  % to make someone hear it
verb_stem_type(ohtititia, 'ohtititia', 'ohtititi', 'ohtititiā', c, transitive).  % ohtititia 'to show to one another' (reflexive o + ittitia 'show').
verb_stem_type(ohtlatoca, 'ohtlatoca', 'ohtlatoca', 'ohtlatoca', a1, intransitive).  % travel a road (K OHTLATOCA)
verb_stem_type(ohtlatoca, 'ohtlatoca', 'ohtlatocac', 'ohtlatoca', a1, intransitive).  % to be on the road (K OHTLATOCA)
verb_stem_type(ohtlatoca, 'ohtlatoca', 'ohtlatocah', 'ohtlatoca', b, intransitive).  % to go along the road (K OHTLATOCA)
verb_stem_type(ohtlaxilitia, 'ohtlaxilitiā', 'ohtlaxilitih', 'ohtlaxiliti', c, transitive).  % (OH-TLI + TLAXILITIA); uncertain
verb_stem_type(ohuittitia, 'ohuittitiā', 'ohuittiti', 'ohuittiti', c, transitive).  % show one another (o- + HUITTITIA)
verb_stem_type(oiohua, 'oiohua', 'oiohuac', 'oiohua', a1, intransitive).  % to lament (K OYOHU(A)?)
verb_stem_type(olhuia, 'olhuiā', 'olhui', 'olhuī', c, transitive).  % o-lhuia: reciprocal of ilhuia with the m of m-o absorbed after qu-im (quim-o-lhuia 'they said it to each other'); lexicalized stem.
verb_stem_type(olhuia, 'olhuiā', 'olhuī', 'olhuī', c, transitive).  % pret. OLHUĪ (quimolhuīca)
verb_stem_type(olhuiltoca, 'olhuiltoca', 'olhuiltocac', 'olhuiltoca', b, transitive).  % to go saying it to one another
verb_stem_type(olin, 'olin', 'olin', 'olin', a1, intransitive).  % to move (K *ŌLĪN(I), OLINIA)
verb_stem_type(olini, 'olini', 'olin', 'olini', b, intransitive).  % to move (K OLINI)
verb_stem_type(olini, 'olini', 'olini', 'olini', a1, intransitive).  % to move (variant of OLIN(I))
verb_stem_type(olini, 'olīni', 'olin', 'olīni', b, intransitive).  % to move; K OLĪN(I)
verb_stem_type(olini, 'olīni', 'olīn', 'olīni', b, intransitive).  % to move (K OLĪN(I))
verb_stem_type(olinia, 'olinia', 'olinih', 'oliniā', c, transitive).  % to move (K OLINIA)
verb_stem_type(ololalia, 'ololaliā', 'ololalih', 'ololali', c, transitive).  % roll (OLOLOA + -lia)
verb_stem_type(ololhuia, 'ololhuia', 'ololhuih', 'ololhuiā', c, transitive).  % to surround (K OLOLHUIA)
verb_stem_type(ololhuītia, 'ololhuītia', 'ololhuītih', 'ololhuīti', c, transitive).  % roll along (OLOLOA + HUĪTIA?)
verb_stem_type(ololihui, 'ololihui', 'ololihuh', 'ololihui', b, intransitive).  % to roll (perfective before -ti-hui)
verb_stem_type(ololihui, 'ololihui', 'ololihuih', 'ololihui', b, intransitive).  % to roll (K OLOLIHUI)
verb_stem_type(ololoa, 'ololoa', 'ololoh', 'ololo', c, transitive).  % supportive-o variant of LOLOĀ (quim-ololoa)
verb_stem_type(ololoa, 'ōlōloā', 'ōlōloh', 'ōlōlō', c, transitive).  % to gather into a pile (K OLOLOA)
verb_stem_type(olpilia, 'olpilia', 'olpilih', 'olpiliā', c, transitive).  % to tie on (OH-TLI? + ILPIA)
verb_stem_type(olpilia, 'olpiliā', 'olpili', 'olpili', c, transitive).  % to tie someone (ILPIA applic.)
verb_stem_type(olpilia, 'olpiliā', 'olpilih', 'olpili', c, transitive).  % tie for someone (ILPIA + applic.)
verb_stem_type(olpilia, 'olpiliā', 'olpilih', 'olpiliā', c, transitive).  % to tie someone (applic. ILPIA)
verb_stem_type(omina, 'omina', 'omin', 'omina', a1, transitive).  % to shoot at (quimomina; initial supportive i after m)
verb_stem_type(ōmpachiuh, 'ōmpachiuh', 'ōmpachiuh', 'ōmpachiuh', a1, intransitive).  % to become satisfied ( ōmpa + chīhua)
verb_stem_type(onaci, 'onaci', 'onacico', 'onaci', a1, intransitive).  % to arrive there (ON + AHCI)
verb_stem_type(onequiltia, 'onequiltia', 'onequilti', 'onequilti', c, transitive).  % to want it for oneself (quim-o-nequiltia)
verb_stem_type(onotia, 'onotia', 'onotih', 'onotiā', c, intransitive).  % intransitive use (hualonotia)
verb_stem_type(onotia, 'onotia', 'onotih', 'onotiā', c, transitive).  % to call ( hualonotia)
verb_stem_type(opictia, 'opictia', 'opictih', 'opictiā', c, transitive).  % to imagine (K OPIKTIA?)
verb_stem_type(oquechilitia, 'oquechilitiā', 'oquechilitih', 'oquechiliti', c, transitive).  % wait for (o- + QUECHILITIA)
verb_stem_type(oquentia, 'oquentia', 'oquentih', 'oquentī', c, transitive).  % OQUENTIA to dress someone
verb_stem_type(otocti, 'otocti', 'otoctic', 'otocti', a1, intransitive).  % to take shelter (OHTLI + -ti?)
verb_stem_type(otocti, 'otocti', 'otoctic', 'otocti', a1, transitive).  % transitive use (quimotocti)
verb_stem_type(oxquia, 'oxquia', 'oxquih', 'oxqui', c, transitive).  % (FC; uncertain)
verb_stem_type(pacca, 'pacca', 'paccac', 'pacca', a1, intransitive).  % be happy (K PACCA)
verb_stem_type(pachihui, 'pachihui', 'pachiuh', 'pachihui', b, intransitive).  % be satisfied (K PACHIHU(I))
verb_stem_type(pachihui, 'pachiui', 'pachiuh', 'pachiui', b, intransitive).  % be satisfied (FC pachiui)
verb_stem_type(pachihuia, 'pachihuia', 'pachihuih', 'pachihuiā', c, transitive).  % to hide oneself from (PACHOĀ + -huia)
verb_stem_type(pachoa, 'pachoa', 'pachoh', 'pachō', c, transitive).  % to cover (K PACHOĀ)
verb_stem_type(pachoa, 'pachoā', 'pacho', 'pachō', c, transitive).  % press down (FC pret. plural pacho-queh)
verb_stem_type(pachoa, 'pachoā', 'pachoc', 'pachō', c, transitive).  % press down (K PACHOĀ)
verb_stem_type(pachoa, 'pachoā', 'pachoh', 'pachō', c, transitive).  % K PACHOĀ to press down, assign
verb_stem_type(pachoco, 'pachoco', 'pachoco', 'pachoco', a1, transitive).  % press (FC variant of PACHOĀ)
verb_stem_type(pachotia, 'pachotiā', 'pachotih', 'pachoti', c, transitive).  % shut in (PACHOA + -tia)
verb_stem_type(pachotoca, 'pachotoca', 'pachotocac', 'pachotoca', a1, intransitive).  % to crouch, hide
verb_stem_type(pachotoca, 'pachotoca', 'pachotocac', 'pachotoca', a1, transitive).  % reflexive/transitive counterpart
verb_stem_type(palēhui, 'palēhui', 'palēhui', 'palēhui', a1, intransitive).  % to help (K PALĒHUI(A))
verb_stem_type(palehuia, 'palēhuiā', 'palēhuī', 'palēhuī', c, transitive).  % to help someone (FC pret. palēhuī); K PALĒHUIĀ
verb_stem_type(palēhuia, 'palēhuia', 'palēhuih', 'palēhui', c, transitive).  % to help someone (K PALĒHUIĀ)
verb_stem_type(panahui, 'panahui', 'panahui', 'panahui', b, transitive).  % cross, surpass (K PANAHUIA; FC pret. panahui)
verb_stem_type(panahui, 'panāhui', 'panāhuic', 'panāhui', b, transitive).  % to cross over something; K PANĀHU(I)
verb_stem_type(panāhui, 'panāhui', 'panāhuih', 'panāhui', b, intransitive).  % cross over (K PANĀHU(I))
verb_stem_type(panahuia, 'panahuiā', 'panahui', 'panahui', c, transitive).  % to overcome (K PANAHUIA; future panahuiz)
verb_stem_type(panahuia, 'panahuiā', 'panahui', 'panahuiā', c, transitive).  % to surpass, overcome (K PANAHUIA)
verb_stem_type(panahuia, 'panahuiā', 'panahuih', 'panahui', c, transitive).  % surpass, cross (K PANAHUIA)
verb_stem_type(pano, 'panō', 'panōc', 'panō', b, intransitive).  % to pass, cross
verb_stem_type(papaqui, 'papaqui', 'papac', 'papaqui', b, intransitive).  % to rejoice; PAHPĀQU(I)/PAHPAQU(I), pret. PAHPAC
verb_stem_type(papaquiltia, 'papaquiltiā', 'papaquilti', 'papaquilti', c, transitive).  % to make someone happy (PAPAQUILTIA)
verb_stem_type(papatlahua, 'papatlahua', 'papatlahuac', 'papatlahuā', b, intransitive).  % to widen (redup. PATLĀHU(A))
verb_stem_type(papatlahua, 'papatlahua', 'papatlauh', 'papatlahuā', b, intransitive).  % pret. PAPATLAUH
verb_stem_type(paqui, 'paqui', 'pac', 'paqui', b, intransitive).  % to be happy (K PĀQU(I))
verb_stem_type(pata, 'pata', 'pata', 'pata', a1, transitive).  % to change
verb_stem_type(pati, 'pati', 'pac', 'pati', b, intransitive).  % to be remedied/suitable (K PAT(I); cf. PAHTI)
verb_stem_type(patlani, 'patlāni', 'patlāni', 'patlāni', b, intransitive).  % to fly
verb_stem_type(patzmiqui, 'patzmiqui', 'patzmic', 'patzmiqui', b, intransitive).  % to die crushed (PATZ(A) + MIQU(I))
verb_stem_type(patzoloa, 'patzoloa', 'patzoloh', 'patzolō', c, transitive).  % to trample (PATZ(A) + -loa)
verb_stem_type(pehua, 'pehua', 'peuh', 'pehua', b, intransitive).  % to begin (K PEHU(A), pret. PEUH)
verb_stem_type(pehua, 'pehua', 'pēuh', 'pehua', b, intransitive).  % FC pret. PĒUH
verb_stem_type(pehua, 'pēhua', 'pēuh', 'pēhua', b, intransitive).  % to set off, begin (K PĒHU(A))
verb_stem_type(pēhua, 'pēhua', 'pēuh', 'pēhua', b, transitive).  % same, transitive
verb_stem_type(pēhua, 'pēhua', 'pēuh', 'pēhuā', b, intransitive).  % to begin (K PĒHU(A))
verb_stem_type(pehualtia, 'pehualtiā', 'pehualtih', 'pehualtī', c, transitive).  % to begin
verb_stem_type(pēhualtia, 'pēhualtia', 'pēhualtih', 'pēhualtī', c, transitive).  % K PEHUALTIA to begin something
verb_stem_type(pepehua, 'pepehua', 'pepeuh', 'pepehuā', b, intransitive).  % set out (redup. EHUA)
verb_stem_type(pepena, 'pepena', 'pepen', 'pepena', b, transitive).  % to choose, pick (K PEHPEN(A))
verb_stem_type(pepetla, 'pepetla', 'pepetlac', 'pepetla', a1, transitive).  % to polish (K PEHPETLA)
verb_stem_type(pepetla, 'pēpepetla', 'pēpepetlac', 'pēpepetla', a1, transitive).  % to polish (redup. PEHPETLA, long ē)
verb_stem_type(pepetlaca, 'pepetlaca', 'pepetlacac', 'pepetlaca', a1, intransitive).  % to glitter, flutter (K PEPETLACA)
verb_stem_type(pepetlauhti, 'pepetlauhti', 'pepetlauh', 'pepetlauhti', a1, intransitive).  % to shine (redup. PETLAUHTI)
verb_stem_type(pepetlauhtihui, 'pepetlauhtihui', 'pepetlauhtiuh', 'pepetlauhtihui', b, intransitive).  % to shine (redup. PETLAUHTI)
verb_stem_type(pepetza, 'pepetza', 'pepetzac', 'pepetza', a1, transitive).  % to search, examine (K PEPETZ(A)?)
verb_stem_type(pepexoca, 'pepexoca', 'pepexocac', 'pepexoca', a1, intransitive).  % Reduplicated pexoca; pepexoca-tiuh 'to go along quickly/in a file'.
verb_stem_type(petla, 'petla', 'petla', 'petla', a1, transitive).  % PETL(A) twist, turn
verb_stem_type(petlahua, 'pepetlahua', 'pepetlauh', 'pepetlahua', b, transitive).  % reduplicated PETLAHU(A)
verb_stem_type(petlahua, 'petlahua', 'petlauh', 'petlahua', b, transitive).  % K PETLAHU(A) to undress, uncover
verb_stem_type(petlauhti, 'petlauhti', 'petlauhti', 'petlauhti', a1, intransitive).  % to shine (K PETLAUHTI)
verb_stem_type(petztocca, 'petztocca', 'petztocca', 'petztocca', a1, intransitive).  % to lie smooth/shiny (PETZ + TOCA)
verb_stem_type(pia, 'pia', 'pih', 'pia', a1, transitive).  % to guard (K PIY(A))
verb_stem_type(pia, 'pia', 'pix', 'pia', b, transitive).  % to guard, keep (K PIY(A), variant PIY(E); FC pia)
verb_stem_type(pia, 'pīa', 'pih', 'pīa', b, transitive).  % to guard (K PĪA)
verb_stem_type(pictia, 'pictia', 'picti', 'pictia', c, transitive).  % FC pictia, pret. PICTI
verb_stem_type(pictia, 'pictiā', 'pictih', 'pictī', c, transitive).  % to imagine, picture (denominal PICTI?; FC quimopictia)
verb_stem_type(pie, 'pie', 'piex', 'pie', b, transitive).  % FC variant PIY(E); passive stem pielō (tlapielo)
verb_stem_type(pielilia, 'pieliliā', 'pielilih', 'pielili', c, transitive).  % watch over (PĪLIA applic.)
verb_stem_type(pilca, 'pilca', 'pilcac', 'pilca', a1, intransitive).  % K PILCA to be hanging (pret. PILCAC)
verb_stem_type(pilca, 'pilca', 'pilcac', 'pilca', b, intransitive).  % to be hanging; K PILC(A)
verb_stem_type(piloa, 'piloa', 'pilo', 'pilo', a1, transitive).  % to hang something; K PILOĀ
verb_stem_type(pipia, 'pipia', 'pipix', 'pipia', b, transitive).  % to watch over (K PIHPIY(A))
verb_stem_type(pipilca, 'pipilca', 'pilcac', 'pipilca', a1, intransitive).  % to be hanging (K PILCA, redup.)
verb_stem_type(pipilca, 'pipilca', 'pipilcac', 'pipilca', a1, intransitive).  % to pant; no K headword
verb_stem_type(pipilca, 'pipilca', 'pipilcac', 'pipilca', b, intransitive).  % to be a child/noble; K PIPILCA
verb_stem_type(pipitzca, 'pipitzca', 'pipitzca', 'pipitzca', a1, intransitive).  % to neigh, squeak; K PIPITZCA
verb_stem_type(pipitzca, 'pipitzca', 'pipitzca', 'pipitzca', a1, transitive).  % to neigh at something (tla-pipitzca); K PIPITZCA
verb_stem_type(pipixahua, 'pīpixāhua', 'pīpixāuh', 'pīpixāhuā', b, intransitive).  % to glisten, drizzle (redup. PĪXĀHUA)
verb_stem_type(pīpixāhui, 'pīpixāhui', 'pīpixāhuih', 'pīpixāhui', b, intransitive).  % to drizzle (K PĪPIXAHU(I))
verb_stem_type(piqui, 'piqui', 'pic', 'piqui', b, transitive).  % invent, fashion (K PIQU(I))
verb_stem_type(pitza, 'pitza', 'pitz', 'pitza', a1, transitive).  % to blow (variant perfective; tlapitztihuitze)
verb_stem_type(pitza, 'pitza', 'pitza', 'pitza', a1, transitive).  % to blow
verb_stem_type(piya, 'pia', 'pia', 'pia', b, transitive).  % to guard; y written i
verb_stem_type(piya, 'piya', 'piyac', 'piya', b, transitive).  % to guard (K PIY(A))
verb_stem_type(pohua, 'pōhua', 'pōhuh', 'pōhua', b, transitive).  % PŌHU(A) with perfective PŌHUH
verb_stem_type(pohua, 'pōhua', 'pōuh', 'pōhua', b, transitive).  % to read, count
verb_stem_type(pohuilia, 'pohuiliā', 'pohuili', 'pohuilī', c, transitive).  % to tell someone
verb_stem_type(polahui, 'polahui', 'polauh', 'polahui', b, intransitive).  % to sink, be ruined (K POLAHU(I))
verb_stem_type(polaqui, 'polaqui', 'polac', 'polaqui', b, intransitive).  % to be lost, escape (K POLAQU(I))
verb_stem_type(polihui, 'polihui', 'poliuh', 'polihui', b, intransitive).  % to perish (pret. POLIUH)
verb_stem_type(poloā, 'poloā', 'poloh', 'polō', c, transitive).  % to hide (K POLOĀ)
verb_stem_type(popolahui, 'popolahui', 'popolauh', 'popolahui', b, intransitive).  % redup. POLAHU(I)
verb_stem_type(popolihui, 'popolihui', 'popoliuh', 'popolihui', b, intransitive).  % to be destroyed (redup. POLIHUI)
verb_stem_type(popoloa, 'popoloā', 'popolo', 'popolō', c, transitive).  % destroy (K POPOLOA)
verb_stem_type(popoloa, 'popoloā', 'popoloc', 'popolō', c, transitive).  % destroy (FC pret. popoloc)
verb_stem_type(popoloā, 'popoloā', 'popoloh', 'popolō', c, transitive).  % to destroy (K POPOLOĀ)
verb_stem_type(popolotza, 'popolotza', 'popolotz', 'popolotza', b, transitive).  % speak (K POPOLOTZ(A))
verb_stem_type(potoni, 'potōni', 'potōn', 'potōni', b, intransitive).  % to stink (K POTŌN(I))
verb_stem_type(poyomictia, 'poyomictia', 'poyomictih', 'poyomictia', c, transitive).  % FC spelling
verb_stem_type(poyomictia, 'poyomictia', 'poyomictih', 'poyomictiā', c, transitive).  % to kill by stealth (POYOMA + MICTIA)
verb_stem_type(poyomictia, 'poyomictiā', 'poyomicti', 'poyomictiā', c, transitive).  % pret. without h
verb_stem_type(poyomictia, 'poyomictiā', 'poyomictih', 'poyomicti', c, transitive).  % to kill treacherously (caus. POYOMIQU(I))
verb_stem_type(poyomictia, 'poyomictiā', 'poyomictih', 'poyomictī', c, transitive).  % to kill treacherously
verb_stem_type(poyomiqui, 'poyomiqui', 'poyomic', 'poyomiqui', b, intransitive).  % to be treacherous (K POYOMIQU(I))
verb_stem_type(pozāhua, 'pozāhuā', 'pozāhuac', 'pozāhuā', b, transitive).  % POZAHU(A) 'to inflate, swell'; used metaphorically of greed in the .
verb_stem_type(pozonaltia, 'pozonaltiā', 'pozonaltih', 'pozonaltī', c, transitive).  % to make boil
verb_stem_type(pozōni, 'pozōni', 'pozōn', 'pozōni', b, intransitive).  % to boil (K POZŌN(I))
verb_stem_type(pozōni, 'pozōni', 'pozōni', 'pozōni', b, intransitive).  % to boil (K POZŌN(I))
verb_stem_type(quechhuia, 'quechhui', 'quechhui', 'quechhui', c, intransitive).  % to hang the head
verb_stem_type(quechhuia, 'quechhui', 'quechhui', 'quechhui', c, transitive).  % transitive use (tlaquechhui)
verb_stem_type(quechhuia, 'quechhuiā', 'quechhuih', 'quechhuiā', c, intransitive).  % to hang the neck/head (QUECH-TLI + -huia)
verb_stem_type(quechhuihuitequi, 'quechhuihuitequi', 'quechhuihuitec', 'quechhuihuitequi', b, transitive).  % QUECH-TLI + redup. HUĪTEQU(I)
verb_stem_type(quechhuītequi, 'quechhuītequi', 'quechhuītec', 'quechhuītequi', b, transitive).  % QUECH-TLI + HUĪTEQU(I) strike the neck
verb_stem_type(quechilia, 'quechiliā', 'quechilih', 'quechili', c, transitive).  % wait for (K QUECHILIA)
verb_stem_type(quechilitia, 'quechilitiā', 'quechilitih', 'quechiliti', c, transitive).  % cause to wait (QUECHILIA + -tia)
verb_stem_type(quechpanoa, 'quechpanoa', 'quechpano', 'quechpanoa', a1, transitive).  % to shoulder, carry on the shoulder; no K headword
verb_stem_type(quechpilhui, 'quechpilhui', 'quechpilhui', 'quechpilhui', a1, intransitive).  % to hang by the neck (QUECH-TLI + PILHUI)
verb_stem_type(quechpilhui, 'quechpilhui', 'quechpilhui', 'quechpilhui', a1, transitive).  % to hang someone by the neck
verb_stem_type(quechpilo, 'quechpilo', 'quechpiloh', 'quechpilō', c, intransitive).  % to hang the head
verb_stem_type(quemi, 'quemi', 'quem', 'quemi', b, transitive).  % to put on (clothing) (K QUEMI)
verb_stem_type(quēntia, 'quēntia', 'quēntih', 'quēntī', c, transitive).  % dress someone (QUEMI)
verb_stem_type(quēntia, 'quēntiā', 'quēnti', 'quēnti', c, transitive).  % QUĒNTIA dress someone
verb_stem_type(queoa, 'queoa', 'queoac', 'queoa', a1, transitive).  % K QUEHUA to rise, lift
verb_stem_type(quequechoa, 'quequechoā', 'quequechoh', 'quequechō', c, transitive).  % to shoulder
verb_stem_type(quequechpanoa, 'quequechpanoa', 'quequechpano', 'quequechpanoa', a1, transitive).  % redup. quechpanoa
verb_stem_type(quequēntia, 'quequēntiā', 'quequēnti', 'quequēnti', c, transitive).  % redup. QUĒNTIA dress each
verb_stem_type(quequetza, 'quequetza', 'quequetz', 'quequetza', b, intransitive).  % to toddle (redup. QUETZ(A))
verb_stem_type(quequetza, 'quequetza', 'quequetz', 'quequetza', b, transitive).  % to raise repeatedly; K QUEQUETZ(A)
verb_stem_type(quequetzallotia, 'quequetzallotiā', 'quequetzalloti', 'quequetzalloti', c, transitive).  % redup. QUETZALLOTIA adorn each
verb_stem_type(quequetzotzona, 'quequetzotzona', 'quequetzotzon', 'quequetzotzona', a1, transitive).  % redup. of TZOTZON(A) 'to strike'
verb_stem_type(quequezaloa, 'quequezaloa', 'quequezaloh', 'quequezalō', c, transitive).  % to shake?
verb_stem_type(quetza, 'quetza', 'quetz', 'quetza', b, transitive).  % to raise, stand up; QUETZ(A)
verb_stem_type(quetzallotia, 'quetzallotiā', 'quetzalloti', 'quetzalloti', c, transitive).  % QUETZAL-LI + -tia put quetzal feathers on
verb_stem_type(qui, 'qui', 'quic', 'qui', b, transitive).  % to say (often used with tla-)
verb_stem_type(quia, 'quia', 'quia', 'quia', a1, transitive).  % drink it (variant of I)
verb_stem_type(quihualtlaca, 'quihualtlaca', 'quihualtlacac', 'quihualtlaca', a1, transitive).  % to come bringing/leading
verb_stem_type(quimilhuia, 'quimilhuiā', 'quimilhuih', 'quimilhui', c, transitive).  % to wrap something; K QUIMILHUIĀ
verb_stem_type(quimilo, 'quimilo', 'quimiloh', 'quimilō', c, transitive).  % to wrap
verb_stem_type(quimotla, 'quimotla', 'quimotlac', 'quimotla', a1, transitive).  % to fire at ( opaque)
verb_stem_type(quinaca, 'quinaca', 'quinacac', 'quinaca', a1, intransitive).  % to whine
verb_stem_type(quiquinaca, 'quiquinaca', 'quiquinacac', 'quiquinaca', a1, intransitive).  % to moan (K QUIQUINAC(A))
verb_stem_type(quiquiyahui, 'quiquiyahui', 'quiquiyauh', 'quiquiyahui', b, intransitive).  % to rain (reduplicated); K QUIYAHU(I)
verb_stem_type(quitqui, 'quitqui', 'quitqui', 'quitqui', b, intransitive).  % intransitive use (quitqui-ti-nemi)
verb_stem_type(quitqui, 'quitqui', 'quitqui', 'quitqui', b, transitive).  % embed form QUITQUI (quitqui-ti-nemi)
verb_stem_type(quitqui, 'quitqui', 'quitquic', 'quitqui', b, transitive).  % to carry (K ITQU(I), variant QUITQU(I))
verb_stem_type(quixaxanteca, 'quixaxanteca', 'quixaxanteca', 'quixaxanteca', a1, transitive).  % to cut into bricks (XAXAN + TECA)
verb_stem_type(quixnamictoca, 'quixnāmictoca', 'quixnāmictocac', 'quixnāmictoca', a1, transitive).  % face the sun (QUĪX + NĀMICTOCA)
verb_stem_type(quixnamictoca, 'quīxnamictoca', 'quīxnamictocac', 'quīxnamictoca', a1, transitive).  % face the sun (FC long ī)
verb_stem_type(quīxohua, 'quīxohua', 'quīxohuac', 'quīxohua', a1, intransitive).  % iterative QUĪZ(A), x-spelling
verb_stem_type(quixtia, 'quīxtia', 'quīxti', 'quīxti', c, transitive).  % come out (K QUĪXTIA; FC pret. quīxti)
verb_stem_type(quixtia, 'quīxtia', 'quīxtih', 'quīxti', c, transitive).  % to remove (unmarked variant)
verb_stem_type(quixtia, 'quīxtiā', 'quīxti', 'quīxti', c, transitive).  % to remove (K QUIXTIA, perfective quīxti as written)
verb_stem_type(quixtia, 'quīxtiā', 'quīxtih', 'quīxtī', c, transitive).  % to remove
verb_stem_type(quīxtilia, 'quīxtiliā', 'quīxtili', 'quīxtili', c, transitive).  % applic. QUĪXTIA remove for someone
verb_stem_type(quiyahui, 'quiyahui', 'quiyauh', 'quiyahui', b, intransitive).  % to rain; K QUIYAHU(I)
verb_stem_type(quiza, 'quiza', 'quiz', 'quiza', b, intransitive).  % Class B perfective variant
verb_stem_type(quiza, 'quiza', 'quiza', 'quiza', a1, intransitive).  % to leave, exit
verb_stem_type(quiza, 'quīz', 'quīz', 'quīz', b, intransitive).  % to come out (stem before -que)
verb_stem_type(quiza, 'quīza', 'quīz', 'quīza', a1, intransitive).  % to emerge (K QUĪZ(A); corrects short-i parser entry)
verb_stem_type(quiza, 'quīza', 'quīz', 'quīza', b, intransitive).  % QUĪZ(A) 'to come out'; long ī (K QUĪZ(A)). The parser's imported quiza facts have a short i, so this long-vowel fact is additive.
verb_stem_type(quiza, 'quīza', 'quīz', 'quīza', b, transitive).  % K QUĪZ(A), transitive use (quiquīza)
verb_stem_type(quiza_co, 'quīza', 'quīzaco', 'quīza', b, intransitive).  % to go out there (QUĪZ(A) + -co)
verb_stem_type(quīzohua, 'quīzohua', 'quīzohua', 'quīzohua', a1, intransitive).  % iterative QUĪZ(A) keep going out
verb_stem_type(quīztia, 'quīxtia', 'quīxti', 'quīxti', c, intransitive).  % object omitted (hualquīxtiqueh)
verb_stem_type(sozohua, 'sozohua', 'sozohuac', 'sozohuā', b, transitive).  % wound? (FC; uncertain)
verb_stem_type(taciti, 'taciti', 'taciti', 'taciti', a1, intransitive).  % to go quietly (cf. K TACIT)
verb_stem_type(tacitihui, 'tacitihui', 'tacitiuh', 'tacitihui', b, intransitive).  % to go quietly
verb_stem_type(tatataca, 'tatataca', 'tatatacac', 'tatataca', a1, transitive).  % to excavate (redup. TAC(A)?)
verb_stem_type(teca, 'teca', 'teca', 'teca', a1, transitive).  % lay down (K TECA)
verb_stem_type(teca, 'teca', 'tecac', 'teca', a1, transitive).  % to lay down, place (K TEC(A))
verb_stem_type(teca, 'teca', 'tecac', 'teca', b, intransitive).  % to lie down (K TECA)
verb_stem_type(teca, 'teca', 'tecac', 'teca', b, transitive).  % to lay someone down (transitive of K TECA)
verb_stem_type(teca, 'tēca', 'tēcac', 'tēca', b, intransitive).  % to lie down (K TĒC(A))
verb_stem_type(teca, 'tēca', 'tēcac', 'tēca', b, transitive).  % reflexive mo-tēca 'lie oneself down'
verb_stem_type(techtia, 'techtia', 'techti', 'techtī', c, transitive).  % same, perfective without -h as written
verb_stem_type(techtia, 'techtia', 'techtih', 'techti', c, transitive).  % to treat someone (cf. -TECH)
verb_stem_type(techtia, 'techtia', 'techtih', 'techtī', c, transitive).  % K TECHTIĀ to become possessor of
verb_stem_type(teci, 'teci', 'tez', 'teci', b, transitive).  % K TEC(I) to grind
verb_stem_type(tecoloa, 'tecoloa', 'tecoloh', 'tecolō', c, transitive).  % to harm (cf. TECOLOĀ)
verb_stem_type(tecpana, 'tecpana', 'tecpan', 'tecpana', a1, transitive).  % to line up (short-vowel variant of TECPĀNA)
verb_stem_type(tecpāna, 'tecpāna', 'tecpā', 'tecpāna', a1, transitive).  % to line up, arrange (K TECPĀN(A); pret. tecpā)
verb_stem_type(tecpāna, 'tecpāna', 'tecpān', 'tecpāna', a1, transitive).  % to line up (K TECPĀNA)
verb_stem_type(tecuitlahuia, 'tecuitlahuia', 'tecuitlahuih', 'tecuitlahuiā', c, transitive).  % to care for (K TECUITLAHUIA)
verb_stem_type(tecuitlahuia, 'tecuitlahuiā', 'tecuitlahuih', 'tecuitlahuiā', c, transitive).  % to be careful (TECUI- + -huia)
verb_stem_type(tecuitlahuia, 'tecuitlahuiā', 'tecuitlahuī', 'tecuitlahuiā', c, transitive).  % pret. without h (tecuitlahuī-ti-nemi)
verb_stem_type(tehco, 'tehco', 'tehco', 'tehco', a1, intransitive).  % to go up, ascend; K TEHCU(I)? (FC ontehcoqueh)
verb_stem_type(tehco, 'tehco', 'tehcoc', 'tehco', b, intransitive).  % to climb up (K TEHCŌ)
verb_stem_type(tēhuihuitequi, 'tēhuihuitequi', 'tēhuihuitec', 'tēhuihuitequi', b, transitive).  % TĒ- + redup. HUĪTEQU(I)
verb_stem_type(teittitia, 'teittitiā', 'teittitih', 'teittitī', c, transitive).  % to show people (TĒ- + ITTITIA)
verb_stem_type(teixihuinti, 'teixihuinti', 'teixihuintic', 'teixihuinti', a1, intransitive).  % to make people dizzy; TĒ- + IXHUINTI
verb_stem_type(telchīhua, 'telchīhuā', 'telchīuh', 'telchīhuā', b, transitive).  % TELCHĪHU(A) 'to dismiss, scorn someone'; perfective telchīuh.
verb_stem_type(temā, 'tema', 'temac', 'tema', a1, intransitive).  % to come down (K TĒM(A))
verb_stem_type(tematlahuia, 'tematlahuia', 'tematlahuih', 'tematlahui', c, transitive).  % short future stem (quintematlahuizqueh)
verb_stem_type(tematlahuia, 'tematlahuia', 'tematlahuih', 'tematlahuiā', c, transitive).  % to sling stones at (TETL + MATLA-TL)
verb_stem_type(tēmictia, 'tēmictia', 'tēmictih', 'tēmicti', c, transitive).  % to kill people
verb_stem_type(temilia, 'temiliā', 'temili', 'temiliā', c, transitive).  % to throw onto, fill in on top (K TĒMILIA)
verb_stem_type(temiqui, 'tēmiqui', 'tēmic', 'tēmiqui', b, transitive).  % dream of (K TĒMIQU(I))
verb_stem_type(temo, 'temo', 'temoc', 'temo', b, intransitive).  % to descend (perf. TEMOC)
verb_stem_type(temo, 'temō', 'temō', 'temō', a2, intransitive).  % to descend
verb_stem_type(temoa, 'temoa', 'temo', 'temoa', a1, transitive).  % variant of TEMOĀ with h-less perfective
verb_stem_type(temoa, 'temoa', 'temoh', 'temo', c, transitive).  % to look for (unmarked variant)
verb_stem_type(temoa, 'temoā', 'temoh', 'temō', c, transitive).  % to look for
verb_stem_type(temohuia, 'temohuiā', 'temohui', 'temohuī', c, transitive).  % to lower someone
verb_stem_type(temolia, 'temolia', 'temolih', 'temoli', c, transitive).  % to look for something for someone (applic. TEMOĀ)
verb_stem_type(temolia, 'temoliā', 'temolih', 'temoli', c, transitive).  % seek for someone (TEMOA + applic.)
verb_stem_type(temoliti, 'temoliti', 'temolitic', 'temoliti', a1, transitive).  % to go searching (TEMOA + -ti)
verb_stem_type(tenahuatilia, 'tēnāhuatiliā', 'tēnāhuatili', 'tēnāhuatili', c, transitive).  % to give orders to people (TĒ- + NĀHUATIĀ applic.)
verb_stem_type(tēnamoia, 'tēnamoia', 'tēnamoia', 'tēnamoia', a1, transitive).  % to capture people (TĒ + NAMOIA?)
verb_stem_type(tenantia, 'tenantia', 'tenantih', 'tenantī', c, transitive).  % to wall in (TENĀMI-TL + -tia)
verb_stem_type(tenantlalia, 'tenantlaliā', 'tenantlalih', 'tenantlalī', c, transitive).  % to lay walls
verb_stem_type(tenehua, 'tenehua', 'teneuh', 'tenehua', b, transitive).  % K TENEHUA to mention, name
verb_stem_type(tenehua, 'tēnehuā', 'tēnehuh', 'tēnehuā', b, transitive).  % to name, mention (K TĒNĒHU(A))
verb_stem_type(tenēhua, 'tēnēhua', 'tēnēuh', 'tēnēhuā', b, transitive).  % mention (K TĒNĒHU(A))
verb_stem_type(tēnēhua, 'tēnēhuā', 'tēnēuh', 'tēnēhuā', b, transitive).  % to mention (K TĒNĒHU(A))
verb_stem_type(tenextilia, 'tenextiliā', 'tenextilih', 'tenextiliā', c, transitive).  % to show, reveal (K TĒNEXTILIA)
verb_stem_type(tēnextilia, 'tēnextiliā', 'tēnextilih', 'tēnextilī', c, transitive).  % to reveal to people
verb_stem_type(tēnhuītequi, 'tēnhuītequi', 'tēnhuītec', 'tēnhuītequi', b, transitive).  % insult (K TĒNHUĪTEQU(I))
verb_stem_type(teniztia, 'teniztiā', 'tenizti', 'tenizti', c, transitive).  % to charge, admonish (TĒ- + NIZTIA?)
verb_stem_type(tenma, 'tenma', 'tenma', 'tenma', a1, transitive).  % to lament, be distressed ( no K headword)
verb_stem_type(tenmachilia, 'tenmachiliā', 'tenmachili', 'tenmachiliā', c, transitive).  % to tell the troubles of
verb_stem_type(tēnoā, 'tēnoā', 'tēnoh', 'tēnō', c, transitive).  % to name (K TĒNOĀ)
verb_stem_type(tenquīxtia, 'tenquīxtia', 'tenquīxtih', 'tenquīxti', c, transitive).  % to declare, let escape from the lips (K TENQUIXTIA)
verb_stem_type(teohcalhuia, 'teohcalhuiā', 'teohcalhuih', 'teohcalhuiā', c, transitive).  % to cast down from the temple
verb_stem_type(teohcalhuia, 'teohcalhuiā', 'teohcalhuih', 'teohcalhuī', c, transitive).  % to cast down from temple
verb_stem_type(tepachoa, 'tepachoa', 'tepacho', 'tepacho', a1, transitive).  % to stone, cover with stones; K TEPACHOĀ
verb_stem_type(tepachoa, 'tepachoa', 'tepachoh', 'tepacho', c, transitive).  % short future stem (quintepachozqueh)
verb_stem_type(tepachoa, 'tepachoa', 'tepachoh', 'tepachō', c, transitive).  % to hurl stones at (TETL + PACHOĀ)
verb_stem_type(tepancaltema, 'tepancaltema', 'tepancaltemac', 'tepancaltema', b, transitive).  % to arrange oneself in the palace
verb_stem_type(tepehua, 'tepehua', 'tepehuih', 'tepehua', b, transitive).  % to accompany, push; K TEPEHUA
verb_stem_type(tepehua, 'tepehua', 'tepeuh', 'tepehua', b, intransitive).  % intransitive/zero-object use and short-vowel future (tepehuaco)
verb_stem_type(tepehua, 'tepehua', 'tepeuh', 'tepehuā', b, transitive).  % to conquer (K TEPEHUA)
verb_stem_type(tepehua, 'tepēhua', 'tepēuh', 'tepēhua', b, intransitive).  % to push, shove (K TEPĒHU(A))
verb_stem_type(tepehua, 'tepēhua', 'tepēuh', 'tepēhua', b, transitive).  % to conquer (K TEPĒHU(A))
verb_stem_type(tepēhua, 'tepēhua', 'tepēhuac', 'tepēhua', b, transitive).  % K TEPĒHU(A) to scatter, throw down
verb_stem_type(tepēhua, 'tepēhua', 'tepēuh', 'tepēhuā', b, transitive).  % TEPĒHU(A) push someone down
verb_stem_type(tepehualo, 'tepēhualo', 'tepēhualo', 'tepēhualo', a1, intransitive).  % to be pushed (nonact.)
verb_stem_type(tepehualtia, 'tepēhualtia', 'tepēhualti', 'tepēhualtī', c, transitive).  % h-less perfective as written
verb_stem_type(tepehualtia, 'tepēhualtia', 'tepēhualtih', 'tepēhualtī', c, transitive).  % TEPĒHUALTIA to conquer
verb_stem_type(tepehui, 'tepehui', 'tepeuh', 'tepehui', b, intransitive).  % to jump down (K TEPEHUI)
verb_stem_type(tepēhui, 'tepēhui', 'tepēhuic', 'tepēhui', b, intransitive).  % to push, shove (var. TEPĒHU(A))
verb_stem_type(tepēhui, 'tepēhui', 'tepēhuih', 'tepēhui', b, intransitive).  % to be scattered (K TEPĒHU(I))
verb_stem_type(tepēhui, 'tepēhui', 'tepēuh', 'tepēhui', b, intransitive).  % to fall upon (TEPĒHUI?)
verb_stem_type(tepēhui, 'tepēhui', 'tepēuh', 'tepēhui', b, transitive).  % reflexive/transitive counterpart
verb_stem_type(tepehuia, 'tepēhuia', 'tepēhuih', 'tepēhui', c, transitive).  % to push someone (applic.)
verb_stem_type(tepeoa, 'tepeoa', 'tepeoac', 'tepeoa', a1, transitive).  % to push, throw down (variant of TEPĒHU(A))
verb_stem_type(tepetlatzatzaca, 'tepetlatzatzaca', 'tepetlatzatzac', 'tepetlatzatzaca', a1, intransitive).  % to fortify (TEPĒ- + TZATZAC(A))
verb_stem_type(tepeuhtiquiza, 'tepeuhtiquiza', 'tepeuhtiquiz', 'tepeuhtiquiz', b, intransitive).  % to go out carrying things
verb_stem_type(tepeuhtiquiza, 'tepeuhtiquiza', 'tepeuhtiquiz', 'tepeuhtiquiz', b, transitive).  % to carry things out (transitive/object-marked use)
verb_stem_type(tepeuhtiquiza, 'tepeuhtiquiza', 'tepeuhtiquiz', 'tepeuhtiquiza', b, intransitive).  % to go out carrying things (TEPEUH + TI- + QUIZA)
verb_stem_type(tepexiui, 'tepexiui', 'tepexiuic', 'tepexiui', b, transitive).  % to fall off a precipice (mo-tepexiui); K TEPEXIHU(I)
verb_stem_type(tepociōtia, 'tepociōtiā', 'tepociōti', 'tepociōtiā', c, transitive).  % pret. without h
verb_stem_type(tepociōtia, 'tepociōtiā', 'tepociōtih', 'tepociōtī', c, transitive).  % to put in irons (TEPOZ- + -tiā)
verb_stem_type(tepotztoca, 'tepotztoca', 'tepotztocac', 'tepotztoca', a1, transitive).  % to follow behind (K TEPOTZTOCA)
verb_stem_type(teputzti, 'teputzti', 'teputzti', 'teputzti', a1, intransitive).  % to retreat ( moteputztique)
verb_stem_type(teputzti, 'teputzti', 'teputzti', 'teputzti', a1, transitive).  % reflexive/transitive counterpart
verb_stem_type(teputztia, 'teputztia', 'teputzti', 'teputzti', c, transitive).  % to turn someone back (no K headword)
verb_stem_type(tepuzmihui, 'tepuzmihui', 'tepuzmihui', 'tepuzmihui', b, transitive).  % shoot with iron bolts (TEPOZ-TLI + MĪ-TL)
verb_stem_type(tequechia, 'tequechia', 'tequechih', 'tequechi', c, transitive).  % to pour out, set before (K TEQUECHIA)
verb_stem_type(tequia, 'tequia', 'tequih', 'tequī', c, transitive).  % to scold
verb_stem_type(tequihuia, 'tequihuiā', 'tequihuih', 'tequihuī', c, transitive).  % to use, work with
verb_stem_type(tequilia, 'tequiliā', 'tequilih', 'tequili', c, transitive).  % give to someone (K TEQUILIA?)
verb_stem_type(tequioa, 'tequioa', 'tequioac', 'tequioa', a1, transitive).  % TEQUIOA to serve
verb_stem_type(tequipachoa, 'tequipachoa', 'tequipacho', 'tequipacho', c, transitive).  % to trouble (optative tequipachocān)
verb_stem_type(tequipachoa, 'tequipachoa', 'tequipacho', 'tequipachoa', c, transitive).  % to trouble someone (K TEQUIPACHOA)
verb_stem_type(tequipachoa, 'tequipachoa', 'tequipachoh', 'tequipachō', c, transitive).  % to afflict someone (K TEQUIPACHOĀ)
verb_stem_type(tequiti, 'tequiti', 'tequitih', 'tequiti', b, intransitive).  % to work, do tribute duty; K TEQUIT(I)
verb_stem_type(tequiti, 'tequiti', 'tequitih', 'tequiti', b, transitive).  % to serve/do something; K TEQUIT(I)
verb_stem_type(tequitia, 'tequitiā', 'tequiti', 'tequiti', c, transitive).  % to assign work (TEQUI-TL + -TIA)
verb_stem_type(tequitlaneloa, 'tequitlaneloa', 'tequitlaneloh', 'tequitlanelō', c, intransitive).  % to paddle
verb_stem_type(teteca, 'teteca', 'tetecac', 'teteca', a1, transitive).  % to spread repeatedly; K TETEC(A)
verb_stem_type(teteca, 'tētēca', 'tētēcac', 'tētēca', a1, transitive).  % K TĒTĒCA to stretch out, spread
verb_stem_type(tētēca, 'tētēca', 'tētēca', 'tētēca', a1, transitive).  % to lay stones (K TETĒCA?)
verb_stem_type(tetecuica, 'tetecuica', 'tetecuicac', 'tetecuica', a1, intransitive).  % K TETECUICA 'to roar, thunder, resonate' (of flame); no preterit is recorded.
verb_stem_type(tetecuitza, 'tetecuitza', 'tetecuitzac', 'tetecuitza', a1, transitive).  % attested with TLA-: tla-tetecuitza.
verb_stem_type(tetemi, 'tetemi', 'teten', 'tetemi', b, intransitive).  % to fill up (K TETEM(I))
verb_stem_type(tētēna, 'tētēna', 'tētēn', 'tētēna', a1, transitive).  % to stone people (TĒ + TĒNA?)
verb_stem_type(tetentia, 'tetentiā', 'tetentih', 'tetentī', c, transitive).  % to fill with people (TETL + TENTIA)
verb_stem_type(tetepachoa, 'tetepachoa', 'tetepacho', 'tetepachō', c, transitive).  % h-less perfective as written
verb_stem_type(tetepachoa, 'tetepachoa', 'tetepachoh', 'tetepachō', c, transitive).  % TETEPACHOA to press people down
verb_stem_type(tetexoa, 'tetexoa', 'tetexo', 'tetexō', c, transitive).  % gnaw (FC short final a)
verb_stem_type(tetexoa, 'tetexoā', 'tetexo', 'tetexō', c, transitive).  % gnaw (K TETEXOA)
verb_stem_type(tetiya, 'tētiya', 'tētiya', 'tētiya', a1, intransitive).  % to harden
verb_stem_type(tetlantlaano, 'tetlantlaano', 'tetlantlaan', 'tetlantlaano', a1, transitive).  % to take children along
verb_stem_type(tetzāhui, 'tetzāhui', 'tetzāuh', 'tetzāhui', b, transitive).  % to take as an omen
verb_stem_type(teucihui, 'teucihui', 'teucihui', 'teucihui', a1, transitive).  % TEOHCIHU(I) 'to be hungry'; T has lost the glottal stop: teucihui, transitive 'to crave something' (Karttunen, s.v. TEOHCIHU(I)).
verb_stem_type(tēucuinonōtza, 'tēucuinonōtza', 'tēucuinonōtz', 'tēucuinonōtza', b, transitive).  % counsel with the lord (TĒUC-TLI + NONŌTZA)
verb_stem_type(tēuh, 'tēuh', 'tēuh', 'tēuh', b, transitive).  % to take someone for a god (TEŌ-TL; no K headword)
verb_stem_type(teutoca, 'teutoca', 'teutoca', 'teutoca', a1, transitive).  % to worship as a god (TEŌ-TL + TOCA)
verb_stem_type(tilinia, 'tilinia', 'tilinih', 'tiliniā', c, transitive).  % to pull at (K TILINIA)
verb_stem_type(tilinia, 'tīlinia', 'tīlini', 'tīlini', a1, transitive).  % press, tighten (K TĪLINIA)
verb_stem_type(tilinia, 'tīliniā', 'tīlinih', 'tīlini', c, transitive).  % to twist (K TĪLINIĀ)
verb_stem_type(titlani, 'titlani', 'titlan', 'titlani', a1, transitive).  % to send (K TĪTLAN(I))
verb_stem_type(titlani, 'tītlani', 'tītlan', 'tītlani', a1, transitive).  % to send (K TĪTLAN(I))
verb_stem_type(tlaca, 'tlaca', 'tlacac', 'tlaca', a1, transitive).  % qu-i-huāl-tlaca 'to come bringing/leading someone'.
verb_stem_type(tlacacaoa, 'tlacacaoa', 'tlacacaoh', 'tlacacaō', c, intransitive).  % to make a clamor (K TLACAOACA)
verb_stem_type(tlacacuepa, 'tlacacuepa', 'tlacacuep', 'tlacacuepa', b, transitive).  % to change appearance (TLA- + CACUEP(A)?)
verb_stem_type(tlacahualtia, 'tlacahualtiā', 'tlacahualtih', 'tlacahualtī', c, transitive).  % to dissuade (TLA- + CAHUALTIA)
verb_stem_type(tlacamani, 'tlacamani', 'tlacaman', 'tlacamani', b, intransitive).  % to be quiet; no K headword
verb_stem_type(tlacamati, 'tlacamati', 'tlacamat', 'tlacamati', a1, transitive).  % to obey someone (K TLACĀMATI)
verb_stem_type(tlacamati, 'tlācamati', 'tlācamah', 'tlācamati', b, transitive).  % K TLĀCAMAT(I) to obey
verb_stem_type(tlacamatia, 'tlacamatia', 'tlacamatih', 'tlacamati', c, transitive).  % to obey someone (variant)
verb_stem_type(tlacaoaca, 'tlacaoaca', 'tlacaoacac', 'tlacaoaca', a1, intransitive).  % to shout, raise a clamor
verb_stem_type(tlācateculōhuia, 'tlācateculōhuiā', 'tlācateculōhuih', 'tlācateculōhui', c, transitive).  % to bewitch (TLĀCATECULŌ-TL + -HUIA)
verb_stem_type(tlācati, 'tlācati', 'tlācat', 'tlācati', b, intransitive).  % K TLĀCAT(I) to be born
verb_stem_type(tlācatilia, 'tlācatiliā', 'tlācatilih', 'tlācatili', c, transitive).  % give birth to (TLĀCATI + applic.)
verb_stem_type(tlācatlachieltia, 'tlācatlachieltia', 'tlācatlachieltih', 'tlācatlachieltī', c, transitive).  % watch people (tlāca- + tlachieltiā)
verb_stem_type(tlācatlalia, 'tlācatlaliā', 'tlācatlalih', 'tlācatlali', c, transitive).  % set people down (tlāca- + tlāliā)
verb_stem_type(tlachia, 'tlachia', 'tlachix', 'tlachia', b, intransitive).  % to look, gaze; TLACHIY(A), pret. TLACHIX
verb_stem_type(tlachia, 'tlachia', 'tlachix', 'tlachia', b, transitive).  % K TLACHIY(A), transitive use (tla-tlachia)
verb_stem_type(tlachia, 'tlachie', 'tlachix', 'tlachie', b, intransitive).  % variant TLACHIY(E)
verb_stem_type(tlachia, 'tlachiya', 'tlachix', 'tlachiya', b, intransitive).  % look (FC tlachiyaz)
verb_stem_type(tlāchia, 'tlāchia', 'tlāchix', 'tlāchia', b, intransitive).  % spelling variant of TLACHIY(A)
verb_stem_type(tlachicahuia, 'tlachicahuia', 'tlachicahuih', 'tlachicahuia', c, intransitive).  % to work
verb_stem_type(tlachicahuia, 'tlachicāhuiā', 'tlachicāhuih', 'tlachicāhuiā', c, intransitive).  % to work (TLA- + CHICĀHUA)
verb_stem_type(tlachicalhuia, 'tlachicalhuiā', 'tlachicalhuih', 'tlachicalhuiā', c, intransitive).  % FC spelling, to work
verb_stem_type(tlachichitoca, 'tlachichitoca', 'tlachichitocac', 'tlachichitoca', a1, intransitive).  % HUĀL + TLA + CHICHITOCA (K CHICHITOCA 'crackle'); lexicalized
verb_stem_type(tlachīhua, 'tlachīhua', 'tlachīuh', 'tlachīhua', b, intransitive).  % to do things, work
verb_stem_type(tlachīhuia, 'tlachīhuiā', 'tlachīhuih', 'tlachīhui', c, transitive).  % to do something to someone (TLA- + CHĪHUIA)
verb_stem_type(tlachiyalia, 'tlachiyalia', 'tlachiyalih', 'tlachiyalia', a1, intransitive).  % to be alert
verb_stem_type(tlachiyaltia, 'tlachiyaltiā', 'tlachiyaltih', 'tlachiyaltī', c, transitive).  % to aim
verb_stem_type(tlachiyelia, 'tlachiyelia', 'tlachiyelih', 'tlachiyeliā', c, intransitive).  % to keep watch (TLACHIYA + applic.)
verb_stem_type(tlachiyelia, 'tlachiyelia', 'tlachiyelih', 'tlachiyeliā', c, transitive).  % reflexive/transitive counterpart
verb_stem_type(tlachiyeltia, 'tlachiyeltia', 'tlachiyeltih', 'tlachiyeltia', c, transitive).  % short-vowel variant
verb_stem_type(tlachiyeltia, 'tlachiyeltiā', 'tlachiyeltih', 'tlachiyeltiā', c, transitive).  % to watch, observe (K TLACHIYELTIĀ < TLACHIYALTIA)
verb_stem_type(tlachoquīztlehua, 'tlachoquīztlehua', 'tlachoquīztleh', 'tlachoquīztlehua', b, transitive).  % transitive variant
verb_stem_type(tlachpana, 'tlachpāna', 'tlachpān', 'tlachpāna', b, transitive).  % to sweep (K TLACHPĀN(A))
verb_stem_type(tlaciāhuiltia, 'tlaciāhuiltiā', 'tlaciāhuilti', 'tlaciāhuilti', c, transitive).  % to make someone suffer (TLACIĀHUILTIA)
verb_stem_type(tlacomacho, 'tlacomacho', 'tlacomachoc', 'tlacomacho', a1, intransitive).  % to be angry, take offense (tla- + COMACHO)
verb_stem_type(tlacua, 'tlacua', 'tlacuah', 'tlacua', b, intransitive).  % to eat (K TLACUA, fused tla-)
verb_stem_type(tlacualtia, 'tlacualtia', 'tlacualti', 'tlacualti', c, transitive).  % to feed someone (K TLACUALTIA)
verb_stem_type(tlacuauhnahuatia, 'tlacuauhnahuatia', 'tlacuauhnahuati', 'tlacuauhnahuati', c, transitive).  % to give strict orders (TLACUAUH + NAHUATIA)
verb_stem_type(tlacuauhnahuatia, 'tlacuauhnahuatiā', 'tlacuauhnahuatih', 'tlacuauhnahuati', c, transitive).  % to give strict orders
verb_stem_type(tlacuauhquetza, 'tlacuauhquetza', 'tlacuauhquetz', 'tlacuauhquetza', b, transitive).  % bow (TLACUAHU(I) + QUETZA)
verb_stem_type(tlacuepilia, 'tlacuepili', 'tlacuepili', 'tlacuepili', c, transitive).  % perfective without h (quitlacuepilica)
verb_stem_type(tlacuepilia, 'tlacuepiliā', 'tlacuepilih', 'tlacuepili', c, transitive).  % to distort things for someone; TLACUEP(A) + applic.
verb_stem_type(tlacuihcui, 'tlacuihcui', 'tlacuihcuic', 'tlacuihcui', a1, transitive).  % to sweep (K TLACUIHCUI)
verb_stem_type(tlacxipāhuia, 'tlacxipāhuia', 'tlacxipāhuih', 'tlacxipāhuī', c, intransitive).  % TLACXIPĀHUI(A) go on foot
verb_stem_type(tlacxipanhuia, 'tlacxipanhuiā', 'tlacxipanhuih', 'tlacxipanhui', c, intransitive).  % TLACXIPANHUI(A) go on foot
verb_stem_type(tlacxitemoa, 'tlacxitemoa', 'tlacxitemoh', 'tlacxitemō', c, intransitive).  % to look for things (TLA + CXI? + TEMOĀ)
verb_stem_type(tlaēltia, 'tlaēltiā', 'tlaēlti', 'tlaēlti', c, transitive).  % to nauseate, disgust (TLAĒLTIA)
verb_stem_type(tlahpaloa, 'tlahpaloā', 'tlahpalo', 'tlahpalō', c, transitive).  % TLAHPALOĀ 'to greet someone'; the writes the perfective without the glottal stop (tlahpalo-), hence this attested variant.
verb_stem_type(tlahpaloa, 'tlahpaloā', 'tlahpaloh', 'tlahpalō', c, transitive).  % to greet
verb_stem_type(tlahtlani, 'tlahtlani', 'tlahtlan', 'tlahtlani', a1, transitive).  % to ask for (K TLAHTLAN(I))
verb_stem_type(tlahtlanilia, 'tlahtlaniliā', 'tlahtlanili', 'tlahtlaniliā', c, transitive).  % to ask someone for something (TLAHTLAN(I) + applic.)
verb_stem_type(tlahtlaza, 'tlahtlaza', 'tlahtlaz', 'tlahtlaza', a1, transitive).  % to throw things (TLA + TLĀZ(A))
verb_stem_type(tlahtlaza, 'tlahtlāza', 'tlahtlāz', 'tlahtlāza', b, transitive).  % to throw, shoot; K TLAHTLĀZ(A)
verb_stem_type(tlahtlāza, 'tlahtlāza', 'tlahtlāz', 'tlahtlāza', a1, transitive).  % to hurl (K TLAHTLĀZA)
verb_stem_type(tlahtoa, 'tlahtōa', 'tlahtoh', 'tlahtō', c, intransitive).  % to speak
verb_stem_type(tlahtocanonōtza, 'tlahtocanonōtza', 'tlahtocanonōtz', 'tlahtocanonōtza', b, transitive).  % counsel with the ruler (TLAHTOĀNI + NONŌTZA)
verb_stem_type(tlahtohcachīhua, 'tlahtohcachīhua', 'tlahtohcachīuh', 'tlahtohcachīhuā', b, intransitive).  % to rule, act as lord (TLAHTOHCĀ- + CHĪHU(A))
verb_stem_type(tlahtōltia, 'tlahtoltiā', 'tlahtolti', 'tlahtoltiā', c, transitive).  % short-vowel variant (quintlahtoltiqueh)
verb_stem_type(tlahtōltia, 'tlahtōltiā', 'tlahtōltih', 'tlahtōltiā', c, transitive).  % to speak to, interrogate (K TLAHTŌLTIĀ)
verb_stem_type(tlahtotoca, 'tlahtotoca', 'tlahtotocac', 'tlahtotoca', a1, intransitive).  % go shouting
verb_stem_type(tlahuelcahua, 'tlahuēlcahua', 'tlahuēlcahuac', 'tlahuēlcahuā', b, transitive).  % anger (K TLAHUĒLCAHU(A))
verb_stem_type(tlahuelcahua, 'tlahuēlcahua', 'tlahuēlcauh', 'tlahuēlcahuā', b, transitive).  % anger (FC pret. tlahuēlcauh)
verb_stem_type(tlahuēlcui, 'tlahuēlcui', 'tlahuēlcui', 'tlahuēlcui', a1, intransitive).  % to grow angry (K TLAHUĒLCU(I))
verb_stem_type(tlahuelquixtia, 'tlahuelquixtia', 'tlahuelquixtih', 'tlahuelquixti', c, transitive).  % to drive someone out (TLAHUEL + QUĪXTIĀ)
verb_stem_type(tlāhuia, 'tlāhuiā', 'tlāhuih', 'tlāhuī', c, intransitive).  % to dawn, shine (K TLĀHUIĀ)
verb_stem_type(tlāhuilia, 'tlāhuilia', 'tlāhuilih', 'tlāhuilī', c, intransitive).  % to shine, give light
verb_stem_type(tlāhuilia, 'tlāhuiliā', 'tlāhuilih', 'tlāhuilī', c, transitive).  % to illuminate (K TLĀHUILIĀ)
verb_stem_type(tlahuitolhui, 'tlahuitolhui', 'tlahuitolhui', 'tlahuitolhui', b, transitive).  % (TLAHUITŌN?); analysis uncertain
verb_stem_type(tlaīxcuāmati, 'tlaīxcuāmati', 'tlaīxcuāmat', 'tlaīxcuāmati', a1, transitive).  % to be ashamed (K ĪXCUĀMATI)
verb_stem_type(tlaixmoyāhua, 'tlaixmoyāhua', 'tlaixmoyāhuac', 'tlaixmoyāhua', b, intransitive).  % to become confused (TLA + ĪX + MO + YĀHUA)
verb_stem_type(tlaīxnamiqui, 'tlaīxnamiqui', 'tlaīxnamic', 'tlaīxnamiqui', b, transitive).  % to meet things
verb_stem_type(tlaīxnelhuia, 'tlaīxnelhuia', 'tlaīxnelhuih', 'tlaīxnelhui', c, intransitive).  % to be confused (TLA + ĪX + NELHUIA)
verb_stem_type(tlaīxnextia, 'tlaīxnextia', 'tlaīxnextih', 'tlaīxnexti', c, transitive).  % to confuse someone's face (TLA + ĪX + NĒXTIĀ)
verb_stem_type(tlaīyecahui, 'tlaīyecahui', 'tlaīyecahuic', 'tlaīyecahui', b, intransitive).  % to improve, get better (TLA + ĪYECAHUI)
verb_stem_type(tlalcua, 'tlalcua', 'tlalcua', 'tlalcua', b, transitive).  % to eat earth (perfective as written)
verb_stem_type(tlalcua, 'tlalcua', 'tlalcuah', 'tlalcua', b, transitive).  % to eat earth (TLĀL-LI + CUA)
verb_stem_type(tlalcuatimani, 'tlalcuatimani', 'tlalcuatiman', 'tlalcuatimani', b, intransitive).  % to lie face down (TLALCUATI + MANI)
verb_stem_type(tlalhuacaqui, 'tlalhuacaqui', 'tlalhuacaquic', 'tlalhuacaqui', b, intransitive).  % to come onto dry land
verb_stem_type(tlalhuahca, 'tlalhuahca', 'tlalhuahca', 'tlalhuahca', a1, intransitive).  % to come out on dry land (TLĀL-LI + HUAHCA)
verb_stem_type(tlāli, 'tlali', 'tlalih', 'tlali', b, transitive).  % to place (TLĀLIĀ, unmarked stem before -to)
verb_stem_type(tlāli, 'tlāli', 'tlālih', 'tlāli', b, transitive).  % to place (TLĀLIĀ, stem before -to)
verb_stem_type(tlalia, 'tlalia', 'tlali', 'tlalia', c, transitive).  % h-less perfective (quitlalique)
verb_stem_type(tlalia, 'tlalia', 'tlalih', 'tlali', c, transitive).  % to put, set (attested short-vowel variant of TLĀLIĀ)
verb_stem_type(tlalia, 'tlāliā', 'tlāli', 'tlāli', c, transitive).  % h-less perfective (tlalitiuh)
verb_stem_type(tlalia, 'tlāliā', 'tlāli', 'tlālī', c, transitive).  % to put (K TLATLĀLIĀ; sources pret. tlāli-)
verb_stem_type(tlalia, 'tlāliā', 'tlālih', 'tlālī', c, transitive).  % to put
verb_stem_type(tlalilia, 'tlaliliā', 'tlalili', 'tlaliliā', c, transitive).  % to place for someone (applic. of TLĀLIĀ)
verb_stem_type(tlalilia, 'tlaliliā', 'tlalilih', 'tlalili', c, transitive).  % place for someone (TLĀLIĀ + applic.)
verb_stem_type(tlallolini, 'tlāllolīni', 'tlāllolīn', 'tlāllolīni', b, intransitive).  % tlāl-l-olīni, assimilated spelling in the sources
verb_stem_type(tlallolini, 'tlālolīni', 'tlālolīn', 'tlālolīni', b, intransitive).  % for the earth to quake (K TLĀLOLĪN(I))
verb_stem_type(tlaloa, 'tlaloa', 'tlaloh', 'tlalo', c, intransitive).  % short future stem (motlaloznequi)
verb_stem_type(tlaloa, 'tlaloa', 'tlaloh', 'tlalo', c, transitive).  % reflexive/transitive counterpart
verb_stem_type(tlaloa, 'tlaloa', 'tlaloh', 'tlalō', c, intransitive).  % to run (K TLALOĀ; momauhcatlaloa)
verb_stem_type(tlaloa, 'tlaloā', 'tlaloh', 'tlalō', c, intransitive).  % K TLALOĀ (v refl) to run
verb_stem_type(tlāloa, 'tlāloa', 'tlāloh', 'tlālō', c, intransitive).  % to run (K TLĀLOA)
verb_stem_type(tlalpoliuh, 'tlalpoliuh', 'tlalpoliuh', 'tlalpoliuh', b, intransitive).  % the land is destroyed (TLĀL-LI + POLIHU(I))
verb_stem_type(tlaltoca, 'tlaltōca', 'tlaltōcac', 'tlaltōca', b, transitive).  % to bury (TLĀL-LI + TŌCA)
verb_stem_type(tlama, 'tlamā', 'tlamah', 'tlamā', b, transitive).  % pile up (K TLAMĀ)
verb_stem_type(tlamaca, 'tlamaca', 'tlamaca', 'tlamaca', a1, transitive).  % to give things to someone (TLA- + MACA)
verb_stem_type(tlamaca, 'tlamaca', 'tlamacac', 'tlamaca', a1, transitive).  % K TLAMACA to serve food
verb_stem_type(tlamacehuia, 'tlamacehuiā', 'tlamacehuih', 'tlamacehuiā', c, intransitive).  % to gain favor (K TLAMACEHUIĀ)
verb_stem_type(tlamāhui, 'tlamāhui', 'tlamāhui', 'tlamāhui', b, intransitive).  % to agree (perfective tlamāhui as written)
verb_stem_type(tlamāhui, 'tlamāhui', 'tlamāhui', 'tlamāhui', b, transitive).  % to agree on something (transitive use)
verb_stem_type(tlamāhui, 'tlamāhui', 'tlamāhuih', 'tlamāhui', b, intransitive).  % to agree, be content (TLAMĀHUI)
verb_stem_type(tlamahuizoa, 'tlamahuizoa', 'tlamahuizo', 'tlamahuizo', b, intransitive).  % to marvel (perfective as written)
verb_stem_type(tlamahuizoa, 'tlamahuizoā', 'tlamahuizoh', 'tlamahuizō', c, intransitive).  % to marvel (K TLAMAHUIZOA)
verb_stem_type(tlamamaca, 'tlamamaca', 'tlamamacac', 'tlamamaca', a1, transitive).  % to carry loads (K TLAMAMA / MĀMĀ 'carry'; attested tlamamaca)
verb_stem_type(tlamamaca, 'tlamāmaca', 'tlamāmacac', 'tlamāmaca', a1, transitive).  % to give provisions (TLA- + MĀMACA)
verb_stem_type(tlamatemoa, 'tlamatemoa', 'tlamatemoh', 'tlamatemō', c, intransitive).  % to look for things
verb_stem_type(tlamati, 'tlamati', 'tlamat', 'tlamati', a1, intransitive).  % to know things (TLA- + MAT(I))
verb_stem_type(tlamati, 'tlamati', 'tlamat', 'tlamati', a1, transitive).  % to know things, find out (K TLAMATI)
verb_stem_type(tlamatia, 'tlamatia', 'tlamatih', 'tlamatia', c, intransitive).  % to know (TLA- + MAT(I), sources tlamatia)
verb_stem_type(tlamatilia, 'tlamatiliā', 'tlamatili', 'tlamatili', c, transitive).  % to make wise, teach; K TLAMATILIA
verb_stem_type(tlamatilia, 'tlamatiliā', 'tlamatilī', 'tlamatili', c, transitive).  % to make wise (FC long ī); K TLAMATILIA
verb_stem_type(tlamatlahuia, 'tlamatlahuia', 'tlamatlahuih', 'tlamatlahuia', a1, intransitive).  % to hunt, fish
verb_stem_type(tlamatzoa, 'tlamatzoā', 'tlamatzoh', 'tlamatzō', c, intransitive).  % intransitive use (tlamatzoaia)
verb_stem_type(tlamatzoa, 'tlamatzoā', 'tlamatzoh', 'tlamatzō', c, transitive).  % to inform (K TLAMATZOA)
verb_stem_type(tlamauhtilitia, 'tlamauhtilitiā', 'tlamauhtilitih', 'tlamauhtiliti', c, transitive).  % to frighten people (TLA- + MAUHTIA caus.)
verb_stem_type(tlamelāuhcaquetza, 'tlamelāuhcaquetza', 'tlamelāuhcaquetz', 'tlamelāuhcaquetza', b, intransitive).  % to stand straight
verb_stem_type(tlamelāuhcaquetza, 'tlamelāuhcaquetza', 'tlamelāuhcaquetz', 'tlamelāuhcaquetza', b, transitive).  % reflexive/transitive counterpart
verb_stem_type(tlami, 'tlami', 'tlan', 'tlami', b, intransitive).  % to end (K TLAM(I), pret. TLAN)
verb_stem_type(tlamia, 'tlamiā', 'tlamih', 'tlamī', c, transitive).  % end, conclude (K TLAMIĀ)
verb_stem_type(tlanāhuati, 'tlanāhuati', 'tlanāhuati', 'tlanāhuati', b, intransitive).  % h-less perfective variant (tlanāhuatica)
verb_stem_type(tlanāhuati, 'tlanāhuati', 'tlanāhuatih', 'tlanāhuati', b, intransitive).  % to rule, order (K TLANĀHUATI)
verb_stem_type(tlanāhuatia, 'tlanāhuatia', 'tlanāhuatih', 'tlanāhuatia', c, intransitive).  % to give orders (intransitive use)
verb_stem_type(tlanāhuatia, 'tlanāhuatia', 'tlanāhuatih', 'tlanāhuatia', c, transitive).  % short-vowel variant
verb_stem_type(tlanāhuatia, 'tlanāhuatiā', 'tlanāhuatih', 'tlanāhuatiā', c, transitive).  % to rule/order something (caus.)
verb_stem_type(tlanamacaquiltia, 'tlanamacaquiltia', 'tlanamacaquilti', 'tlanamacaquilti', c, transitive).  % to sell to people (as written)
verb_stem_type(tlanamacaquiltia, 'tlanamacaquiltia', 'tlanamacaquiltih', 'tlanamacaquilti', c, transitive).  % to sell things to people
verb_stem_type(tlancua, 'tlancua', 'tlancuac', 'tlancua', a1, transitive).  % to finish (CEM- + TLAM(I) type; FC quihualcentlancua)
verb_stem_type(tlanec, 'tlaneci', 'tlanez', 'tlaneci', b, intransitive).  % K TLANEC(I) 'for day to break'; preterit TLANEZ.
verb_stem_type(tlanelhuia, 'tlanelhuia', 'tlanelhui', 'tlanelhui', c, transitive).  % to paddle for someone (perfective without h)
verb_stem_type(tlanelhuia, 'tlanelhuia', 'tlanelhuih', 'tlanelhui', c, transitive).  % to paddle for someone (TLA + NELHUIA)
verb_stem_type(tlanelhuia, 'tlanelhuia', 'tlanelhuih', 'tlanelhuiā', c, transitive).  % to work for someone (TLA- + NELHUIA)
verb_stem_type(tlanelhuia, 'tlanelhuiā', 'tlanelhuih', 'tlanelhuiā', c, transitive).  % to join everyone
verb_stem_type(tlanelhuītia, 'tlanelhuītiā', 'tlanelhuītih', 'tlanelhuīti', c, transitive).  % to pole a boat along; K TLANELHUĪTIA
verb_stem_type(tlaneloa, 'tlaneloa', 'tlaneloh', 'tlanelō', c, intransitive).  % to paddle
verb_stem_type(tlaneltilia, 'tlaneltilia', 'tlaneltilih', 'tlaneltili', c, transitive).  % to verify things
verb_stem_type(tlanenectia, 'tlanenectia', 'tlanenecti', 'tlanenecti', c, transitive).  % to offer things (i-less variant)
verb_stem_type(tlanenectia, 'tlanenectiā', 'tlanenecti', 'tlanenecti', c, transitive).  % to offer things (TLA- + NENECTIA)
verb_stem_type(tlanenequiltia, 'tlanenequiltia', 'tlanenequilti', 'tlanenequilti', c, transitive).  % to offer various things (i-less variant)
verb_stem_type(tlanenequiltia, 'tlanenequiltiā', 'tlanenequilti', 'tlanenequilti', c, transitive).  % to offer various things (TLA- + NENEQUILTIA)
verb_stem_type(tlanequilia, 'tlanequili', 'tlanequili', 'tlanequili', c, transitive).  % pret. without final h, as written
verb_stem_type(tlanequilia, 'tlanequiliā', 'tlanequilih', 'tlanequiliā', c, transitive).  % to desire for oneself (K TLANEQUI + applic.)
verb_stem_type(tlani, 'tlani', 'tlan', 'tlani', a1, transitive).  % to ask for (TLAHTLAN(I) without h): quitlanizqueh
verb_stem_type(tlanilia, 'tlanilia', 'tlanili', 'tlanilia', c, transitive).  % to ask someone for something (TLAHTLANILIA, h-less)
verb_stem_type(tlanmani, 'tlanmani', 'tlanman', 'tlanmani', b, intransitive).  % tlanmani 'to be among, go among' (tlan 'among' + mani 'be located').
verb_stem_type(tlanonōchilia, 'tlanonōchiliā', 'tlanonōchilih', 'tlanonōchili', c, transitive).  % to address things to someone (TLA- + NONŌCHILIA)
verb_stem_type(tlanonotza, 'tlanonotza', 'tlanonotz', 'tlanonotza', a1, transitive).  % to discuss things (TLA + NONOTZ(A))
verb_stem_type(tlaocultia, 'tlaocultiā', 'tlaoculti', 'tlaocultiā', c, intransitive).  % pret. without h
verb_stem_type(tlaocultia, 'tlaocultiā', 'tlaocultih', 'tlaocultī', c, intransitive).  % to grieve (K TLAOCULTIĀ)
verb_stem_type(tlāōya, 'tlāōya', 'tlāōx', 'tlāōya', b, intransitive).  % to dawn (K TLAŌY(A))
verb_stem_type(tlapalihui, 'tlapalihui', 'tlapaliuh', 'tlapalihui', b, intransitive).  % to become red (K TLAPALIHU(I))
verb_stem_type(tlapaloa, 'tlapaloa', 'tlahpalo', 'tlapalō', c, transitive).  % to greet (TLA + PALOĀ variant)
verb_stem_type(tlapaloa, 'tlapaloa', 'tlapalo', 'tlapalo', a1, transitive).  % to dare something; K TLAPALOĀ
verb_stem_type(tlapaloa, 'tlapaloa', 'tlapalo', 'tlapaloa', c, transitive).  % to greet (TLAHPALOĀ without h)
verb_stem_type(tlapaloa, 'tlapaloā', 'tlapaloh', 'tlapalō', c, transitive).  % h-less variant of TLAHPALOĀ 'greet'
verb_stem_type(tlapia, 'tlapia', 'tlapix', 'tlapia', b, intransitive).  % intransitive use (tlapiaia)
verb_stem_type(tlapia, 'tlapia', 'tlapix', 'tlapia', b, transitive).  % to watch (K TLAHPIY(A))
verb_stem_type(tlapielia, 'tlapieliā', 'tlapielih', 'tlapieli', c, transitive).  % guard things (TLA- + PIELIA)
verb_stem_type(tlapielilia, 'tlapielilia', 'tlapielilih', 'tlapielili', c, transitive).  % to guard things for someone (TLA + PIELIA)
verb_stem_type(tlapielilia, 'tlapieliliā', 'tlapielilih', 'tlapielili', c, transitive).  % guard things (TLA- + PIELILIA)
verb_stem_type(tlapielo, 'tlapielo', 'tlapielo', 'tlapielo', a1, intransitive).  % same stem with final ō shortened before the imperfect -ia
verb_stem_type(tlapielo, 'tlapielō', 'tlapielō', 'tlapielō', a1, intransitive).  % it is guarded: nonactive of tla- + PIY(A) (K PIYALŌ); attested FC tlapielo
verb_stem_type(tlapōhua, 'tlapōhua', 'tlapōhuh', 'tlapōhua', b, transitive).  % TLA-PŌHUA with perfective pōhuh
verb_stem_type(tlapōhua, 'tlapōhua', 'tlapōuh', 'tlapōhua', b, transitive).  % TLA-PŌHUA count, recount
verb_stem_type(tlapopoloca, 'tlapopoloca', 'tlapopolocac', 'tlapopoloca', a1, intransitive).  % to babble; POPOLOCA with fused tla
verb_stem_type(tlaquentia, 'tlaquēntiā', 'tlaquēnti', 'tlaquēnti', c, transitive).  % TLAQUĒNTIĀ dress someone
verb_stem_type(tlaquetza, 'tlaquetza', 'tlaquetza', 'tlaquetza', a1, transitive).  % to build
verb_stem_type(tlatemoa, 'tlatemoa', 'tlatemoh', 'tlatemō', c, intransitive).  % to look for things (TLA + TEMOĀ)
verb_stem_type(tlatemoa, 'tlatemoā', 'tlatemo', 'tlatemō', c, transitive).  % TLA-TEMOĀ search, look for
verb_stem_type(tlatenmachilia, 'tlatenmachiliā', 'tlatenmachili', 'tlatenmachiliā', c, transitive).  % TLA- + TENMACHILIA
verb_stem_type(tlatepehuilia, 'tlatepehuilia', 'tlatepehuili', 'tlatepehuili', c, transitive).  % to shove things for someone (perfective as written)
verb_stem_type(tlatepehuilia, 'tlatepehuilia', 'tlatepehuilih', 'tlatepehuili', c, transitive).  % to shove things for someone
verb_stem_type(tlathui, 'tlathui', 'tlathui', 'tlathui', a1, intransitive).  % to dawn (K TLAHTHUI?)
verb_stem_type(tlathui, 'tlathui', 'tlathuic', 'tlathui', a1, intransitive).  % K TLATHUI to dawn (pret. TLATHUIC)
verb_stem_type(tlathui, 'tlathui', 'tlathuic', 'tlathui', b, intransitive).  % to dawn (K TLATHUI)
verb_stem_type(tlati, 'tlati', 'tlati', 'tlati', a1, intransitive).  % hide (K TLATĪ(A); FC pret. tlati-)
verb_stem_type(tlati, 'tlati', 'tlati', 'tlati', a1, transitive).  % to burn something (K TLATIĀ, h-less perfective as written)
verb_stem_type(tlatia, 'tlatiā', 'tlati', 'tlati', c, transitive).  % to burn (homonym of TLATIĀ 'hide')
verb_stem_type(tlatia, 'tlatīa', 'tlatī', 'tlatī', c, transitive).  % pret. without h (motlati-que)
verb_stem_type(tlatia, 'tlatīa', 'tlatīh', 'tlatī', c, transitive).  % to hide (something)
verb_stem_type(tlātia, 'tlātia', 'tlātih', 'tlāti', c, transitive).  % to hide (K TLĀTIĀ, long ā)
verb_stem_type(tlātiā, 'tlātiā', 'tlātih', 'tlātī', c, transitive).  % to hide (K TLĀTIĀ)
verb_stem_type(tlatla, 'tlatla', 'tlatla', 'tlatla', a1, intransitive).  % to burn; K TLATLA
verb_stem_type(tlatla, 'tlatla', 'tlatlac', 'tlatla', a1, intransitive).  % to burn (K TLATLA)
verb_stem_type(tlatla, 'tlatla', 'tlatlac', 'tlatla', b, intransitive).  % to burn (K TLATLA)
verb_stem_type(tlatlac, 'tlatlac', 'tlatlac', 'tlatlac', a1, intransitive).  % to burn (K TLATLAC)
verb_stem_type(tlatlācatecoloa, 'tlatlācatecoloa', 'tlatlācatecoloh', 'tlatlācatecolō', c, intransitive).  % to commit sins (TLA + TLĀCATL + TECOLOA)
verb_stem_type(tlatlacoa, 'tlatlacoā', 'tlatlacoh', 'tlatlacō', c, intransitive).  % to do wrong
verb_stem_type(tlatlacua, 'tlatlacua', 'tlatlacuac', 'tlatlacua', a1, intransitive).  % to eat (redup. TLA- + CUA)
verb_stem_type(tlatlacua, 'tlatlacua', 'tlatlacuah', 'tlatlacua', b, intransitive).  % to eat things (TLA- + TLACUA)
verb_stem_type(tlatlāhuia, 'tlatlāhuia', 'tlatlāhuih', 'tlatlāhuiā', c, intransitive).  % to dawn (K TLATLĀHUI(A))
verb_stem_type(tlatlalchipahua, 'tlatlalchipahua', 'tlatlalchipahuac', 'tlatlalchipahua', b, intransitive).  % to become clean (TLA + TLAL + CHIPAHUAC)
verb_stem_type(tlatlalia, 'tlatlāliā', 'tlatlalih', 'tlatlali', c, transitive).  % to set (things) down, arrange; TLATLĀLIĀ
verb_stem_type(tlatlalilia, 'tlatlaliliā', 'tlatlalili', 'tlatlaliliā', c, transitive).  % pret. without h
verb_stem_type(tlatlalilia, 'tlatlaliliā', 'tlatlalilih', 'tlatlaliliā', c, transitive).  % to set things for someone (applic. TLATLĀLIĀ)
verb_stem_type(tlatlama, 'tlatlama', 'tlatlamac', 'tlatlama', a1, intransitive).  % to hunt (K TLAHTLAM(A))
verb_stem_type(tlatlamaca, 'tlatlamaca', 'tlatlamacac', 'tlatlamaca', a1, transitive).  % to give things out (redup. MACA)
verb_stem_type(tlātlapoā, 'tlātlapoā', 'tlātlapoh', 'tlātlapō', c, transitive).  % TLĀTLAPOĀ open
verb_stem_type(tlatlati, 'tlatlati', 'tlatlatih', 'tlatlati', c, transitive).  % to set fire to (K TLATLATIĀ)
verb_stem_type(tlatlatia, 'tlatlatia', 'tlatlati', 'tlatlati', c, transitive).  % to burn (K TLAHTLATIĀ, h-less)
verb_stem_type(tlatlatia, 'tlatlatia', 'tlatlati', 'tlatlatiā', c, transitive).  % h-less perfective (contlatlatiqueh)
verb_stem_type(tlatlatia, 'tlatlatia', 'tlatlatih', 'tlatlati', c, transitive).  % to set fire to (K TLATLATIĀ)
verb_stem_type(tlatlatia, 'tlatlatia', 'tlatlatih', 'tlatlatiā', c, transitive).  % to burn (K TLATLATIĀ)
verb_stem_type(tlatlatia, 'tlatlatiā', 'tlatlatih', 'tlatlatī', c, transitive).  % to hide things (redup. TLATIĀ)
verb_stem_type(tlatlatilia, 'tlatlatilia', 'tlatlatilih', 'tlatlatili', c, transitive).  % to hide things from someone
verb_stem_type(tlatlatzini, 'tlatlatzini', 'tlatlatzin', 'tlatlatzini', b, intransitive).  % to thunder, explode; K TLATLATZIN(I)
verb_stem_type(tlatlatzini, 'tlatlatzīni', 'tlatlatzīn', 'tlatlatzīni', b, intransitive).  % to thunder (K TLATLATZĪN(I))
verb_stem_type(tlatlauhtia, 'tlatlauhtiā', 'tlatlauhti', 'tlatlauhti', c, intransitive).  % pray (K TLATLAUHTIA)
verb_stem_type(tlatlauhtia, 'tlatlauhtiā', 'tlatlauhti', 'tlatlauhtiā', c, transitive).  % to address, greet (K TLAHTLAUHTIA, h-less)
verb_stem_type(tlatlauhtia, 'tlatlauhtiā', 'tlatlauhtih', 'tlatlauhtī', c, transitive).  % to beseech (K TLAHTLAUHTIA)
verb_stem_type(tlatlauhtilia, 'tlatlauhtiliā', 'tlatlauhtili', 'tlatlauhtiliā', c, transitive).  % to address someone (applic.)
verb_stem_type(tlatlauhtilia, 'tlatlauhtiliā', 'tlatlauhtilih', 'tlatlauhtili', c, transitive).  % pray to (K TLAHTLAUHTILIĀ)
verb_stem_type(tlatlauhtilia, 'tlatlauhtiliā', 'tlatlauhtilih', 'tlatlauhtilī', c, transitive).  % to pray to
verb_stem_type(tlatlaxtlapaloa, 'tlatlaxtlapaloa', 'tlatlaxtlapaloh', 'tlatlaxtlapalō', c, intransitive).  % to zigzag (redup. TLAXTLAPALOA)
verb_stem_type(tlatotonia, 'tlatotoniā', 'tlatotoni', 'tlatotoni', c, intransitive).  % to be warm (TLA- + TOTONIA)
verb_stem_type(tlatotonie, 'tlatotonie', 'tlatotonieh', 'tlatotonie', b, intransitive).  % to be warm (TLA- + TOTONIA, e-variant)
verb_stem_type(tlatzacutia, 'tlatzacutia', 'tlatzacutih', 'tlatzacuti', c, transitive).  % to close things off (TLA + TZACU(A) + -tia)
verb_stem_type(tlatzotzona, 'tlatzotzona', 'tlatzotzon', 'tlatzotzona', a1, transitive).  % TLATZOTZON(A) play drums
verb_stem_type(tlauhtia, 'tlauhtia', 'tlauhtih', 'tlauhti', c, transitive).  % to reward (K TLAUHTIĀ)
verb_stem_type(tlaxtlapaloa, 'tlaxtlapaloa', 'tlaxtlapaloh', 'tlaxtlapalō', c, intransitive).  % to cross, go sideways (tla- + IXTLAPAL 'sideways')
verb_stem_type(tlaxtlapaloa, 'tlaxtlapaloā', 'tlaxtlapaloh', 'tlaxtlapalō', c, transitive).  % variant of TLAHPALOĀ 'greet' with intrusive x
verb_stem_type(tlayacana, 'tlayacana', 'tlayacan', 'tlayacana', a1, transitive).  % to lead (TLA + YACAN(A))
verb_stem_type(tlayamania, 'tlayamania', 'tlayamani', 'tlayamania', c, intransitive).  % to be evening (TLA- + YAMANIA)
verb_stem_type(tlayecoa, 'tlayecoa', 'tlayeco', 'tlayecō', c, intransitive).  % object omitted (tlayecoqueh)
verb_stem_type(tlayecoa, 'tlayecoa', 'tlayeco', 'tlayecō', c, transitive).  % h-less perfective as written
verb_stem_type(tlayecoa, 'tlayecoa', 'tlayecoa', 'tlayeco', a1, transitive).  % to test, try out; K TLAYECOA
verb_stem_type(tlayecoa, 'tlayecoa', 'tlayecoh', 'tlayecō', c, transitive).  % TLAYECOA to arrange, finish
verb_stem_type(tlayi, 'tlāyi', 'tlāyih', 'tlāyi', b, intransitive).  % to break ground
verb_stem_type(tlayohua, 'tlayohua', 'tlayohuac', 'tlayohua', a1, intransitive).  % to grow dark; K TLAYOHUA
verb_stem_type(tlaza, 'tlaza', 'tlaz', 'tlaza', a1, transitive).  % to throw (K TLĀZ(A))
verb_stem_type(tlaza, 'tlaza', 'tlaz', 'tlaza', b, transitive).  % to throw, shoot (K TLAZ(A), pret. TLAZ)
verb_stem_type(tlaza, 'tlaza', 'tlazac', 'tlaza', a1, transitive).  % to throw, shoot (K TLAZ(A))
verb_stem_type(tlaza, 'tlāza', 'tlāz', 'tlāza', a1, transitive).  % throw (K TLĀZA)
verb_stem_type(tlaza, 'tlāza', 'tlāz', 'tlāza', b, transitive).  % throw (FC pret. tlāz, no -c)
verb_stem_type(tlazaltia, 'tlazaltia', 'tlazaltih', 'tlazaltī', c, transitive).  % K TLAZALTIA to force someone to give up
verb_stem_type(tlazaltia, 'tlāzaltia', 'tlāzalti', 'tlāzaltī', c, transitive).  % long ā as written (TLAZALTIA)
verb_stem_type(tlazaltia, 'tlāzaltiā', 'tlāzaltih', 'tlāzalti', c, transitive).  % to make someone let go; K TLĀZALTIA
verb_stem_type(tlazaltoca, 'tlazaltoca', 'tlazaltocac', 'tlazaltoca', a1, transitive).  % go scattering things
verb_stem_type(tlazcamati, 'tlazcāmati', 'tlazcāmatih', 'tlazcāmati', b, intransitive).  % expression of thanks
verb_stem_type(tlazoh, 'tlazoh', 'tlazoh', 'tlazoh', b, transitive).  % to love
verb_stem_type(tlazohcamati, 'tlazohcāmati', 'tlazohcāmatih', 'tlazohcāmati', b, intransitive).  % expression of thanks
verb_stem_type(tlazohtla, 'tlazohtlā', 'tlazohtlac', 'tlazohtlā', b, transitive).  % to love
verb_stem_type(tlazotla, 'tlazotla', 'tlazotlac', 'tlazotla', b, transitive).  % love (h-less TLĀZOHTLA)
verb_stem_type(tlazotlac, 'tlazotlac', 'tlazotlac', 'tlazotlac', a1, intransitive).  % to burn (cf. TLATLAC)
verb_stem_type(tlecāhua, 'tlecāhua', 'tlecāhuac', 'tlecāhua', b, intransitive).  % to burn (K TLECĀHU(A))
verb_stem_type(tlecahui, 'tlecahui', 'tlecahui', 'tlecahui', a1, transitive).  % TLECAHU(I) climb
verb_stem_type(tlecahui, 'tlecahui', 'tlecauh', 'tlecahui', b, intransitive).  % to climb
verb_stem_type(tlecahui, 'tlecahui', 'tlecauh', 'tlecahui', b, transitive).  % to climb something
verb_stem_type(tlecahui, 'tlecāhuiā', 'tlecāhui', 'tlecāhui', c, transitive).  % h-less perfective as written
verb_stem_type(tlecahui, 'tlecāhuiā', 'tlecāhuih', 'tlecāhui', c, transitive).  % K TLECĀHUIĀ to set fire to
verb_stem_type(tlecahuia, 'tlecahuiā', 'tlecahui', 'tlecahui', c, transitive).  % to raise (TLECAHUIA)
verb_stem_type(tlecahuia, 'tlecahuiā', 'tlecahuih', 'tlecahuī', c, transitive).  % to climb (K TLECĀHUIĀ)
verb_stem_type(tlecāhuia, 'tlecāhuia', 'tlecāhui', 'tlecāhui', c, transitive).  % to burn something for someone
verb_stem_type(tlecāhuia, 'tlecāhuia', 'tlecāhuih', 'tlecāhui', c, transitive).  % to burn something for someone (applic. TLECĀHUA)
verb_stem_type(tlecāhuia, 'tlecāhuiā', 'tlecāhuih', 'tlecāhuī', c, transitive).  % to raise (K TLECĀHUIĀ)
verb_stem_type(tleco, 'tleco', 'tleco', 'tleco', a1, intransitive).  % h-less variant of TLEHCŌ before -to
verb_stem_type(tleco, 'tleco', 'tleco', 'tleco', b, intransitive).  % to climb (FC h-less); K TLEHCU(I)
verb_stem_type(tleco, 'tleco', 'tlecoc', 'tleco', a1, intransitive).  % to climb (K TLEC(O))
verb_stem_type(tlehcahui, 'tlehcahui', 'tlehcauh', 'tlehcahui', b, intransitive).  % to climb up (K TLEHCAHU(I))
verb_stem_type(tlehcahuia, 'tlehcahuiā', 'tlehcahuih', 'tlehcahui', c, transitive).  % to lift (K TLEHCAHUIA)
verb_stem_type(tlehco, 'tlehco', 'tlehco', 'tlehco', a1, intransitive).  % to climb up (K TLEHCŌ)
verb_stem_type(tlehco, 'tlehco', 'tlehco', 'tlehco', b, intransitive).  % to climb; K TLEHCU(I)
verb_stem_type(tlehco, 'tlehcō', 'tlehco', 'tlehcō', b, intransitive).  % to climb (K TLEHCŌ)
verb_stem_type(tlehcō, 'tlehcō', 'tlehcō', 'tlehcō', a1, intransitive).  % to ascend (K TLEHCŌ)
verb_stem_type(tlemina, 'tlemina', 'tlemin', 'tlemina', a1, transitive).  % to shoot (with arrows) (K TLEM(I) + -ina)
verb_stem_type(tlemina, 'tlemina', 'tlemin', 'tlemina', b, transitive).  % to set fire to (TLE-TL + MINA)
verb_stem_type(tlemina, 'tlemina', 'tleminac', 'tlemina', a1, transitive).  % to shoot, fire (TLEMINIA without the i)
verb_stem_type(tleminia, 'tleminia', 'tlemini', 'tleminia', c, transitive).  % to shoot, fire (K TLEMINIA)
verb_stem_type(tleminia, 'tleminia', 'tleminih', 'tlemini', c, transitive).  % to shoot arrows at someone
verb_stem_type(tlenamaquilia, 'tlenamaquiliā', 'tlenamaquilih', 'tlenamaquili', c, transitive).  % greet, salute (TLE- + NAMAQUILIA)
verb_stem_type(tlequechia, 'tlequechia', 'tlequechi', 'tlequechia', c, transitive).  % to close, shut (TLEQUECHIA)
verb_stem_type(tlequechia, 'tlequechia', 'tlequechih', 'tlequechi', c, transitive).  % to set before, serve (K TLEQUECHIA?)
verb_stem_type(tlequechia, 'tlequechia', 'tlequechih', 'tlequechia', c, transitive).  % to ignite (TLE-TL + QUEQUECHIA?)
verb_stem_type(tlequiquizhui, 'tlequiquizhui', 'tlequiquizhui', 'tlequiquizhui', b, transitive).  % shoot with a gun (TLEQUIQUIZ-TLI)
verb_stem_type(tletlehuatza, 'tletlehuātza', 'tletlehuātz', 'tletlehuātza', a1, transitive).  % burn (TLEHUĀTZA)
verb_stem_type(tloa, 'tloā', 'tollo', 'tlō', c, transitive).  % to swallow (K TOLOĀ; pret. TOLLO)
verb_stem_type(toca, 'toca', 'toca', 'toca', a1, transitive).  % to follow, pursue; K TOCC(A)? (cf. TOTOCA)
verb_stem_type(toca, 'toca', 'tocac', 'toca', a1, transitive).  % K TOCA to follow (distinct from TŌCA 'plant')
verb_stem_type(toca, 'toca', 'tocac', 'toca', b, transitive).  % short-vowel variant (quihualtoca)
verb_stem_type(toca, 'tōca', 'tōcac', 'tōca', b, transitive).  % to plant
verb_stem_type(tocatia, 'tocatia', 'tocatia', 'tocatia', c, transitive).  % to follow someone (perfective tocatia as written)
verb_stem_type(tocatia, 'tocatiā', 'tocati', 'tocati', c, transitive).  % to follow someone (TOCA + -TIA)
verb_stem_type(tocāyōtia, 'tocāyōtiā', 'tocāyōtih', 'tocāyōti', c, transitive).  % to name (K TOCAYOTIA)
verb_stem_type(tōcāyōtia, 'tōcāyōtia', 'tōcāyōti', 'tōcāyōtiā', c, transitive).  % h-less perfective (quitōcāyōtiqueh)
verb_stem_type(tōcāyōtia, 'tōcāyōtia', 'tōcāyōtih', 'tōcāyōtiā', c, transitive).  % to name (K TŌCĀYŌTIA)
verb_stem_type(tōcāyōtia, 'tōcāyōtiā', 'tōcāyōtih', 'tōcāyōti', c, transitive).  % name (K TŌCĀYŌTIA)
verb_stem_type(tocniuhtia, 'tocniuhtiā', 'tocniuhtih', 'tocniuhti', c, transitive).  % make friends with (TOCNIUH)
verb_stem_type(tocniuhtla, 'tocniuhtla', 'tocniuhtla', 'tocniuhtla', b, intransitive).  % be friends (TOCNIUH + -tla)
verb_stem_type(toctia, 'toctiā', 'tocti', 'tocti', c, transitive).  % to provide for (TŌCTIA)
verb_stem_type(tohtoca, 'tohtoca', 'tohtocac', 'tohtoca', a1, transitive).  % follow (K TOHTOCA)
verb_stem_type(tohua, 'tōhua', 'tōuh', 'tōhua', b, transitive).  % to sow
verb_stem_type(tolhuilia, 'tolhuiliā', 'tolhuilih', 'tolhuilī', c, transitive).  % to tell someone
verb_stem_type(tolini, 'tolini', 'tolin', 'tolini', b, intransitive).  % to suffer (K TOLIN(I))
verb_stem_type(tolini, 'tolini', 'tolini', 'tolini', b, intransitive).  % pret. without final consonant (omotolini)
verb_stem_type(tolinia, 'tolinia', 'tolini', 'tolini', c, transitive).  % to make someone suffer (TOLĪNIA)
verb_stem_type(tolinia, 'toliniā', 'tolinih', 'tolinī', c, intransitive).  % to be poor (K MOTOLINIA)
verb_stem_type(tolinia, 'toliniā', 'tolinih', 'tolīni', c, transitive).  % suffer (K TOLINIA)
verb_stem_type(tomaca, 'tomaca', 'tomacac', 'tomaca', a1, intransitive).  % to be resigned
verb_stem_type(tōnaltia, 'tōnaltia', 'tōnalti', 'tōnaltī', c, transitive).  % same, perfective without -h as written
verb_stem_type(tōnaltia, 'tōnaltia', 'tōnaltih', 'tōnaltī', c, transitive).  % K TŌNALTIĀ to destine, assign
verb_stem_type(tonehua, 'tonehua', 'toneuh', 'tonehua', b, intransitive).  % to burn, smart
verb_stem_type(tononochilia, 'tononochiliā', 'tononochilih', 'tononochilī', c, transitive).  % to speak to someone
verb_stem_type(topehua, 'topehua', 'topeuh', 'topehua', b, transitive).  % to push aside
verb_stem_type(topehua, 'topēhuā', 'topēhuac', 'topēhuā', b, transitive).  % K TOPĒHU(A) to push
verb_stem_type(topēhua, 'topēhua', 'topēhuac', 'topēhua', b, transitive).  % to push someone aside (K TOPĒHUA)
verb_stem_type(toquilia, 'toquiliā', 'toquili', 'toquili', c, transitive).  % to follow someone (TŌCA applic.)
verb_stem_type(toquilia, 'toquiliā', 'toquilih', 'toquili', c, transitive).  % K TOQUILIĀ to follow/attack someone
verb_stem_type(totlatlauhtilia, 'totlatlauhtiliā', 'totlatlauhtili', 'totlatlauhtiliā', c, transitive).  % to address you (TO- + TLAHTLAUHTILIA)
verb_stem_type(totoca, 'totoca', 'totoca', 'totoca', a1, intransitive).  % TOTOCA run
verb_stem_type(totoca, 'totoca', 'totocac', 'totoca', a1, intransitive).  % to run (K TOTOCA)
verb_stem_type(totoca, 'totoca', 'totocac', 'totoca', a1, transitive).  % to run after, pursue; K TOTOCA
verb_stem_type(totona, 'totōna', 'totōn', 'totōna', b, transitive).  % to chase, pursue (K TOTŌN(A))
verb_stem_type(tōtōna, 'tōtōna', 'tōtōna', 'tōtōna', a1, intransitive).  % to be hot (redup. TŌNA)
verb_stem_type(totonia, 'totoniā', 'totonih', 'totoni', c, transitive).  % make hot (TOTONIA)
verb_stem_type(totoponia, 'totoponia', 'totoponih', 'totoponi', c, transitive).  % make a noise (FC)
verb_stem_type(totopotza, 'totopotza', 'totopotz', 'totopotza', a1, transitive).  % make noise (K TOTOPOTZ(A))
verb_stem_type(tototopotza, 'tototopotza', 'tototopotz', 'tototopotza', a1, transitive).  % make a racket (redup. TOTOPOTZA)
verb_stem_type(tototza, 'tototza', 'tototz', 'tototza', a1, transitive).  % make a noise (TOTOPOTZ?)
verb_stem_type(tototza, 'tototza', 'tototzac', 'tototza', a1, transitive).  % to push (K TOTOTZ(A))
verb_stem_type(toxāhua, 'toxāhua', 'toxāhuac', 'toxāhuā', b, transitive).  % TOXĀHU(A) spill out
verb_stem_type(tta, 'tta', 'tta', 'tta', a1, transitive).  % to see
verb_stem_type(tzacua, 'tzacua', 'tzacu', 'tzacua', a1, transitive).  % pret. TZACU as written (ōmmotzacu)
verb_stem_type(tzacua, 'tzacua', 'tzacua', 'tzacua', a1, transitive).  % to close
verb_stem_type(tzacui, 'tzacui', 'tzacui', 'tzacui', a1, transitive).  % to close
verb_stem_type(tzacuilia, 'tzacuilia', 'tzacuilih', 'tzacuili', c, transitive).  % to shut someone in (applic. TZACUA)
verb_stem_type(tzacuilia, 'tzacuiliā', 'tzacuilih', 'tzacuili', c, transitive).  % K TZACUILIA to detain, impede
verb_stem_type(tzacuiltia, 'tzacuiltiā', 'tzacuilti', 'tzacuiltiā', c, transitive).  % pret. without h
verb_stem_type(tzacuiltia, 'tzacuiltiā', 'tzacuiltih', 'tzacuiltī', c, transitive).  % to punish (K TZACUILTIĀ)
verb_stem_type(tzacutia, 'tzacutia', 'tzacutia', 'tzacutia', a1, transitive).  % a1 variant (quitzacutiaque)
verb_stem_type(tzacutia, 'tzacutiā', 'tzacuti', 'tzacutiā', c, transitive).  % pret. without h
verb_stem_type(tzacutia, 'tzacutiā', 'tzacutih', 'tzacutī', c, transitive).  % to shut in (TZACU(A) + -tia)
verb_stem_type(tzacutoca, 'tzacutoca', 'tzacutocac', 'tzacutoca', a1, transitive).  % to go blocking (TZACUA + TOCA)
verb_stem_type(tzahtzacua, 'tzahtzacua', 'tzahtzac', 'tzahtzacua', a1, transitive).  % to close, block (TZACUA with -h-)
verb_stem_type(tzahtzacua, 'tzahtzacua', 'tzahtzacuac', 'tzahtzacua', a1, transitive).  % to enclose, lock up (K TZAHTZACU(A))
verb_stem_type(tzahtzi, 'tzahtzi', 'tzahtzi', 'tzahtzi', a1, intransitive).  % to shout
verb_stem_type(tzahtzi, 'tzatzi', 'tzatzi', 'tzatzi', a1, intransitive).  % to shout; h-less variant of TZAHTZI
verb_stem_type(tzahtzilia, 'tzahtzilia', 'tzahtzilih', 'tzahtzili', c, transitive).  % to shout at someone (K TZAHTZILIA)
verb_stem_type(tzahtzilia, 'tzahtziliā', 'tzahtzilih', 'tzahtzili', c, transitive).  % to shout to someone (TZAHTZI + applic.)
verb_stem_type(tzahtzioa, 'tzahtzioa', 'tzahtzioac', 'tzahtzioa', a1, intransitive).  % TZAHTZĪ + -oa cry out
verb_stem_type(tzatzacua, 'tzatzacua', 'tzatzac', 'tzatzacua', a1, transitive).  % to block, shut in (redup. TZACU(A))
verb_stem_type(tzatzacua, 'tzatzacua', 'tzatzac', 'tzatzacua', b, transitive).  % TZAHTZACU(A) close off (pret. TZAHTZAC)
verb_stem_type(tzatzacua, 'tzatzacua', 'tzatzacua', 'tzatzacu', a1, transitive).  % to close, bar; K TZATZACU(A)
verb_stem_type(tzatzacua, 'tzatzacua', 'tzatzacuac', 'tzatzacua', a1, transitive).  % to shut in
verb_stem_type(tzatzacutimani, 'tzatzacutimani', 'tzatzacutiman', 'tzatzacutimani', b, intransitive).  % to enclose (redup. TZACU(A) + MANI)
verb_stem_type(tzatzacutimani, 'tzatzacutimani', 'tzatzacutiman', 'tzatzacutimani', b, transitive).  % transitive variant
verb_stem_type(tzatzatzili, 'tzatzatzili', 'tzatzatzilih', 'tzatzatzili', a1, intransitive).  % to shout
verb_stem_type(tzatzayana, 'tzatzayana', 'tzatzayan', 'tzatzayana', b, intransitive).  % TZATZAYAN(A) split open (pl.)
verb_stem_type(tzatzayana, 'tzatzayana', 'tzatzayan', 'tzatzayana', b, transitive).  % TZATZAYAN(A) split open (pl.)
verb_stem_type(tzatzi, 'tzatzi', 'tzatz', 'tzatzi', b, intransitive).  % to cry out (variant of TZAHTZ(I))
verb_stem_type(tzatzi, 'tzatzi', 'tzatzic', 'tzatzi', a1, intransitive).  % Variant of TZAHTZI with the h lost; tzatzi-ya 'they were shouting'.
verb_stem_type(tzatzia, 'tzatzia', 'tzatzi', 'tzatzia', a1, intransitive).  % to shout (variant of TZAHTZI)
verb_stem_type(tzatzilia, 'tzatziliā', 'tzatzili', 'tzatziliā', c, transitive).  % to shout at (K TZATZILIĀ)
verb_stem_type(tzcaloa, 'tzcaloa', 'tzcaloh', 'tzcalō', c, intransitive).  % to return (K TZCALOĀ)
verb_stem_type(tzeltilia, 'tzeltilia', 'tzeltilih', 'tzeltiliā', c, transitive).  % to cut to pieces
verb_stem_type(tzeltilia, 'tzeltiliā', 'tzeltili', 'tzeltili', c, transitive).  % TZELTILIA shatter
verb_stem_type(tzetzelihui, 'tzetzelihui', 'tzetzeliuh', 'tzetzelihui', b, intransitive).  % to sprinkle down (K TZETZELIHU(I))
verb_stem_type(tzicui, 'tzicui', 'tzicui', 'tzicui', a1, transitive).  % to take
verb_stem_type(tzinapana, 'tzinapana', 'tzinapan', 'tzinapana', a1, transitive).  % to tie behind someone (no K headword)
verb_stem_type(tzinehua, 'tzinehua', 'tzineuh', 'tzinehua', b, transitive).  % to unhorse (K TZINEHU(A))
verb_stem_type(tzinpachoa, 'tzinpachoa', 'tzinpachoa', 'tzinpacho', a1, transitive).  % to crowd behind someone; no K headword
verb_stem_type(tzinti, 'tzinti', 'tzintic', 'tzinti', b, intransitive).  % to begin (K TZINTI)
verb_stem_type(tzintia, 'tzintia', 'tzintih', 'tzintia', a1, transitive).  % to begin
verb_stem_type(tzitzitzquia, 'tzitzitzquia', 'tzitzitzquih', 'tzitzitzqui', c, transitive).  % to grip repeatedly (redup. TZITZQUIA)
verb_stem_type(tzitzquia, 'tzitzquia', 'tzitzquih', 'tzitzquī', c, transitive).  % TZĪTZQUIA 'to grip something'.
verb_stem_type(tzomoni, 'tzomoni', 'tzomon', 'tzomoni', b, intransitive).  % to be angry (K TZOMON(I))
verb_stem_type(tzomoni, 'tzomōni', 'tzomon', 'tzomōni', b, intransitive).  % to burst with a noise; K TZOMŌN(I)
verb_stem_type(tzomoni, 'tzomōni', 'tzomon', 'tzomōni', b, transitive).  % to burst something with a noise; K TZOMŌN(I)
verb_stem_type(tzonhuitec, 'tzonhuītec', 'tzonhuītec', 'tzonhuītec', a1, transitive).  % to strike on the head (tē-tzon-HUĪTEQU(I), perfective stem)
verb_stem_type(tzonquiza, 'tzonquiza', 'tzonquiz', 'tzonquiza', b, intransitive).  % conclude (K TZONQUIZ(A))
verb_stem_type(tzontecōhuihuixoa, 'tzontecōhuihuixoa', 'tzontecōhuihuixo', 'tzontecōhuihuixoa', c, transitive).  % to shake the head (without the n of TZONTECOM(A)-TL)
verb_stem_type(tzonteconhuihuixoa, 'tzonteconhuihuixoa', 'tzonteconhuihuixo', 'tzonteconhuihuixoa', c, transitive).  % to shake the head (TZONTECOM(A)-TL + HUIHUIXOA)
verb_stem_type(tzontecōnhuihuixoa, 'tzontecōnhuihuixoa', 'tzontecōnhuihuixo', 'tzontecōnhuihuixoa', c, transitive).  % to shake the head (long ō as written)
verb_stem_type(tzotzona, 'tzotzona', 'tzotzon', 'tzotzona', a1, intransitive).  % intransitive use (ontzotzon)
verb_stem_type(tzotzona, 'tzotzona', 'tzotzon', 'tzotzona', a1, transitive).  % to play the drum (K TZOTZONA)
verb_stem_type(tzotzona, 'tzotzona', 'tzotzon', 'tzotzona', b, intransitive).  % class-B perfective (ontzotzon without -c)
verb_stem_type(tzotzopitza, 'tzotzopitza', 'tzotzopitz', 'tzotzopitza', a1, transitive).  % to jab
verb_stem_type(tzotzopontitlaza, 'tzotzopontitlaza', 'tzotzopontitlaz', 'tzotzopontitlaza', a1, transitive).  % to strike someone down
verb_stem_type(tzotzoyoca, 'tzotzoyoca', 'tzotzoyocac', 'tzotzoyoca', a1, intransitive).  % The Codex spelling is short, so the stem is entered without an invented macron.
verb_stem_type(tzoya, 'tzoya', 'tzoyac', 'tzoya', a1, intransitive).  % to stink (K TZOY(A))
verb_stem_type(tztiltitia, 'tztiltitia', 'tztiltitia', 'tztiltitia', a1, transitive).  % a1 variant
verb_stem_type(tztiltitia, 'tztiltitiā', 'tztiltitih', 'tztiltitī', c, transitive).  % to throw into water (TZ(T)IL- + -tiā)
verb_stem_type(xacualoa, 'xacualoa', 'xacualo', 'xacualoa', b, transitive).  % XACUALOA scratch about
verb_stem_type(xacualoa, 'xacualoa', 'xacualoh', 'xacualō', c, transitive).  % to scratch about (K XACUALOĀ)
verb_stem_type(xacualotineni, 'xacualotineni', 'xacualotinen', 'xacualotineni', b, intransitive).  % to go about scratching
verb_stem_type(xaxamaca, 'xaxamaca', 'xaxamaca', 'xaxamaca', a1, intransitive).  % XAXAMACA break noisily
verb_stem_type(xaxanteca, 'xaxanteca', 'xaxanteca', 'xaxanteca', a1, transitive).  % to lay bricks (K XAXAN + TECA)
verb_stem_type(xeloa, 'xeloa', 'xeloh', 'xelō', c, transitive).  % to divide (K XELOĀ)
verb_stem_type(xexelhui, 'xexelhui', 'xexeliuh', 'xexelhui', b, intransitive).  % to divide (K XEXELHU(I))
verb_stem_type(xicohua, 'xicohua', 'xicouh', 'xicohua', b, transitive).  % to gather things
verb_stem_type(xicoltia, 'xicoltia', 'xicolti', 'xicolti', c, transitive).  % to put a xicolli on someone (denominal)
verb_stem_type(xihxittemomoloca, 'xihxittemomolōca', 'xihxittemomolōcac', 'xihxittemomolōca', a1, intransitive).  % to bubble and scatter (redup. XIT + TEMOMOLŌCA)
verb_stem_type(xilia, 'xili', 'xili', 'xili', c, transitive).  % purposive embedding form xili-co
verb_stem_type(xilia, 'xilia', 'xil', 'xili', c, transitive).  % h-less perfective and short future (oquixil, quixiliz)
verb_stem_type(xilia, 'xilia', 'xilih', 'xiliā', c, transitive).  % to spear (K XILIĀ?; oquixil)
verb_stem_type(xilia, 'xiliā', 'xilih', 'xiliā', c, transitive).  % to lance (K XILIĀ)
verb_stem_type(xillancuitlalpia, 'xillancuitlalpiā', 'xillancuitlalpi', 'xillancuitlalpiā', c, transitive).  % to tie the back mirror on (XILLAN + CUITLALPIA)
verb_stem_type(xiloyotia, 'xiloyotiā', 'xiloyotih', 'xiloyotī', c, intransitive).  % to form ears (XILŌ-TL + -yotia)
verb_stem_type(xitini, 'xitini', 'xitin', 'xitini', b, intransitive).  % to give way, crumble (K XITIN(I))
verb_stem_type(xixili, 'xixili', 'xixil', 'xixili', a1, transitive).  % to jab
verb_stem_type(xixili, 'xixili', 'xixil', 'xixili', b, transitive).  % XIXILI pierce, stab
verb_stem_type(xīxīli, 'xīxīli', 'xīxīl', 'xīxīli', a1, transitive).  % to peel/scrape (redup. XILI)
verb_stem_type(xixilia, 'xixiliā', 'xixil', 'xixili', c, transitive).  % lance (K XIXILIA)
verb_stem_type(xixilioa, 'xixilioa', 'xixilioa', 'xixilioa', a1, transitive).  % lance people (class A variant)
verb_stem_type(xixilioa, 'xixilioā', 'xixilio', 'xixiliō', c, transitive).  % lance people (TĒ-XIXILIA)
verb_stem_type(xixilioa, 'xixilioā', 'xixilioa', 'xixiliō', c, transitive).  % lance people (FC pret. xixilioa-c)
verb_stem_type(xixilioa, 'xixilioā', 'xixilioh', 'xixiliō', c, transitive).  % to stab, pierce (K XIXILIA applic.)
verb_stem_type(xixiloa, 'xixiloā', 'xixiloh', 'xixilō', c, transitive).  % lance (XIXILIA)
verb_stem_type(xixitica, 'xixitica', 'xixiticac', 'xixitica', a1, intransitive).  % to crumble apart (K XIXITICA)
verb_stem_type(xixitini, 'xixitini', 'xixitin', 'xixitini', b, intransitive).  % to crumble (XIXIT(I))
verb_stem_type(xochiapan, 'xōchiapāna', 'xōchiapan', 'xōchiapāna', a1, intransitive).  % flower garden? (XŌCHI + APAN)
verb_stem_type(xochicozcati, 'xōchicōzcati', 'xōchicōzcati', 'xōchicōzcati', a1, transitive).  % deck with flower necklaces
verb_stem_type(xochiti, 'xōchiti', 'xōchiti', 'xōchiti', a1, transitive).  % put flowers on (XŌCHI-TL + -ti)
verb_stem_type(xochiya, 'xochiya', 'xochix', 'xochiya', b, intransitive).  % to bloom
verb_stem_type(xocoti, 'xocoti', 'xocotic', 'xocoti', a1, transitive).  % to push back ( techxocotihui)
verb_stem_type(xopiloa, 'xopiloa', 'xopilo', 'xopilo', a1, transitive).  % to cut something off; K XOPILOĀ
verb_stem_type(xopiloa, 'xopiloā', 'xopiloh', 'xopilō', c, transitive).  % to surround (K XOPILOĀ)
verb_stem_type(xoxa, 'xoxa', 'xoxac', 'xoxa', a1, transitive).  % to cast the evil eye (no K headword)
verb_stem_type(xoxocoloa, 'xoxocoloa', 'xoxocoloh', 'xoxocolō', c, transitive).  % to press, squeeze (XOXOCO?)
verb_stem_type(xoxopehua, 'xoxopehua', 'xoxopeuh', 'xoxopehuā', b, transitive).  % to scatter, cast away (attested short-vowel variant of XOXOPĒHUA)
verb_stem_type(xoxopēhua, 'xoxopēhua', 'xoxopēuh', 'xoxopēhuā', b, transitive).  % to scatter, kick away ( lexicalised)
verb_stem_type(xoxoquiui, 'xoxoquiui', 'xoxoquiuh', 'xoxoquiui', b, intransitive).  % be green (K XOXOQUIUI)
verb_stem_type(xpixtinenca, 'xpixtinenca', 'xpixtinen', 'xpixtinenca', a1, intransitive).  % to keep watch (ĪX + PIX + -ti-nenca)
verb_stem_type(xtlapoa, 'xtlapoa', 'xtlapoh', 'xtlapō', c, transitive).  % XTLAPOA to open
verb_stem_type(yacacotona, 'yacacotona', 'yacacoton', 'yacacotona', a1, transitive).  % to cut off at the point (YACAC + COTŌN(A))
verb_stem_type(yacana, 'iyacana', 'iyacanac', 'iyacana', a1, transitive).  % to lead (supportive i; quiniyacana)
verb_stem_type(yacana, 'yacan', 'yacan', 'yacan', a1, transitive).  % to lead (stem without final a before -tiuh)
verb_stem_type(yacana, 'yacana', 'yacan', 'yacana', b, transitive).  % K YACAN(A), pret. YACAN (Class B variant)
verb_stem_type(yacana, 'yacana', 'yacana', 'yacana', a1, transitive).  % Transitive verbs appearing in YACAN(A) 'to lead someone'.
verb_stem_type(yacanti, 'yacanti', 'yacantic', 'yacanti', a1, transitive).  % to lead (YACANA + -ti; quiniyacantihuitz)
verb_stem_type(yacantia, 'yacantia', 'yacanti', 'yacantia', c, transitive).  % to lead (caus. of K YACĀN(A)): tēyacantia
verb_stem_type(yacantia, 'yacantiā', 'yacantih', 'yacanti', c, transitive).  % lead (YACAN(A) + -tia)
verb_stem_type(yacati, 'yacati', 'yacati', 'yacati', a1, intransitive).  % to go first, lead the way; no K headword (cf. YACAN(A))
verb_stem_type(yacati, 'yacati', 'yacati', 'yacati', a1, transitive).  % guide (YACATI)
verb_stem_type(yacatia, 'yacatiā', 'yacatih', 'yacatī', c, intransitive).  % to go ahead
verb_stem_type(yacattia, 'yacattia', 'yacattiac', 'yacattia', a1, intransitive).  % go first (YACATTA?)
verb_stem_type(yacatzacuilico, 'yacatzacuilico', 'yacatzacuilico', 'yacatzacuilico', a1, transitive).  % to come to cut off (YACAC + TZACUIA?)
verb_stem_type(yahualoa, 'yahualoā', 'yahualoh', 'yahualō', c, transitive).  % K YAHUALOA to surround
verb_stem_type(yahualoa, 'yayahualoa', 'yayahualoh', 'yayahualō', c, transitive).  % reduplicated YAHUALOA (K YAHYAHUALOA)
verb_stem_type(yāhui, 'yāhui', 'yāhuih', 'yāhui', b, intransitive).  % to fight
verb_stem_type(yamania, 'yamaniā', 'yamani', 'yamani', c, intransitive).  % to be evening (K YAMANIA)
verb_stem_type(yāōaloa, 'yāōaloa', 'yāōaloh', 'yāōalō', c, transitive).  % to surround, besiege (YĀŌ-TL + -aloa)
verb_stem_type(yāōalotia, 'yāōalotiā', 'yāōaloti', 'yāōalotiā', c, transitive).  % pret. without h (yāōaloti-ti-nemi)
verb_stem_type(yāōalotia, 'yāōalotiā', 'yāōalotih', 'yāōalotī', c, transitive).  % to surround (YĀŌ-TL + -lotia)
verb_stem_type(yāōalotinemi, 'yāōalotinemi', 'yāōalotinen', 'yāōalotinemi', b, intransitive).  % to go about surrounding (YĀŌ- + -loti + NEMI)
verb_stem_type(yāōalotinemi, 'yāōalotinemi', 'yāōalotinen', 'yāōalotinemi', b, transitive).  % transitive variant (quiyāōalotinemi)
verb_stem_type(yāōchīchīhua, 'yāōchīchīhua', 'yāōchīchīuh', 'yāōchīchīhua', b, intransitive).  % to make war (frequentative)
verb_stem_type(yāōchīchīhua, 'yāōchīchīhua', 'yāōchīchīuh', 'yāōchīchīhua', b, transitive).  % to arm oneself for war (K YAŌCHIHCHIHU(A))
verb_stem_type(yāōchīchīhua, 'yāōchīchīhua', 'yāōchīchīuh', 'yāōchīchīhuā', b, transitive).  % frequentative YĀŌCHĪHUA equip for war
verb_stem_type(yāōchīhua, 'yāōchīhua', 'yāōchīuh', 'yāōchīhua', b, intransitive).  % to make war (YĀŌ-TL + CHĪHU(A))
verb_stem_type(yāōchīhua, 'yāōchīhua', 'yāōchīuh', 'yāōchīhuā', b, transitive).  % to make war on (YĀŌ-TL + CHĪHU(A))
verb_stem_type(yauh, 'yauh', 'yah', 'lā', d, intransitive).  % K YAUH: huāl-lā-z 'will come' (yā > lā after huāl)
verb_stem_type(yauh, 'yauh', 'yah', 'ya', d, intransitive).  % to go (K YĀ: future yaz- as written)
verb_stem_type(yauh, 'yauh', 'yah', 'yā', d, intransitive).  % to go
verb_stem_type(yauh, 'yāuh', 'yah', 'yā', d, intransitive).  % YĀ suppletive 'to go'; present YĀUH with long ā (K YĀ: pres. YAUH, pret. YAH).
verb_stem_type(yāuhpehuaco, 'yāuhpehuaco', 'yāuhpehuaco', 'yāuhpehuaco', a1, intransitive).  % war began (yāuh + PEHUA + -co)
verb_stem_type(yāyauh, 'yāyauh', 'yāyah', 'yāyā', d, intransitive).  % to go back and forth (YĀ redup.)
verb_stem_type(ye, 'ye', 'yeh', 'ye', b, intransitive).  % to be (K YE): yez
verb_stem_type(yecauh, 'yecauh', 'yecauh', 'yecauh', b, intransitive).  % be good (K YECAUH?)
verb_stem_type(yehcaohua, 'yehcaohua', 'yehcaohuac', 'yehcaohua', b, intransitive).  % to be in need (YEHCAHUA?)
verb_stem_type(yehua, 'yehua', 'yehua', 'yehua', a1, intransitive).  % to dawn (pret. yehuac)
verb_stem_type(yehua, 'yehua', 'yehuac', 'yehua', a1, intransitive).  % to dawn (K YEHUA)
verb_stem_type(yehuatoca, 'yehuatoca', 'yehuatocac', 'yehuatoca', b, transitive).  % to follow (YEHUATOCA)
verb_stem_type(yeyecalhuia, 'yeyecalhuia', 'yeyecalhuih', 'yeyecalhui', c, transitive).  % redup. YĒCALHUIA 'finish something for someone' (K YĒCALHUIA)
verb_stem_type(yocoya, 'yocoya', 'yocox', 'yocoya', a1, transitive).  % to invent, imagine (K YŌCOY(A), pret. YOCOX)
verb_stem_type(yocoya, 'yocoya', 'yocux', 'yocoya', a1, transitive).  % FC pret. YOCUX (K YOCOX)
verb_stem_type(yohua, 'yohua', 'yohua', 'yohua', a1, intransitive).  % to dawn, get dark (K YOHUA)
verb_stem_type(yohua, 'yohua', 'yohuac', 'yohua', a1, intransitive).  % K YOHUA to get dark
verb_stem_type(yohua, 'yohua', 'yohuac', 'yohua', b, intransitive).  % to be night, grow dark; K YOHUA
verb_stem_type(yolcuepa, 'yōlcuepa', 'yōlcuep', 'yōlcuepa', b, transitive).  % to change one's mind (YŌL- + CUEP(A))
verb_stem_type(yoli, 'yōli', 'yōl', 'yōli', b, intransitive).  % to live
verb_stem_type(yōlihtlacoa, 'yōlihtlacoa', 'yōlihtlacoh', 'yōlihtlacō', c, transitive).  % to offend (YŌL- + IHTLACO(A))
verb_stem_type(yōlihtlacoa, 'yōlihtlacoā', 'yōlihtlacoh', 'yōlihtlacō', c, transitive).  % yōl-li + ih-tlacoa 'to harm/damage someone's life'.
verb_stem_type(yollacoma, 'yōllacoma', 'yōllacom', 'yōllacoma', b, transitive).  % for the heart to be disturbed; no K headword
verb_stem_type(yollalia, 'yōllaliā', 'yōllalih', 'yōllali', c, transitive).  % console (K YŌLLALIA)
verb_stem_type(yōllalia, 'yōllalia', 'yōllalih', 'yōllalia', c, transitive).  % to console, hearten
verb_stem_type(yōllalia, 'yōllaliā', 'yōllalih', 'yōllaliā', c, transitive).  % to console (YŌL- + -lia; cf. K TĒYŌLLALIHQUI)
verb_stem_type(yōllapana, 'yōllapana', 'yōllapan', 'yōllapana', b, intransitive).  % to be anxious, despair (YŌL- + -pana)
verb_stem_type(yōllapana, 'yōllapana', 'yōllapan', 'yōllapana', b, transitive).  % transitive use (quiyōllapanca)
verb_stem_type(yōllotia, 'yōllotiā', 'yōlloti', 'yōlloti', c, transitive).  % YŌLLŌ-TL + -tia encourage
verb_stem_type(yōllōtia, 'yōllotia', 'yōlloti', 'yōllotia', c, transitive).  % FC spelling of YŌLLŌTIĀ
verb_stem_type(yōllōtia, 'yōllōtiā', 'yōllōtih', 'yōllōtī', c, transitive).  % to confide in (K YŌLLŌTIĀ)
verb_stem_type(yōlmalacachoa, 'yōlmalacachoa', 'yōlmalacacho', 'yōlmalacachoa', c, transitive).  % pret. without h
verb_stem_type(yōlmalacachoa, 'yōlmalacachoa', 'yōlmalacachoh', 'yōlmalacachō', c, transitive).  % to turn over in the mind (YŌL- + MALACACHOA)
verb_stem_type(yolmictia, 'yōlmictiā', 'yōlmicti', 'yōlmicti', c, transitive).  % to make someone faint (K YŌLMICTIA)
verb_stem_type(yolmiqui, 'yōlmiqui', 'yōlmic', 'yōlmiqui', b, intransitive).  % to be faint of heart (K YOLMIQU(I))
verb_stem_type(yolmoyahua, 'yolmoyahua', 'yolmoyahuac', 'yolmoyahua', b, transitive).  % to make people faint; TĒ-YŌL-MOYĀHU(A)
verb_stem_type(yoltequipachoa, 'yōltequipachoā', 'yōltequipacho', 'yōltequipachō', c, transitive).  % to be anxious (K YOLTEQUIPACHOA)
verb_stem_type(za, 'za', 'zac', 'za', b, transitive).  % to say
verb_stem_type(zaza, 'zaza', 'zazac', 'zaza', a1, transitive).  % to carry off (K ZAZAC(A))
verb_stem_type(zazacoa, 'zazacoa', 'zazaco', 'zazacō', c, intransitive).  % to open the mouth (pret. zazaco, as written)
verb_stem_type(zazacoa, 'zazacoa', 'zazaco', 'zazacō', c, transitive).  % to open the mouth (perfective as written)
verb_stem_type(zazacoa, 'zazacoa', 'zazacoh', 'zazacō', c, intransitive).  % to open the mouth (intransitive use)
verb_stem_type(zazacoa, 'zazacoa', 'zazacoh', 'zazacō', c, transitive).  % to open the mouth? (redup. ZACOA)
verb_stem_type(zoma, 'zōmā', 'zōmah', 'zōmā', b, transitive).  % to anger (transitivized)
verb_stem_type(zōtec, 'zōtec', 'zōtec', 'zōtec', a1, intransitive).  % to be split? (K ZŌTEC)
verb_stem_type(zozohua, 'zozohua', 'zozohuac', 'zozohuā', b, intransitive).  % roar? (FC; uncertain)
verb_stem_type(zozotlahua, 'zozotlahua', 'zozotlahuac', 'zozotlahua', b, intransitive).  % to swoon (no K headword)
verb_stem_type(zozotlahua, 'zozotlahua', 'zozotlahuah', 'zozotlahua', b, intransitive).  % to swoon (perfective -h as written)

% ============================================================================
% ADJECTIVE STEMS
% ============================================================================
% Base adjective stems used by adjective_form/1 and the -loh/-yoh/-tica rules.

adj_stem('ahuiyac').  % fragrant, tasty (K AHHUIAC)
adj_stem('canahuac').  % narrow, slender (K CANĀHUAC)
adj_stem('catzactic').  % dirty (K CATZĀHUAC variant)
adj_stem('catzāhuac').  % dirty (K CATZĀHUAC)
adj_stem('chicāhuac').  % strong (K CHICĀHUAC)
adj_stem('chipāhuac').  % clean (K CHIPĀHUAC)
adj_stem('chīcāhuac').  % strong, long-vowel spelling (K CHICĀHUAC)
adj_stem('cocototztic').  % curly, kinky (redup. COTOTZ-)
adj_stem('coztic').  % yellow (K COZTIC)
adj_stem('cuacuauhtic').  % large, tall (K CUAHCUAUHTIC)
adj_stem('cuecuelpachtic').  % folded, wrinkled (K CUEHCUELPACHTIC)
adj_stem('cuihcuiltic').  % painted (K CUIHCUILTIC)
adj_stem('etic').  % heavy (K ETIC)
adj_stem('hiiac').  % foul-smelling; FC spelling of K IHYĀC
adj_stem('huicoltic').  % gaunt, hollow-flanked (K HUICOLTIC)
adj_stem('huīyac').  % long; variant of K HUĒIYAC
adj_stem('ixcocoztic').  % yellow-eyed (ix + redup. COZTIC; sources ixcocozti-)
adj_stem('ixtenextic').  % pale, showing eye-whites (K ĪXTENEXTIC)
adj_stem('ixtetenextic').  % reduplicated variant of ĪXTENEXTIC
adj_stem('ixtlecocoztic').  % fiery yellow-eyed (ix + tlē- + COZTIC)
adj_stem('ixtletletic').  % fiery-eyed (ix + redup. TLĒ-TL + -tic)
adj_stem('ixtletlezuchtic').  % ember-eyed (ix + tlē- + ZUCH-TLI)
adj_stem('ocolochtic').  % wrinkled; variant of K XOLOCHTIC
adj_stem('tliltic').  % black (K TLILTIC)
adj_stem('tzopelic').  % sweet (K TZOPĒLIC, long ē)
adj_stem('tētzōcoztic').  % yellow-haired (tē- + TZON-TLI + COZTIC)
adj_stem('xillancapitzti').  % narrow-flanked (XILLĀN-TLI + capitzti)
adj_stem('xillāoacaltic').  % hollow-flanked (XILLĀN-TLI + oacaltic)
adj_stem('xoxōchiteyō').  % flowered (see above)
adj_stem('xōchimoyāhuac').  % fragrant (see above)
adj_stem('yancuic').  % new (K YANCUIC)

% ============================================================================
% NONACTIVE STEM FACTS
% ============================================================================
% Lexicalised nonactive stems; the productive rules are in parser.pl.

nonactive_stem('chōquīlilo', nonactive('choquilia', 'lō'), a1).  % CHŌQUĪLILŌ nonact. CHŌQUILIA
nonactive_stem('cualo', nonactive('cua', 'lō'), a1).  % it was eaten (K CUĀLŌ)
nonactive_stem('imacaxō', nonactive('imacaxoa', 'ō'), a1).  % IMACAXŌ nonact. IMACAXOĀ
nonactive_stem('itto', nonactive('itta', 'ō'), a1).  % nonact. ITTA: itto-queh
nonactive_stem('macho', nonactive('mati', 'ō'), a1).  % MACHO nonact. MAT(I): macho-c 'it was known'
nonactive_stem('maco', nonactive('maca', 'ō'), a1).  % MACO nonact. MACA
nonactive_stem('mictilo', nonactive('mictia', 'lō'), a1).  % he was killed (MICTIA nonact.)
nonactive_stem('mito', nonactive('itoa', 'm-'), a1).  % it was said (nonact. ITOA; K ITOA)
nonactive_stem('mitohua', nonactive('itoa', 'm-'), a1).  % it was said/called (nonact. ITOA + -hua)
nonactive_stem('pīelō', nonactive('pia', 'lō'), a1).  % PĪALŌ nonact. PĪA, FC pīe-lō
nonactive_stem('tetototzalo', nonactive('tototza', 'lō'), a1).  % noise was made (TĒ- + TOTOTZA nonact.)
nonactive_stem('tlacacaxchichioalo', nonactive('cacaxchichioa', 'lō'), a1).  % baskets are made (nonact. of CACAX + CHĪHUA)
nonactive_stem('tlamictilo', nonactive('mictia', 'lō'), a1).  % people were killed (TLA- + MICTIA nonact.)
nonactive_stem('tlatlapielo', nonactive('tlapielia', 'lō'), a1).  % guarding was done (TLA- + PIELIA nonact.)
nonactive_stem('tlaācaltemaloc', nonactive('acaltema', 'lō-c'), a1).  % boats were loaded (nonact. pret. of ACALTEMA)
nonactive_stem('īxpantilo', nonactive('īxpantia', 'lō'), a1).  % K IXPANTILO (short i), sources īxpantiloc
