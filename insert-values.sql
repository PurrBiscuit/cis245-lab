/* populate all the lookup table values first
since they are parent tables to several other tables */

DECLARE @Alabama uniqueidentifier;
DECLARE @California uniqueidentifier;
DECLARE @Florida uniqueidentifier;
DECLARE @Georgia uniqueidentifier;
DECLARE @Hesse uniqueidentifier;
DECLARE @Illinois uniqueidentifier;
DECLARE @Indiana uniqueidentifier;
DECLARE @Massachusetts uniqueidentifier;
DECLARE @NewJersey uniqueidentifier;
DECLARE @NewYork uniqueidentifier;
DECLARE @Oklahoma uniqueidentifier;
DECLARE @Pennsylvania uniqueidentifier;
DECLARE @Texas uniqueidentifier;
DECLARE @Virginia uniqueidentifier;

SELECT @Alabama = NewID();
SELECT @California = NewID();
SELECT @Florida = NewID();
SELECT @Georgia = NewID();
SELECT @Hesse = NewID();
SELECT @Illinois = NewID();
SELECT @Indiana = NewID();
SELECT @Massachusetts = NewID();
SELECT @NewJersey = NewID();
SELECT @NewYork = NewID();
SELECT @Oklahoma = NewID();
SELECT @Pennsylvania = NewID();
SELECT @Texas = NewID();
SELECT @Virginia = NewID();

INSERT INTO LOOKUP_STATES_COUNTIES VALUES
(@Alabama, 'AL','Alabama'),
(NewID(), 'AK','Alaska'),
(NewID(), 'AZ','Arizona'),
(NewID(), 'AR','Arkansas'),
(@California, 'CA','California'),
(NewID(), 'CO','Colorado'),
(NewID(), 'CT','Connecticut'),
(NewID(), 'DE','Delaware'),
(NewID(), 'DC','District of Columbia'),
(@Florida, 'FL','Florida'),
(@Georgia, 'GA','Georgia'),
(NewID(), 'HI','Hawaii'),
(@Hesse, 'HE','Hesse'),
(NewID(), 'ID','Idaho'),
(@Illinois, 'IL','Illinois'),
(@Indiana, 'IN','Indiana'),
(NewID(), 'IA','Iowa'),
(NewID(), 'KS','Kansas'),
(NewID(), 'KY','Kentucky'),
(NewID(), 'LA','Louisiana'),
(NewID(), 'ME','Maine'),
(NewID(), 'MT','Montana'),
(NewID(), 'NE','Nebraska'),
(NewID(), 'NV','Nevada'),
(NewID(), 'NH','New Hampshire'),
(@NewJersey, 'NJ','New Jersey'),
(NewID(), 'NM','New Mexico'),
(@NewYork, 'NY','New York'),
(NewID(), 'NC','North Carolina'),
(NewID(), 'ND','North Dakota'),
(NewID(), 'OH','Ohio'),
(@Oklahoma, 'OK','Oklahoma'),
(NewID(), 'OR','Oregon'),
(NewID(), 'MD','Maryland'),
(@Massachusetts, 'MA','Massachusetts'),
(NewID(), 'MI','Michigan'),
(NewID(), 'MN','Minnesota'),
(NewID(), 'MS','Mississippi'),
(NewID(), 'MO','Missouri'),
(@Pennsylvania, 'PA','Pennsylvania'),
(NewID(), 'RI','Rhode Island'),
(NewID(), 'SC','South Carolina'),
(NewID(), 'SD','South Dakota'),
(NewID(), 'TN','Tennessee'),
(@Texas, 'TX','Texas'),
(NewID(), 'UT','Utah'),
(NewID(), 'VT','Vermont'),
(@Virginia, 'VA','Virginia'),
(NewID(), 'WA','Washington'),
(NewID(), 'WV','West Virginia'),
(NewID(), 'WI','Wisconsin'),
(NewID(), 'WY','Wyoming');

INSERT INTO LOOKUP_COUNTRIES VALUES
('AF','Afghanistan'),
('AL','Albania'),
('DZ','Algeria'),
('AS','American Samoa'),
('AD','Andorra'),
('AO','Angola'),
('AI','Anguilla'),
('AQ','Antarctica'),
('AG','Antigua and Barbuda'),
('AR','Argentina'),
('AM','Armenia'),
('AW','Aruba'),
('AU','Australia'),
('AT','Austria'),
('AZ','Azerbaijan'),
('BS','Bahamas'),
('BH','Bahrain'),
('BD','Bangladesh'),
('BB','Barbados'),
('BY','Belarus'),
('BE','Belgium'),
('BZ','Belize'),
('BJ','Benin'),
('BM','Bermuda'),
('BT','Bhutan'),
('BO','Bolivia, Plurinational State of'),
('BQ','Bonaire, Sint Eustatius and Saba'),
('BA','Bosnia and Herzegovina'),
('BW','Botswana'),
('BV','Bouvet Island'),
('BR','Brazil'),
('IO','British Indian Ocean Territory'),
('BN','Brunei Darussalam'),
('BG','Bulgaria'),
('BF','Burkina Faso'),
('BI','Burundi'),
('KH','Cambodia'),
('CM','Cameroon'),
('CA','Canada'),
('CV','Cape Verde'),
('KY','Cayman Islands'),
('CF','Central African Republic'),
('TD','Chad'),
('CL','Chile'),
('CN','China'),
('CX','Christmas Island'),
('CC','Cocos Keeling) Islands'),
('CO','Colombia'),
('KM','Comoros'),
('CG','Congo'),
('CD','Congo, the Democratic Republic of the'),
('CK','Cook Islands'),
('CR','Costa Rica'),
('CI','Cote d''Ivoire'),
('HR','Croatia'),
('CU','Cuba'),
('CY','Cyprus'),
('CZ','Czech Republic'),
('DK','Denmark'),
('DJ','Djibouti'),
('DM','Dominica'),
('DO','Dominican Republic'),
('EC','Ecuador'),
('EG','Egypt'),
('SV','El Salvador'),
('GQ','Equatorial Guinea'),
('ER','Eritrea'),
('EE','Estonia'),
('ET','Ethiopia'),
('FK','Falkland Islands Malvinas)'),
('FO','Faroe Islands'),
('FJ','Fiji'),
('FI','Finland'),
('FR','France'),
('GF','French Guiana'),
('PF','French Polynesia'),
('TF','French Southern Territories'),
('GA','Gabon'),
('GM','Gambia'),
('GE','Georgia'),
('DE','Germany'),
('GH','Ghana'),
('GI','Gibraltar'),
('GR','Greece'),
('GL','Greenland'),
('GD','Grenada'),
('GP','Guadeloupe'),
('GU','Guam'),
('GT','Guatemala'),
('GG','Guernsey'),
('GN','Guinea'),
('GW','Guinea-Bissau'),
('GY','Guyana'),
('HT','Haiti'),
('HM','Heard Island and McDonald Islands'),
('VA','Holy See Vatican City State)'),
('HN','Honduras'),
('HK','Hong Kong'),
('HU','Hungary'),
('IS','Iceland'),
('IN','India'),
('ID','Indonesia'),
('IR','Iran, Islamic Republic of'),
('IQ','Iraq'),
('IE','Ireland'),
('IM','Isle of Man'),
('IL','Israel'),
('IT','Italy'),
('JM','Jamaica'),
('JP','Japan'),
('JE','Jersey'),
('JO','Jordan'),
('KZ','Kazakhstan'),
('KE','Kenya'),
('KI','Kiribati'),
('KP','Korea, Democratic People''s Republic of'),
('KR','Korea, Republic of'),
('KW','Kuwait'),
('KG','Kyrgyzstan'),
('LA','Lao People''s Democratic Republic'),
('LV','Latvia'),
('LB','Lebanon'),
('LS','Lesotho'),
('LR','Liberia'),
('LY','Libya'),
('LI','Liechtenstein'),
('LT','Lithuania'),
('LU','Luxembourg'),
('MO','Macao'),
('MK','Macedonia, the Former Yugoslav Republic of'),
('MG','Madagascar'),
('MW','Malawi'),
('MY','Malaysia'),
('MV','Maldives'),
('ML','Mali'),
('MT','Malta'),
('MH','Marshall Islands'),
('MQ','Martinique'),
('MR','Mauritania'),
('MU','Mauritius'),
('YT','Mayotte'),
('MX','Mexico'),
('FM','Micronesia, Federated States of'),
('MD','Moldova, Republic of'),
('MC','Monaco'),
('MN','Mongolia'),
('ME','Montenegro'),
('MS','Montserrat'),
('MA','Morocco'),
('MZ','Mozambique'),
('MM','Myanmar'),
('NA','Namibia'),
('NR','Nauru'),
('NP','Nepal'),
('NL','Netherlands'),
('NC','New Caledonia'),
('NZ','New Zealand'),
('NI','Nicaragua'),
('NE','Niger'),
('NG','Nigeria'),
('NU','Niue'),
('NF','Norfolk Island'),
('MP','Northern Mariana Islands'),
('NO','Norway'),
('OM','Oman'),
('PK','Pakistan'),
('PW','Palau'),
('PS','Palestine, State of'),
('PA','Panama'),
('PG','Papua New Guinea'),
('PY','Paraguay'),
('PE','Peru'),
('PH','Philippines'),
('PN','Pitcairn'),
('PL','Poland'),
('PT','Portugal'),
('PR','Puerto Rico'),
('QA','Qatar'),
('RO','Romania'),
('RU','Russian Federation'),
('RW','Rwanda'),
('SH','Saint Helena, Ascension and Tristan da Cunha'),
('KN','Saint Kitts and Nevis'),
('LC','Saint Lucia'),
('MF','Saint Martin French part)'),
('PM','Saint Pierre and Miquelon'),
('VC','Saint Vincent and the Grenadines'),
('WS','Samoa'),
('SM','San Marino'),
('ST','Sao Tome and Principe'),
('SA','Saudi Arabia'),
('SN','Senegal'),
('RS','Serbia'),
('SC','Seychelles'),
('SL','Sierra Leone'),
('SG','Singapore'),
('SX','Sint Maarten Dutch part)'),
('SK','Slovakia'),
('SI','Slovenia'),
('SB','Solomon Islands'),
('SO','Somalia'),
('ZA','South Africa'),
('GS','South Georgia and the South Sandwich Islands'),
('SS','South Sudan'),
('ES','Spain'),
('LK','Sri Lanka'),
('SD','Sudan'),
('SR','Suriname'),
('SJ','Svalbard and Jan Mayen'),
('SZ','Swaziland'),
('SE','Sweden'),
('CH','Switzerland'),
('SY','Syrian Arab Republic'),
('TW','Taiwan, Province of China'),
('TJ','Tajikistan'),
('TZ','Tanzania, United Republic of'),
('TH','Thailand'),
('TL','Timor-Leste'),
('TG','Togo'),
('TK','Tokelau'),
('TO','Tonga'),
('TT','Trinidad and Tobago'),
('TN','Tunisia'),
('TR','Turkey'),
('TM','Turkmenistan'),
('TC','Turks and Caicos Islands'),
('TV','Tuvalu'),
('UG','Uganda'),
('UA','Ukraine'),
('AE','United Arab Emirates'),
('GB','United Kingdom'),
('US','United States'),
('UM','United States Minor Outlying Islands'),
('UY','Uruguay'),
('UZ','Uzbekistan'),
('VU','Vanuatu'),
('VE','Venezuela, Bolivarian Republic of'),
('VN','Viet Nam'),
('VG','Virgin Islands, British'),
('VI','Virgin Islands, U.S.'),
('WF','Wallis and Futuna'),
('EH','Western Sahara'),
('YE','Yemen'),
('ZM','Zambia'),
('ZW','Zimbabwe');

INSERT INTO LOOKUP_LANGUAGES VALUES
('aar','Afar'),
('abk','Abkhazian'),
('afr','Afrikaans'),
('aka','Akan'),
('alb','Albanian'),
('amh','Amharic'),
('ara','Arabic'),
('arg','Aragonese'),
('arm','Armenian'),
('asm','Assamese'),
('ava','Avaric'),
('ave','Avestan'),
('aym','Aymara'),
('aze','Azerbaijani'),
('bak','Bashkir'),
('bam','Bambara'),
('baq','Basque'),
('bel','Belarusian'),
('ben','Bengali'),
('bih','Bihari languages'),
('bis','Bislama'),
('bos','Bosnian'),
('bre','Breton'),
('bul','Bulgarian'),
('bur','Burmese'),
('cat','Catalan; Valencian'),
('cha','Chamorro'),
('che','Chechen'),
('chi','Chinese'),
('chv','Chuvash'),
('cor','Cornish'),
('cos','Corsican'),
('cre','Cree'),
('cze','Czech'),
('dan','Danish'),
('dut','Dutch; Flemish'),
('dzo','Dzongkha'),
('eng','English'),
('epo','Esperanto'),
('est','Estonian'),
('ewe','Ewe'),
('fao','Faroese'),
('fij','Fijian'),
('fin','Finnish'),
('fre','French'),
('fry','Western Frisian'),
('ful','Fulah'),
('geo','Georgian'),
('ger','German'),
('gla','Gaelic; Scottish Gaelic'),
('gle','Irish'),
('glg','Galician'),
('glv','Manx'),
('gre','Greek'),
('grn','Guarani'),
('guj','Gujarati'),
('hat','Haitian; Haitian Creole'),
('hau','Hausa'),
('heb','Hebrew'),
('her','Herero'),
('hin','Hindi'),
('hmo','Hiri Motu'),
('hrv','Croatian'),
('hun','Hungarian'),
('ibo','Igbo'),
('ice','Icelandic'),
('ido','Ido'),
('iii','Sichuan Yi; Nuosu'),
('iku','Inuktitut'),
('ile','Interlingue; Occidental'),
('ina','Interlingua (International Auxiliary Language Association)'),
('ind','Indonesian'),
('ipk','Inupiaq'),
('ita','Italian'),
('jav','Javanese'),
('jpn','Japanese'),
('kal','Kalaallisut; Greenlandic'),
('kan','Kannada'),
('kas','Kashmiri'),
('kau','Kanuri'),
('kaz','Kazakh'),
('khm','Central Khmer'),
('kik','Kikuyu; Gikuyu'),
('kin','Kinyarwanda'),
('kir','Kirghiz; Kyrgyz'),
('kom','Komi'),
('kon','Kongo'),
('kor','Korean'),
('kua','Kuanyama; Kwanyama'),
('kur','Kurdish'),
('lao','Lao'),
('lat','Latin'),
('lav','Latvian'),
('lim','Limburgan; Limburger; Limburgish'),
('lin','Lingala'),
('lit','Lithuanian'),
('ltz','Luxembourgish; Letzeburgesch'),
('lub','Luba-Katanga'),
('lug','Ganda'),
('mac','Macedonian'),
('mah','Marshallese'),
('mal','Malayalam'),
('mao','Maori'),
('mar','Marathi'),
('may','Malay'),
('mlg','Malagasy'),
('mlt','Maltese'),
('mon','Mongolian'),
('nau','Nauru'),
('nav','Navajo; Navaho'),
('ndo','Ndonga'),
('nep','Nepali'),
('nor','Norwegian'),
('nya','Chichewa; Chewa; Nyanja'),
('oji','Ojibwa'),
('ori','Oriya'),
('orm','Oromo'),
('oss','Ossetian; Ossetic'),
('pan','Panjabi; Punjabi'),
('per','Persian'),
('pli','Pali'),
('pol','Polish'),
('por','Portuguese'),
('pus','Pushto; Pashto'),
('que','Quechua'),
('roh','Romansh'),
('rum','Romanian; Moldavian; Moldovan'),
('run','Rundi'),
('rus','Russian'),
('sag','Sango'),
('san','Sanskrit'),
('sin','Sinhala; Sinhalese'),
('slo','Slovak'),
('slv','Slovenian'),
('sme','Northern Sami'),
('smo','Samoan'),
('sna','Shona'),
('snd','Sindhi'),
('som','Somali'),
('spa','Spanish; Castilian'),
('srd','Sardinian'),
('srp','Serbian'),
('ssw','Swati'),
('sun','Sundanese'),
('swa','Swahili'),
('swe','Swedish'),
('tah','Tahitian'),
('tam','Tamil'),
('tat','Tatar'),
('tel','Telugu'),
('tgk','Tajik'),
('tgl','Tagalog'),
('tha','Thai'),
('tib','Tibetan'),
('tir','Tigrinya'),
('tsn','Tswana'),
('tso','Tsonga'),
('tuk','Turkmen'),
('tur','Turkish'),
('twi','Twi'),
('uig','Uighur; Uyghur'),
('ukr','Ukrainian'),
('urd','Urdu'),
('uzb','Uzbek'),
('ven','Venda'),
('vie','Vietnamese'),
('vol','VolapÃ¼k'),
('wel','Welsh'),
('wln','Walloon'),
('wol','Wolof'),
('xho','Xhosa'),
('yid','Yiddish'),
('yor','Yoruba'),
('zha','Zhuang; Chuang'),
('zul','Zulu');

INSERT INTO LOOKUP_GENRES VALUES
(NewID(), 'Sitcom'),
(NewID(), 'Science-ficton'),
(NewID(), 'Satire'),
(NewID(), 'Action'),
(NewID(), 'Drama'),
(NewID(), 'Slapstick'),
(NewID(), 'Sketch comedy'),
(NewID(), 'Variety'),
(NewID(), 'Action comedy'),
(NewID(), 'Art television'),
(NewID(), 'Adult content'),
(NewID(), 'Adventure'),
(NewID(), 'Courtroom drama'),
(NewID(), 'Fantasy'),
(NewID(), 'Horror'),
(NewID(), 'Legal drama'),
(NewID(), 'Medical drama'),
(NewID(), 'Thriller'),
(NewID(), 'Romantic Comedy'),
(NewID(), 'Mockumentary'),
(NewID(), 'Game show'),
(NewID(), 'Educational'),
(NewID(), 'Music television'),
(NewID(), 'News program'),
(NewID(), 'Religious'),
(NewID(), 'Reality'),
(NewID(), 'Stand-up comedy'),
(NewID(), 'Sports'),
(NewID(), 'Talk show'),
(NewID(), 'Cooking show'),
(NewID(), 'Infomercials'),
(NewID(), 'Soap opera'),
(NewID(), 'Court show'),
(NewID(), 'Public affairs'),
(NewID(), 'Instructional'),
(NewID(), 'Factual television'),
(NewID(), 'Documentary'),
(NewID(), 'Amateur'),
(NewID(), 'Western');

DECLARE @JerrySeinfeld uniqueidentifier;
DECLARE @JuliaLouisDreyfus uniqueidentifier;
DECLARE @JasonAlexander uniqueidentifier;
DECLARE @MichaelRichards uniqueidentifier;
DECLARE @KelseyGrammer uniqueidentifier;
DECLARE @DavidPierce uniqueidentifier;
DECLARE @KaleyCuoco uniqueidentifier;
DECLARE @MartinLawrence uniqueidentifier;
DECLARE @TishaCampbellMartin uniqueidentifier;
DECLARE @JimParsons uniqueidentifier;
DECLARE @JenniferAniston uniqueidentifier;
DECLARE @CourtneyCox uniqueidentifier;
DECLARE @LisaKudrow uniqueidentifier;
DECLARE @SteveCarell uniqueidentifier;
DECLARE @JennaFischer uniqueidentifier;
DECLARE @JohnKrasinski uniqueidentifier;
DECLARE @WillSmith uniqueidentifier;
DECLARE @JamesGandolfini uniqueidentifier;
DECLARE @LorraineBraco uniqueidentifier;
DECLARE @BeaArthur uniqueidentifier;
DECLARE @BettyWhite uniqueidentifier;
DECLARE @RueMcClanahan uniqueidentifier;
DECLARE @JamesAvery uniqueidentifier;
DECLARE @TedDanson uniqueidentifier;
DECLARE @ShelleyLong uniqueidentifier;
DECLARE @GeorgeWendt uniqueidentifier;
DECLARE @WoodyHarrelson uniqueidentifier;

SELECT @JerrySeinfeld = NewID();
SELECT @JuliaLouisDreyfus = NewID();
SELECT @JasonAlexander = NewID();
SELECT @MichaelRichards = NewID();
SELECT @KelseyGrammer = NewID();
SELECT @DavidPierce = NewID();
SELECT @KaleyCuoco = NewID();
SELECT @MartinLawrence = NewID();
SELECT @TishaCampbellMartin = NewID();
SELECT @JimParsons = NewID();
SELECT @JenniferAniston = NewID();
SELECT @CourtneyCox = NewID();
SELECT @LisaKudrow = NewID();
SELECT @SteveCarell = NewID();
SELECT @JennaFischer = NewID();
SELECT @JohnKrasinski = NewID();
SELECT @WillSmith = NewID();
SELECT @JamesGandolfini = NewID();
SELECT @LorraineBraco = NewID();
SELECT @BeaArthur = NewID();
SELECT @BettyWhite = NewID();
SELECT @RueMcClanahan = NewID();
SELECT @JamesAvery = NewID();
SELECT @TedDanson = NewID();
SELECT @ShelleyLong = NewID();
SELECT @GeorgeWendt = NewID();
SELECT @WoodyHarrelson = NewID();

INSERT INTO PEOPLE VALUES
(@JerrySeinfeld, 'Jerry', 'Seinfeld', '04/29/54', NULL, @NewYork, 'US', 175, 71, 'm'),
(@JuliaLouisDreyfus, 'Julia', 'Louis-Dreyfus', '01/31/1961', NULL, @NewYork, 'US', 119, 63, 'f'),
(@JasonAlexander, 'Jason', 'Alexander', '09/23/1959', NULL, @NewJersey, 'US', 195, 65, 'm'),
(@MichaelRichards, 'Michael', 'Richards', '07/24/1949', NULL, @California, 'US', 190, 75, 'm'),
(@KelseyGrammer, 'Kelsey', 'Grammer', '02/21/1955', NULL, NULL, 'VI', 172, 73, 'm'),
(@DavidPierce, 'David', 'Pierce', '04/03/1959', NULL, @NewYork, 'US', 156, 69, 'm'),
(@KaleyCuoco, 'Kaley', 'Cuoco', '11/30/1985', NULL, @California, 'US', 126, 66, 'f'),
(@MartinLawrence, 'Martin', 'Lawrence', '04/16/1965', NULL, @Hesse, 'DE', 163, 67, 'm'),
(@TishaCampbellMartin, 'Tisha', 'Campbell-Martin', '10/13/1968', NULL, @Oklahoma, 'US', 130, 64, 'f'),
(@JimParsons, 'Jim', 'Parsons', '03/24/1973', NULL, @Texas, 'US', 145, 63, 'm'),
(@JenniferAniston, 'Jennifer', 'Aniston', '02/11/1969', NULL, @California, 'US', 110, 65, 'f'),
(@CourtneyCox, 'Courtney', 'Cox', '06/15/1964', NULL, @Alabama, 'US', 126, 65, 'f'),
(@LisaKudrow, 'Lisa', 'Kudrow', '07/30/1963', NULL, @California, 'US', 137, 68, 'f'),
(@SteveCarell, 'Steve', 'Carell', '08/16/1962', NULL, @Massachusetts, 'US', 172, 69, 'm'),
(@JennaFischer, 'Jenna', 'Fischer', '03/07/1974', NULL, @Indiana, 'US', 125, 65, 'f'),
(@JohnKrasinski, 'John', 'Krasinski', '10/20/1979', NULL, @NewYork, 'US', 174, 75, 'm'),
(@WillSmith, 'Will', 'Smith', '09/25/1968', NULL, @Pennsylvania, 'US', 181, 74, 'm'),
(@JamesGandolfini, 'James', 'Gandolfini', '09/18/1961', '06/19/2013', @NewJersey, 'US', 274, 72, 'm'),
(@LorraineBraco, 'Lorraine', 'Braco', '10/02/1954', NULL, @NewYork, 'US', 132, 68, 'f'),
(@BeaArthur, 'Bea', 'Arthur', '05/13/1922', '04/25/2009', @California, 'US', 120, 66, 'f'),
(@BettyWhite, 'Betty', 'White', '01/17/1922', NULL, @Illinois, 'US', 115, 64, 'f'),
(@RueMcClanahan, 'Rue', 'McClanahan', '02/21/1934', '06/03/2010', @Oklahoma, 'US', 110, 63, 'f'),
(@JamesAvery, 'James', 'Avery', '11/27/1945', '12/31/2013', @California, 'US', 265, 77, 'm'),
(@TedDanson, 'Ted', 'Danson', '12/29/1947', NULL, @California, 'US', 185, 74, 'm'),
(@ShelleyLong, 'Shelley', 'Long', '08/23/1949', NULL, @Indiana, 'US', 120, 68, 'f'),
(@GeorgeWendt, 'George', 'Wendt', '10/17/1948', NULL, @Illinois, 'US', 225, 68, 'm'),
(@WoodyHarrelson, 'Woody', 'Harrelson', '07/23/1961', NULL, @Texas, 'US', 180, 70, 'm');

DECLARE @JerrySeinfeldRole uniqueidentifier;
DECLARE @ElaineBenes uniqueidentifier;
DECLARE @GeorgeConstanza uniqueidentifier;
DECLARE @CosmoKramer uniqueidentifier;
DECLARE @FrasierCrane uniqueidentifier;
DECLARE @NilesCrane uniqueidentifier;
DECLARE @Penny uniqueidentifier;
DECLARE @MartinPayne uniqueidentifier;
DECLARE @GinaWaters uniqueidentifier;
DECLARE @SheldonCooper uniqueidentifier;
DECLARE @RachelGreen uniqueidentifier;
DECLARE @MonicaGeller uniqueidentifier;
DECLARE @PhoebeBuffay uniqueidentifier;
DECLARE @MichaelScott uniqueidentifier;
DECLARE @PamBeesly uniqueidentifier;
DECLARE @JimHalpert uniqueidentifier;
DECLARE @WillSmithRole uniqueidentifier;
DECLARE @TonySoprano uniqueidentifier;
DECLARE @JenniferMelfi uniqueidentifier;
DECLARE @DorothyZbornak uniqueidentifier;
DECLARE @RoseNylund uniqueidentifier;
DECLARE @BlancheDevereaux uniqueidentifier;
DECLARE @PhilipBanks uniqueidentifier;
DECLARE @SamMalone uniqueidentifier;
DECLARE @DianeChambers uniqueidentifier;
DECLARE @NormPeterson uniqueidentifier;
DECLARE @WoodyBoyd uniqueidentifier;

SELECT @JerrySeinfeldRole = NewID();
SELECT @ElaineBenes = NewID();
SELECT @GeorgeConstanza = NewID();
SELECT @CosmoKramer = NewID();
SELECT @FrasierCrane = NewID();
SELECT @NilesCrane = NewID();
SELECT @Penny = NewID();
SELECT @MartinPayne = NewID();
SELECT @GinaWaters = NewID();
SELECT @SheldonCooper = NewID();
SELECT @RachelGreen = NewID();
SELECT @MonicaGeller = NewID();
SELECT @PhoebeBuffay = NewID();
SELECT @MichaelScott = NewID();
SELECT @PamBeesly = NewID();
SELECT @JimHalpert = NewID();
SELECT @WillSmithRole = NewID();
SELECT @TonySoprano = NewID();
SELECT @JenniferMelfi = NewID();
SELECT @DorothyZbornak = NewID();
SELECT @RoseNylund = NewID();
SELECT @BlancheDevereaux = NewID();
SELECT @PhilipBanks = NewID();
SELECT @SamMalone = NewID();
SELECT @DianeChambers = NewID();
SELECT @NormPeterson = NewID();
SELECT @WoodyBoyd = NewID();

INSERT INTO ROLES VALUES
(@JerrySeinfeldRole, 'Jerry', 'Seinfeld', @JerrySeinfeld),
(@ElaineBenes, 'Elaine', 'Benes', @JuliaLouisDreyfus),
(@GeorgeConstanza, 'George', 'Constanza', @JasonAlexander),
(@CosmoKramer, 'Cosmo', 'Kramer', @MichaelRichards),
(@FrasierCrane, 'Frasier', 'Crane', @KelseyGrammer),
(@NilesCrane, 'Niles', 'Crane', @DavidPierce),
(@Penny, 'Penny', NULL, @KaleyCuoco),
(@MartinPayne, 'Martin', 'Payne', @MartinLawrence),
(@GinaWaters, 'Gina', 'Waters', @TishaCampbellMartin),
(@SheldonCooper, 'Sheldon', 'Cooper', @JimParsons),
(@RachelGreen, 'Rachel', 'Green', @JenniferAniston),
(@MonicaGeller, 'Monica', 'Geller', @CourtneyCox),
(@PhoebeBuffay, 'Phoebe', 'Buffay', @LisaKudrow),
(@MichaelScott, 'Michael', 'Scott', @SteveCarell),
(@PamBeesly, 'Pam', 'Beesly', @JennaFischer),
(@JimHalpert, 'Jim', 'Halpert', @JohnKrasinski),
(@WillSmithRole, 'Will', 'Smith', @WillSmith),
(@TonySoprano, 'Tony', 'Soprano', @JamesGandolfini),
(@JenniferMelfi, 'Jennifer', 'Melfi', @LorraineBraco),
(@DorothyZbornak, 'Dorothy', 'Zbornak', @BeaArthur),
(@RoseNylund, 'Rose', 'Nylund', @BettyWhite),
(@BlancheDevereaux, 'Blanche', 'Devereaux', @RueMcClanahan),
(@PhilipBanks, 'Philip', 'Banks', @JamesAvery),
(@SamMalone, 'Sam', 'Malone', @TedDanson),
(@DianeChambers, 'Diane', 'Chambers', @ShelleyLong),
(@NormPeterson, 'Norm', 'Peterson', @GeorgeWendt),
(@WoodyBoyd, 'Woody', 'Boyd', @WoodyHarrelson);

DECLARE @ABC uniqueidentifier;
DECLARE @NBC uniqueidentifier;
DECLARE @CBS uniqueidentifier;
DECLARE @Fox uniqueidentifier;
DECLARE @CW uniqueidentifier;
DECLARE @PBS uniqueidentifier;
DECLARE @Create uniqueidentifier;
DECLARE @World uniqueidentifier;
DECLARE @PBSKids uniqueidentifier;
DECLARE @NHKWorld uniqueidentifier;
DECLARE @FNX uniqueidentifier;
DECLARE @France24 uniqueidentifier;
DECLARE @Mind uniqueidentifier;
DECLARE @Univison uniqueidentifier;
DECLARE @Telemundo uniqueidentifier;
DECLARE @LATV uniqueidentifier;
DECLARE @MyNetworkTV uniqueidentifier;
DECLARE @MeTV uniqueidentifier;
DECLARE @Escape uniqueidentifier;
DECLARE @Grit uniqueidentifier;
DECLARE @Laff uniqueidentifier;

SELECT @ABC = NewID();
SELECT @NBC = NewID();
SELECT @CBS = NewID();
SELECT @Fox = NewID();
SELECT @CW = NewID();
SELECT @PBS = NewID();
SELECT @Create = NewID();
SELECT @World = NewID();
SELECT @PBSKids = NewID();
SELECT @NHKWorld = NewID();
SELECT @FNX = NewID();
SELECT @France24 = NewID();
SELECT @Mind = NewID();
SELECT @Univison = NewID();
SELECT @Telemundo = NewID();
SELECT @LATV = NewID();
SELECT @MyNetworkTV = NewID();
SELECT @MeTV = NewID();
SELECT @Escape = NewID();
SELECT @Grit = NewID();
SELECT @Laff = NewID();

INSERT INTO NETWORKS VALUES
(@ABC, 'ABC', '05/15/1943', 'America''s Network: ABC', '1111 Main St', NULL, 'Burbank', @California, 'US'),
(@NBC, 'NBC', '06/19/1926', 'America''s #1 Network', '30 Rockefeller Plaza', NULL, 'New York City', @NewYork, 'US'),
(@CBS, 'CBS', '09/18/1927', 'America''s Most Watched Network', '51 West 52nd Street', 'Manhattan', 'New York City', @NewYork, 'US'),
(@Fox, 'Fox', '10/09/1986', 'We Are Fox', '1234 Madison Ave', NULL, 'New York City', @NewYork, 'US'),
(@CW, 'CW', '01/24/2006', 'Dare to Defy', '1122 Main St', NULL, 'Burbank', @California, 'US'),
(@PBS, 'PBS', '11/3/1969', 'Be More', '3524 Smith Dr', NULL, 'Arlington', @Virginia, 'US'),
(@Create, 'Create', '01/10/2006', 'The TV channel for cooking, arts & crafts, gardening, home improvement, and travel.', '1562 Yorkster Ave', NULL, 'New York City', @NewYork, 'US'),
(@World, 'World', '01/01/2005', '	Brave. New. Real.', '4353 Bosty Ave', NULL, 'Boston', @Massachusetts, 'US'),
(@PBSKids, 'PBSKids', '07/11/1994', NULL, '3524 Smith Dr', NULL, 'Arlington', @Virginia, 'US'),
(@NHKWorld, 'NHKWorld', '01/01/1998', 'Widening Horizons', '43255 Taki Dr', NULL, 'Tokyo', NULL, 'JP'),
(@FNX, 'FNX', '09/25/2011', NULL, '701 South Mount Vernon Ave', NULL, 'San Bernardino', @California, 'US'),
(@France24, 'France24', '12/06/2006', 'International News 24/7', '2345 Frenchy Ave', NULL, 'Paris', NULL, 'FR'),
(@Mind, 'Mind', '01/01/2007', NULL, '1500 Broad St', NULL, 'Philadelphia', @Pennsylvania, 'US'),
(@Univison, 'Univison', '09/29/1962', 'What unites us', '605 Third Avenue', NULL, 'New York City', @NewYork, 'US'),
(@Telemundo, 'Telemundo', '01/01/1984', 'Together unstoppable', '3532 Sunny Park', NULL, 'Miami', @Florida, 'US'),
(@LATV, 'LATV', '01/01/2001', 'Latino Alternative Television', '1234 Angels Dr', NULL, 'Los Angelese', @California, 'US'),
(@MyNetworkTV, 'MyNetworkTV', '09/05/2006', NULL, '603 Hollow St', NULL, 'Los Angelese', @California, 'US'),
(@MeTV, 'MeTV', '01/05/2003', 'Memorable entertainment television, that''s memorable, that''s me. MeTV', '123 Example Ave', NULL, 'Chicago', @Illinois, 'US'),
(@Escape, 'Escape', '08/18/2014', 'Slip Away.', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US'),
(@Grit, 'Grit', '08/18/2014', 'Television with Backbone', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US'),
(@Laff, 'Laff', '04/15/2015', 'You know you want to.', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US');
