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

DECLARE @Sitcom uniqueidentifier;
DECLARE @Action uniqueidentifier;
DECLARE @Crime uniqueidentifier;
DECLARE @Drama uniqueidentifier;
DECLARE @Horror uniqueidentifier;
DECLARE @SciFi uniqueidentifier;
DECLARE @Fantasy uniqueidentifier;
DECLARE @Sports uniqueidentifier;
DECLARE @Mockumentary uniqueidentifier;
DECLARE @TalkShow uniqueidentifier;

SELECT @Sitcom = NewID();
SELECT @Action = NewID();
SELECT @Crime = NewID();
SELECT @Drama = NewID();
SELECT @Horror = NewID();
SELECT @SciFi = NewID();
SELECT @Fantasy = NewID();
SELECT @Sports = NewID();
SELECT @Mockumentary = NewID();
SELECT @TalkShow = NewID();

INSERT INTO LOOKUP_GENRES VALUES
(@Sitcom, 'Sitcom'),
(@SciFi, 'Science-ficton'),
(NewID(), 'Satire'),
(@Action, 'Action'),
(@Crime, 'Crime'),
(@Drama, 'Drama'),
(NewID(), 'Slapstick'),
(NewID(), 'Sketch comedy'),
(NewID(), 'Variety'),
(NewID(), 'Action comedy'),
(NewID(), 'Art television'),
(NewID(), 'Adult content'),
(NewID(), 'Adventure'),
(NewID(), 'Courtroom drama'),
(@Fantasy, 'Fantasy'),
(@Horror, 'Horror'),
(NewID(), 'Legal drama'),
(NewID(), 'Medical drama'),
(NewID(), 'Thriller'),
(NewID(), 'Romantic Comedy'),
(@Mockumentary, 'Mockumentary'),
(NewID(), 'Game show'),
(NewID(), 'Educational'),
(NewID(), 'Music television'),
(NewID(), 'News program'),
(NewID(), 'Religious'),
(NewID(), 'Reality'),
(NewID(), 'Stand-up comedy'),
(@Sports, 'Sports'),
(@TalkShow, 'Talk show'),
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
DECLARE @Director1 uniqueidentifier;
DECLARE @Director2 uniqueidentifier;
DECLARE @Director3 uniqueidentifier;
DECLARE @Director4 uniqueidentifier;
DECLARE @Director5 uniqueidentifier;
DECLARE @Writer1 uniqueidentifier;
DECLARE @Writer2 uniqueidentifier;
DECLARE @Writer3 uniqueidentifier;
DECLARE @Writer4 uniqueidentifier;
DECLARE @Writer5 uniqueidentifier;

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
SELECT @Director1 = NewID();
SELECT @Director2 = NewID();
SELECT @Director3 = NewID();
SELECT @Director4 = NewID();
SELECT @Director5 = NewID();
SELECT @Writer1 = NewID();
SELECT @Writer2 = NewID();
SELECT @Writer3 = NewID();
SELECT @Writer4 = NewID();
SELECT @Writer5 = NewID();

INSERT INTO PEOPLE VALUES
(@JerrySeinfeld, 'Jerry', 'Seinfeld', '04/29/1954', NULL, @NewYork, 'US', 175, 71, 'm'),
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
(@WoodyHarrelson, 'Woody', 'Harrelson', '07/23/1961', NULL, @Texas, 'US', 180, 70, 'm'),
(@Director1, 'Director', 'One', '01/02/1955', NULL, @NewYork, 'US', 180, 72, 'm'),
(@Director2, 'Director', 'Two', '01/02/1965', NULL, @California, 'US', 195, 70, 'm'),
(@Director3, 'Director', 'Three', '01/02/1975', NULL, @California, 'US', 115, 65, 'f'),
(@Director4, 'Director', 'Four', '01/02/1958', NULL, @NewYork, 'US', 210, 68, 'm'),
(@Director5, 'Director', 'Five', '01/02/1935', '10/15/2018', @Oklahoma, 'US', 180, 68, 'm'),
(@Writer1, 'Writer', 'One', '01/02/59', NULL, @NewYork, 'US', 190, 69, 'm'),
(@Writer2, 'Writer', 'Two', '01/02/24', '11/25/1994', @NewYork, 'US', 135, 70, 'f'),
(@Writer3, 'Writer', 'Three', '01/02/81', NULL, @NewJersey, 'US', 110, 64, 'f'),
(@Writer4, 'Writer', 'Four', '01/02/74', NULL, @Illinois, 'US', 125, 63, 'f'),
(@Writer5, 'Writer', 'Five', '01/02/64', NULL, @Pennsylvania, 'US', 180, 68, 'm');

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
(@LATV, 'LATV', '01/01/2001', 'Latino Alternative Television', '1234 Angels Dr', NULL, 'Los Angeles', @California, 'US'),
(@MyNetworkTV, 'MyNetworkTV', '09/05/2006', NULL, '603 Hollow St', NULL, 'Los Angeles', @California, 'US'),
(@MeTV, 'MeTV', '01/05/2003', 'Memorable entertainment television, that''s memorable, that''s me. MeTV', '123 Example Ave', NULL, 'Chicago', @Illinois, 'US'),
(@Escape, 'Escape', '08/18/2014', 'Slip Away.', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US'),
(@Grit, 'Grit', '08/18/2014', 'Television with Backbone', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US'),
(@Laff, 'Laff', '04/15/2015', 'You know you want to.', '1111 Falcon Dr', NULL, 'Atlanta', @Georgia, 'US');

DECLARE @ProductionStudioTest1 uniqueidentifier;
DECLARE @ProductionStudioTest2 uniqueidentifier;
DECLARE @ProductionStudioTest3 uniqueidentifier;
DECLARE @ProductionStudioTest4 uniqueidentifier;
DECLARE @ProductionStudioTest5 uniqueidentifier;
DECLARE @ProductionStudioTest6 uniqueidentifier;
DECLARE @ProductionStudioTest7 uniqueidentifier;
DECLARE @ProductionStudioTest8 uniqueidentifier;
DECLARE @ProductionStudioTest9 uniqueidentifier;
DECLARE @ProductionStudioTest10 uniqueidentifier;
DECLARE @ProductionStudioTest11 uniqueidentifier;
DECLARE @ProductionStudioTest12 uniqueidentifier;
DECLARE @ProductionStudioTest13 uniqueidentifier;
DECLARE @ProductionStudioTest14 uniqueidentifier;
DECLARE @ProductionStudioTest15 uniqueidentifier;
DECLARE @ProductionStudioTest16 uniqueidentifier;
DECLARE @ProductionStudioTest17 uniqueidentifier;
DECLARE @ProductionStudioTest18 uniqueidentifier;
DECLARE @ProductionStudioTest19 uniqueidentifier;
DECLARE @ProductionStudioTest20 uniqueidentifier;

SELECT @ProductionStudioTest1 = NewID();
SELECT @ProductionStudioTest2 = NewID();
SELECT @ProductionStudioTest3 = NewID();
SELECT @ProductionStudioTest4 = NewID();
SELECT @ProductionStudioTest5 = NewID();
SELECT @ProductionStudioTest6 = NewID();
SELECT @ProductionStudioTest7 = NewID();
SELECT @ProductionStudioTest8 = NewID();
SELECT @ProductionStudioTest9 = NewID();
SELECT @ProductionStudioTest10 = NewID();
SELECT @ProductionStudioTest11 = NewID();
SELECT @ProductionStudioTest12 = NewID();
SELECT @ProductionStudioTest13 = NewID();
SELECT @ProductionStudioTest14 = NewID();
SELECT @ProductionStudioTest15 = NewID();
SELECT @ProductionStudioTest16 = NewID();
SELECT @ProductionStudioTest17 = NewID();
SELECT @ProductionStudioTest18 = NewID();
SELECT @ProductionStudioTest19 = NewID();
SELECT @ProductionStudioTest20 = NewID();

INSERT INTO PRODUCTION_COMPANIES VALUES
(@ProductionStudioTest1, 'Production Studio 1', '01/01/1970', 'Test Slogan 1', '11 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest2, 'Production Studio 2', '11/01/1962', 'Test Slogan 2', '22 Testing Dr', NULL, 'Burbank', @California, 'US'),
(@ProductionStudioTest3, 'Production Studio 3', '08/08/1980', 'Test Slogan 3', '33 Testing Dr', NULL, 'Sacramento', @California, 'US'),
(@ProductionStudioTest4, 'Production Studio 4', '12/06/1950', 'Test Slogan 4', '44 Testing Dr', NULL, 'Arlington', @Virginia, 'US'),
(@ProductionStudioTest5, 'Production Studio 5', '11/12/1935', 'Test Slogan 5', '55 Testing Dr', NULL, 'Miami', @Florida, 'US'),
(@ProductionStudioTest6, 'Production Studio 6', '04/03/1956', 'Test Slogan 6', '66 Testing Dr', NULL, 'Atlanta', @Georgia, 'US'),
(@ProductionStudioTest7, 'Production Studio 7', '10/24/1976', 'Test Slogan 7', '77 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest8, 'Production Studio 8', '06/05/1981', 'Test Slogan 8', '88 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest9, 'Production Studio 9', '11/02/1999', 'Test Slogan 9', '99 Testing Dr', NULL, 'Philadelphia', @Pennsylvania, 'US'),
(@ProductionStudioTest10, 'Production Studio 10', '09/11/2001', 'Test Slogan 10', '1010 Testing Dr', NULL, 'Dallas', @Texas, 'US'),
(@ProductionStudioTest11, 'Production Studio 11', '11/03/2005', 'Test Slogan 11', '1111 Testing Dr', NULL, 'Tulsa', @Oklahoma, 'US'),
(@ProductionStudioTest12, 'Production Studio 12', '06/25/1965', 'Test Slogan 12', '1212 Testing Dr', NULL, 'Philadelphia', @Pennsylvania, 'US'),
(@ProductionStudioTest13, 'Production Studio 13', '04/04/1960', 'Test Slogan 13', '1313 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest14, 'Production Studio 14', '11/23/1958', 'Test Slogan 14', '1414 Testing Dr', NULL, 'Boston', @Massachusetts, 'US'),
(@ProductionStudioTest15, 'Production Studio 15', '03/14/1954', 'Test Slogan 15', '1515 Testing Dr', NULL, 'Birmingham', @Alabama, 'US'),
(@ProductionStudioTest16, 'Production Studio 16', '09/14/1943', 'Test Slogan 16', '1616 Testing Dr', NULL, 'Los Angeles', @California, 'US'),
(@ProductionStudioTest17, 'Production Studio 17', '10/01/1966', 'Test Slogan 17', '1717 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest18, 'Production Studio 18', '10/04/1990', 'Test Slogan 18', '1818 Testing Dr', NULL, 'Los Angeles', @California, 'US'),
(@ProductionStudioTest19, 'Production Studio 19', '12/17/1988', 'Test Slogan 19', '1919 Testing Dr', NULL, 'New York', @NewYork, 'US'),
(@ProductionStudioTest20, 'Production Studio 20', '12/05/1984', 'Test Slogan 20', '2020 Testing Dr', NULL, 'New York', @NewYork, 'US');

DECLARE @Seinfeld uniqueidentifier;
DECLARE @Frasier uniqueidentifier;
DECLARE @BigBangTheory uniqueidentifier;
DECLARE @Friends uniqueidentifier;
DECLARE @Office uniqueidentifier;
DECLARE @FreshPrince uniqueidentifier;
DECLARE @GoldenGirls uniqueidentifier;
DECLARE @Cheers uniqueidentifier;
DECLARE @Sopranos uniqueidentifier;
DECLARE @ShowTest1 uniqueidentifier;
DECLARE @ShowTest2 uniqueidentifier;
DECLARE @ShowTest3 uniqueidentifier;
DECLARE @ShowTest4 uniqueidentifier;
DECLARE @ShowTest5 uniqueidentifier;
DECLARE @ShowTest6 uniqueidentifier;
DECLARE @ShowTest7 uniqueidentifier;
DECLARE @ShowTest8 uniqueidentifier;
DECLARE @ShowTest9 uniqueidentifier;
DECLARE @ShowTest10 uniqueidentifier;
DECLARE @ShowTest11 uniqueidentifier;
DECLARE @ShowTest12 uniqueidentifier;

SELECT @Seinfeld = NewID();
SELECT @Frasier = NewID();
SELECT @BigBangTheory = NewID();
SELECT @Friends = NewID();
SELECT @Office = NewID();
SELECT @FreshPrince = NewID();
SELECT @GoldenGirls = NewID();
SELECT @Cheers = NewID();
SELECT @Sopranos = NewID();
SELECT @ShowTest1 = NewID();
SELECT @ShowTest2 = NewID();
SELECT @ShowTest3 = NewID();
SELECT @ShowTest4 = NewID();
SELECT @ShowTest5 = NewID();
SELECT @ShowTest6 = NewID();
SELECT @ShowTest7 = NewID();
SELECT @ShowTest8 = NewID();
SELECT @ShowTest9 = NewID();
SELECT @ShowTest10 = NewID();
SELECT @ShowTest11 = NewID();
SELECT @ShowTest12 = NewID();

INSERT INTO SHOWS VALUES
(@Seinfeld, 'Seinfeld', 'US', 'eng', @ABC),
(@Frasier, 'Frasier', 'US', 'eng', @NBC),
(@BigBangTheory, 'The Big Bang Theory', 'US', 'eng', @Fox),
(@Friends, 'Friends', 'US', 'eng', @CBS),
(@Office, 'Office', 'US', 'eng', @NBC),
(@FreshPrince, 'The Fresh Prince of Bel Air', 'US', 'eng', @CBS),
(@GoldenGirls, 'The Golden Girls', 'US', 'eng', @Fox),
(@Cheers, 'Cheers', 'US', 'eng', @CBS),
(@Sopranos, 'The Sopranos', 'US', 'eng', @ABC),
(@ShowTest1, 'Test Show 1', 'US', 'ger', @Laff),
(@ShowTest2, 'Test Show 2', 'US', 'spa', @Telemundo),
(@ShowTest3, 'Test Show 3', 'US', 'spa', @Univison),
(@ShowTest4, 'Test Show 4', 'US', 'fre', @France24),
(@ShowTest5, 'Test Show 5', 'US', 'spa', @Telemundo),
(@ShowTest6, 'Test Show 6', 'US', 'eng', @Mind),
(@ShowTest7, 'Test Show 7', 'US', 'spa', @Univison),
(@ShowTest8, 'Test Show 8', 'US', 'eng', @PBS),
(@ShowTest9, 'Test Show 9', 'US', 'spa', @Telemundo),
(@ShowTest10, 'Test Show 10', 'US', 'ger', @Grit),
(@ShowTest11, 'Test Show 11', 'US', 'eng', @Laff),
(@ShowTest12, 'Test Show 12', 'US', 'fre', @France24);

INSERT INTO SHOW_GENRES VALUES
(@Sitcom, @Seinfeld),
(@Horror, @ShowTest1),
(@Action, @ShowTest1),
(@Fantasy, @ShowTest2),
(@Sitcom, @Frasier),
(@Sports, @ShowTest3),
(@TalkShow, @ShowTest4),
(@Sitcom, @BigBangTheory),
(@Action, @ShowTest4),
(@SciFi, @ShowTest5),
(@Mockumentary, @ShowTest6),
(@Horror, @ShowTest7),
(@Drama, @ShowTest7),
(@Action, @ShowTest7),
(@Drama, @ShowTest8),
(@Sitcom, @Friends),
(@Sitcom, @Office),
(@Sitcom, @FreshPrince),
(@Fantasy, @ShowTest9),
(@Sitcom, @GoldenGirls),
(@Action, @ShowTest9),
(@Sports, @ShowTest10),
(@TalkShow, @ShowTest11),
(@Action, @ShowTest12),
(@Sports, @ShowTest12),
(@Crime, @Sopranos),
(@Drama, @Sopranos),
(@Sitcom, @Cheers);

DECLARE @Award1 uniqueidentifier;
DECLARE @Award2 uniqueidentifier;
DECLARE @Award3 uniqueidentifier;
DECLARE @Award4 uniqueidentifier;
DECLARE @Award5 uniqueidentifier;
DECLARE @Award6 uniqueidentifier;
DECLARE @Award7 uniqueidentifier;
DECLARE @Award8 uniqueidentifier;
DECLARE @Award9 uniqueidentifier;
DECLARE @Award10 uniqueidentifier;
DECLARE @Award11 uniqueidentifier;
DECLARE @Award12 uniqueidentifier;
DECLARE @Award13 uniqueidentifier;
DECLARE @Award14 uniqueidentifier;
DECLARE @Award15 uniqueidentifier;
DECLARE @Award16 uniqueidentifier;
DECLARE @Award17 uniqueidentifier;
DECLARE @Award18 uniqueidentifier;
DECLARE @Award19 uniqueidentifier;
DECLARE @Award20 uniqueidentifier;

SELECT @Award1 = NewID();
SELECT @Award2 = NewID();
SELECT @Award3 = NewID();
SELECT @Award4 = NewID();
SELECT @Award5 = NewID();
SELECT @Award6 = NewID();
SELECT @Award7 = NewID();
SELECT @Award8 = NewID();
SELECT @Award9 = NewID();
SELECT @Award10 = NewID();
SELECT @Award11 = NewID();
SELECT @Award12 = NewID();
SELECT @Award13 = NewID();
SELECT @Award14 = NewID();
SELECT @Award15 = NewID();
SELECT @Award16 = NewID();
SELECT @Award17 = NewID();
SELECT @Award18 = NewID();
SELECT @Award19 = NewID();
SELECT @Award20 = NewID();

INSERT INTO AWARDS VALUES
(@Award1, 'Award 1', '05/22/1975', 'https://award1.com'),
(@Award2, 'Award 2', '03/30/1985', 'https://award2.com'),
(@Award3, 'Award 3', '11/20/1999', 'https://award3.com'),
(@Award4, 'Award 4', '06/12/1991', 'https://award4.com'),
(@Award5, 'Award 5', '02/18/1984', 'https://award5.com'),
(@Award6, 'Award 6', '07/19/1992', 'https://award6.com'),
(@Award7, 'Award 7', '07/24/1986', 'https://award7.com'),
(@Award8, 'Award 8', '10/20/1974', 'https://award8.com'),
(@Award9, 'Award 9', '12/06/1970', 'https://award9.com'),
(@Award10, 'Award 10', '12/12/1958', 'https://award10.com'),
(@Award11, 'Award 11', '03/12/1962', 'https://award11.com'),
(@Award12, 'Award 12', '06/12/1979', 'https://award12.com'),
(@Award13, 'Award 13', '09/05/1998', 'https://award13.com'),
(@Award14, 'Award 14', '08/13/2002', 'https://award14.com'),
(@Award15, 'Award 15', '01/29/2012', 'https://award15.com'),
(@Award16, 'Award 16', '02/24/1984', 'https://award16.com'),
(@Award17, 'Award 17', '11/30/1995', 'https://award17.com'),
(@Award18, 'Award 18', '12/02/2016', 'https://award18.com'),
(@Award19, 'Award 19', '10/14/1975', 'https://award19.com'),
(@Award20, 'Award 20', '03/22/1992', 'https://award20.com');

DECLARE @Season1 uniqueidentifier;
DECLARE @Season2 uniqueidentifier;
DECLARE @Season3 uniqueidentifier;
DECLARE @Season4 uniqueidentifier;
DECLARE @Season5 uniqueidentifier;
DECLARE @Season6 uniqueidentifier;
DECLARE @Season7 uniqueidentifier;
DECLARE @Season8 uniqueidentifier;
DECLARE @Season9 uniqueidentifier;
DECLARE @Season10 uniqueidentifier;
DECLARE @Season11 uniqueidentifier;
DECLARE @Season12 uniqueidentifier;
DECLARE @Season13 uniqueidentifier;
DECLARE @Season14 uniqueidentifier;
DECLARE @Season15 uniqueidentifier;
DECLARE @Season16 uniqueidentifier;
DECLARE @Season17 uniqueidentifier;
DECLARE @Season18 uniqueidentifier;
DECLARE @Season19 uniqueidentifier;
DECLARE @Season20 uniqueidentifier;
DECLARE @Season21 uniqueidentifier;
DECLARE @Season22 uniqueidentifier;
DECLARE @Season23 uniqueidentifier;
DECLARE @Season24 uniqueidentifier;
DECLARE @Season25 uniqueidentifier;
DECLARE @Season26 uniqueidentifier;
DECLARE @Season27 uniqueidentifier;
DECLARE @Season28 uniqueidentifier;
DECLARE @Season29 uniqueidentifier;
DECLARE @Season30 uniqueidentifier;
DECLARE @Season31 uniqueidentifier;
DECLARE @Season32 uniqueidentifier;
DECLARE @Season33 uniqueidentifier;
DECLARE @Season34 uniqueidentifier;
DECLARE @Season35 uniqueidentifier;
DECLARE @Season36 uniqueidentifier;
DECLARE @Season37 uniqueidentifier;
DECLARE @Season38 uniqueidentifier;
DECLARE @Season39 uniqueidentifier;
DECLARE @Season40 uniqueidentifier;

SELECT @Season1 = NewID();
SELECT @Season2 = NewID();
SELECT @Season3 = NewID();
SELECT @Season4 = NewID();
SELECT @Season5 = NewID();
SELECT @Season6 = NewID();
SELECT @Season7 = NewID();
SELECT @Season8 = NewID();
SELECT @Season9 = NewID();
SELECT @Season10 = NewID();
SELECT @Season11 = NewID();
SELECT @Season12 = NewID();
SELECT @Season13 = NewID();
SELECT @Season14 = NewID();
SELECT @Season15 = NewID();
SELECT @Season16 = NewID();
SELECT @Season17 = NewID();
SELECT @Season18 = NewID();
SELECT @Season19 = NewID();
SELECT @Season20 = NewID();
SELECT @Season21 = NewID();
SELECT @Season22 = NewID();
SELECT @Season23 = NewID();
SELECT @Season24 = NewID();
SELECT @Season25 = NewID();
SELECT @Season26 = NewID();
SELECT @Season27 = NewID();
SELECT @Season28 = NewID();
SELECT @Season29 = NewID();
SELECT @Season30 = NewID();
SELECT @Season31 = NewID();
SELECT @Season32 = NewID();
SELECT @Season33 = NewID();
SELECT @Season34 = NewID();
SELECT @Season35 = NewID();
SELECT @Season36 = NewID();
SELECT @Season37 = NewID();
SELECT @Season38 = NewID();
SELECT @Season39 = NewID();
SELECT @Season40 = NewID();

INSERT INTO SEASONS VALUES
(@Season1, @Seinfeld, 1, '01/20/1994', '07/10/1994', 12, 46),
(@Season2, @Seinfeld, 2, '01/20/1995', '07/10/1995', 12, 42),
(@Season3, @Seinfeld, 3, '01/20/1996', '07/10/1996', 15, 25),
(@Season4, @Frasier, 1, '01/20/1985', '07/10/1985', 16, 21),
(@Season5, @Frasier, 2, '01/20/1986', '07/10/1986', 25, 4),
(@Season6, @BigBangTheory, 1, '01/20/2001', '07/10/2001', 16, 25),
(@Season7, @BigBangTheory, 2, '01/20/2002', '07/10/2002', 18, 20),
(@Season8, @BigBangTheory, 3, '01/20/2003', '07/10/2003', 21, 4),
(@Season9, @BigBangTheory, 4, '01/20/2004', '07/10/2004', 23, 1),
(@Season10, @Friends, 1, '01/20/1990', '07/10/1990', 10, 68),
(@Season11, @Friends, 2, '01/20/1991', '07/10/1991', 17, 15),
(@Season12, @Friends, 3, '01/20/1992', '07/10/1992', 21, 3),
(@Season13, @Friends, 4, '01/20/1993', '07/10/1993', 22, 1),
(@Season14, @Office, 1, '01/20/2003', '07/10/2003', 16, 15),
(@Season15, @Office, 2, '01/20/2004', '07/10/2004', 20, 4),
(@Season16, @Office, 3, '01/20/2005', '07/10/2005', 22, 1),
(@Season17, @FreshPrince, 1, '01/20/1988', '07/10/1988', 14, 25),
(@Season18, @FreshPrince, 2, '01/20/1989', '07/10/1989', 17, 15),
(@Season19, @FreshPrince, 3, '01/20/1990', '07/10/1990', 19, 7),
(@Season20, @FreshPrince, 4, '01/20/1991', '07/10/1991', 21, 3),
(@Season21, @GoldenGirls, 1, '01/20/1980', '07/10/1980', 22, 2),
(@Season22, @GoldenGirls, 2, '01/20/1981', '07/10/1981', 22, 1),
(@Season23, @Cheers, 1, '01/20/1978', '07/10/1978', 18, 20),
(@Season24, @Cheers, 2, '01/20/1979', '07/10/1979', 21, 2),
(@Season25, @Sopranos, 1, '01/20/2005', '07/10/2005', 18, 20),
(@Season26, @Sopranos, 2, '01/20/2006', '07/10/2006', 20, 5),
(@Season27, @ShowTest1, 1, '01/20/1981', '07/10/1981', NULL, NULL),
(@Season28, @ShowTest2, 1, '01/20/1977', '07/10/1977', 8, 120),
(@Season29, @ShowTest3, 1, '01/20/2001', '07/10/2001', NULL, NULL),
(@Season30, @ShowTest4, 1, '01/20/2005', '07/10/2005', NULL, NULL),
(@Season31, @ShowTest5, 1, '01/20/1966', '07/10/1966', 12, 70),
(@Season32, @ShowTest6, 1, '01/20/2006', '07/10/2006', 11, 88),
(@Season33, @ShowTest7, 1, '01/20/1998', '07/10/1998', NULL, NULL),
(@Season34, @ShowTest8, 1, '01/20/1984', '07/10/1984', NULL, NULL),
(@Season35, @ShowTest9, 1, '01/20/2009', '07/10/2009', NULL, NULL),
(@Season36, @ShowTest10, 1, '01/20/1985', '07/10/1985', 7, 105),
(@Season37, @ShowTest10, 2, '01/20/1986', '07/10/1986', 8, 100),
(@Season38, @ShowTest11, 1, '01/20/2003', '07/10/2003', NULL, NULL),
(@Season39, @ShowTest12, 1, '01/20/2016', '07/10/2016', 21, 1),
(@Season40, @ShowTest12, 2, '01/20/2017', '07/10/2017', NULL, NULL);

DECLARE @Episode1 uniqueidentifier;
DECLARE @Episode2 uniqueidentifier;
DECLARE @Episode3 uniqueidentifier;
DECLARE @Episode4 uniqueidentifier;
DECLARE @Episode5 uniqueidentifier;
DECLARE @Episode6 uniqueidentifier;
DECLARE @Episode7 uniqueidentifier;
DECLARE @Episode8 uniqueidentifier;
DECLARE @Episode9 uniqueidentifier;
DECLARE @Episode10 uniqueidentifier;
DECLARE @Episode11 uniqueidentifier;
DECLARE @Episode12 uniqueidentifier;
DECLARE @Episode13 uniqueidentifier;
DECLARE @Episode14 uniqueidentifier;
DECLARE @Episode15 uniqueidentifier;
DECLARE @Episode16 uniqueidentifier;
DECLARE @Episode17 uniqueidentifier;
DECLARE @Episode18 uniqueidentifier;
DECLARE @Episode19 uniqueidentifier;
DECLARE @Episode20 uniqueidentifier;
DECLARE @Episode21 uniqueidentifier;
DECLARE @Episode22 uniqueidentifier;
DECLARE @Episode23 uniqueidentifier;
DECLARE @Episode24 uniqueidentifier;
DECLARE @Episode25 uniqueidentifier;
DECLARE @Episode26 uniqueidentifier;
DECLARE @Episode27 uniqueidentifier;
DECLARE @Episode28 uniqueidentifier;
DECLARE @Episode29 uniqueidentifier;
DECLARE @Episode30 uniqueidentifier;
DECLARE @Episode31 uniqueidentifier;
DECLARE @Episode32 uniqueidentifier;
DECLARE @Episode33 uniqueidentifier;
DECLARE @Episode34 uniqueidentifier;
DECLARE @Episode35 uniqueidentifier;
DECLARE @Episode36 uniqueidentifier;
DECLARE @Episode37 uniqueidentifier;
DECLARE @Episode38 uniqueidentifier;
DECLARE @Episode39 uniqueidentifier;
DECLARE @Episode40 uniqueidentifier;
DECLARE @Episode41 uniqueidentifier;
DECLARE @Episode42 uniqueidentifier;
DECLARE @Episode43 uniqueidentifier;
DECLARE @Episode44 uniqueidentifier;
DECLARE @Episode45 uniqueidentifier;
DECLARE @Episode46 uniqueidentifier;
DECLARE @Episode47 uniqueidentifier;
DECLARE @Episode48 uniqueidentifier;
DECLARE @Episode49 uniqueidentifier;
DECLARE @Episode50 uniqueidentifier;
DECLARE @Episode51 uniqueidentifier;
DECLARE @Episode52 uniqueidentifier;
DECLARE @Episode53 uniqueidentifier;

SELECT @Episode1 = NewID();
SELECT @Episode2 = NewID();
SELECT @Episode3 = NewID();
SELECT @Episode4 = NewID();
SELECT @Episode5 = NewID();
SELECT @Episode6 = NewID();
SELECT @Episode7 = NewID();
SELECT @Episode8 = NewID();
SELECT @Episode9 = NewID();
SELECT @Episode10 = NewID();
SELECT @Episode11 = NewID();
SELECT @Episode12 = NewID();
SELECT @Episode13 = NewID();
SELECT @Episode14 = NewID();
SELECT @Episode15 = NewID();
SELECT @Episode16 = NewID();
SELECT @Episode17 = NewID();
SELECT @Episode18 = NewID();
SELECT @Episode19 = NewID();
SELECT @Episode20 = NewID();
SELECT @Episode21 = NewID();
SELECT @Episode22 = NewID();
SELECT @Episode23 = NewID();
SELECT @Episode24 = NewID();
SELECT @Episode25 = NewID();
SELECT @Episode26 = NewID();
SELECT @Episode27 = NewID();
SELECT @Episode28 = NewID();
SELECT @Episode29 = NewID();
SELECT @Episode30 = NewID();
SELECT @Episode31 = NewID();
SELECT @Episode32 = NewID();
SELECT @Episode33 = NewID();
SELECT @Episode34 = NewID();
SELECT @Episode35 = NewID();
SELECT @Episode36 = NewID();
SELECT @Episode37 = NewID();
SELECT @Episode38 = NewID();
SELECT @Episode39 = NewID();
SELECT @Episode40 = NewID();
SELECT @Episode41 = NewID();
SELECT @Episode42 = NewID();
SELECT @Episode43 = NewID();
SELECT @Episode44 = NewID();
SELECT @Episode45 = NewID();
SELECT @Episode46 = NewID();
SELECT @Episode47 = NewID();
SELECT @Episode48 = NewID();
SELECT @Episode49 = NewID();
SELECT @Episode50 = NewID();
SELECT @Episode51 = NewID();
SELECT @Episode52 = NewID();
SELECT @Episode53 = NewID();

INSERT INTO EPISODES VALUES
(@Episode1, @Season1, 1, 'Episode Title 1', @Director1, '01/02/1980', 22),
(@Episode2, @Season1, 2, 'Episode Title 2', @Director2, '01/02/1988', 23),
(@Episode3, @Season2, 1, 'Episode Title 3', @Director2, '01/02/1989', 24),
(@Episode4, @Season2, 2, 'Episode Title 4', @Director3, '01/02/1990', 29),
(@Episode5, @Season2, 3, 'Episode Title 5', @Director3, '01/02/1991', 29),
(@Episode6, @Season2, 4, 'Episode Title 6', @Director2, '01/02/1985', 26),
(@Episode7, @Season3, 1, 'Episode Title 7', @Director1, '01/02/1984', 26),
(@Episode8, @Season3, 2, 'Episode Title 8', @Director1, '01/02/1982', 28),
(@Episode9, @Season4, 1, 'Episode Title 9', @Director3, '01/02/1983', 30),
(@Episode10, @Season4, 2, 'Episode Title 10', @Director5, '01/02/1999', 31),
(@Episode11, @Season5, 1, 'Episode Title 11', @Director5, '01/02/1991', 29),
(@Episode12, @Season6, 1, 'Episode Title 12', @Director1, '01/02/1991', 29),
(@Episode13, @Season6, 2, 'Episode Title 13', @Director4, '01/02/1999', 28),
(@Episode14, @Season6, 3, 'Episode Title 14', @Director3, '01/02/1981', 27),
(@Episode15, @Season6, 4, 'Episode Title 15', @Director2, '01/02/1985', 27),
(@Episode16, @Season7, 1, 'Episode Title 16', @Director2, '01/02/1984', 27),
(@Episode17, @Season7, 2, 'Episode Title 17', @Director1, '01/02/1987', 26),
(@Episode18, @Season7, 3, 'Episode Title 18', @Director5, '01/02/1990', 23),
(@Episode19, @Season8, 1, 'Episode Title 19', @Director5, '01/02/1988', 23),
(@Episode20, @Season8, 2, 'Episode Title 20', @Director4, '01/02/1994', 22),
(@Episode21, @Season9, 1, 'Episode Title 21', @Director2, '01/02/1992', 22),
(@Episode22, @Season10, 1, 'Episode Title 22', @Director2, '01/02/1989', 26),
(@Episode23, @Season10, 2, 'Episode Title 23', @Director1, '01/02/1986', 24),
(@Episode24, @Season11, 1, 'Episode Title 24', @Director1, '01/02/1982', 22),
(@Episode25, @Season12, 1, 'Episode Title 25', @Director1, '01/02/1982', 23),
(@Episode26, @Season13, 1, 'Episode Title 26', @Director3, '01/02/1984', 23),
(@Episode27, @Season14, 1, 'Episode Title 27', @Director3, '01/02/1987', 20),
(@Episode28, @Season15, 1, 'Episode Title 28', @Director3, '01/02/1993', 21),
(@Episode29, @Season16, 1, 'Episode Title 29', @Director2, '01/02/1999', 21),
(@Episode30, @Season17, 1, 'Episode Title 30', @Director5, '01/02/1994', 22),
(@Episode31, @Season18, 1, 'Episode Title 31', @Director2, '01/02/2001', 29),
(@Episode32, @Season19, 1, 'Episode Title 32', @Director1, '01/02/2005', 29),
(@Episode33, @Season20, 1, 'Episode Title 33', @Director2, '01/02/1992', 27),
(@Episode34, @Season21, 1, 'Episode Title 34', @Director1, '01/02/1993', 27),
(@Episode35, @Season22, 1, 'Episode Title 35', @Director5, '01/02/1994', 26),
(@Episode36, @Season23, 1, 'Episode Title 36', @Director3, '01/02/2002', 31),
(@Episode37, @Season24, 1, 'Episode Title 37', @Director4, '01/02/1997', 32),
(@Episode38, @Season25, 1, 'Episode Title 38', @Director1, '01/02/1998', 30),
(@Episode39, @Season26, 1, 'Episode Title 39', @Director5, '01/02/1982', 26),
(@Episode40, @Season27, 1, 'Episode Title 40', @Director4, '01/02/2010', 26),
(@Episode41, @Season28, 1, 'Episode Title 41', @Director5, '01/02/2012', 25),
(@Episode42, @Season29, 1, 'Episode Title 42', @Director5, '01/02/2015', 25),
(@Episode43, @Season30, 1, 'Episode Title 43', @Director3, '01/02/1983', 22),
(@Episode44, @Season31, 1, 'Episode Title 44', @Director1, '01/02/1988', 22),
(@Episode45, @Season32, 1, 'Episode Title 45', @Director2, '01/02/1998', 29),
(@Episode46, @Season33, 1, 'Episode Title 46', @Director5, '01/02/2006', 28),
(@Episode47, @Season34, 1, 'Episode Title 47', @Director5, '01/02/1995', 28),
(@Episode48, @Season35, 1, 'Episode Title 48', @Director2, '01/02/1999', 27),
(@Episode49, @Season36, 1, 'Episode Title 49', @Director5, '01/02/1986', 30),
(@Episode50, @Season37, 1, 'Episode Title 50', @Director4, '01/02/1982', 30),
(@Episode51, @Season38, 1, 'Episode Title 51', @Director5, '01/02/1983', 21),
(@Episode52, @Season39, 1, 'Episode Title 52', @Director3, '01/02/1984', 21),
(@Episode53, @Season40, 1, 'Episode Title 53', @Director5, '01/02/1985', 22);

DECLARE @AwardCategory1 uniqueidentifier;
DECLARE @AwardCategory2 uniqueidentifier;
DECLARE @AwardCategory3 uniqueidentifier;
DECLARE @AwardCategory4 uniqueidentifier;
DECLARE @AwardCategory5 uniqueidentifier;
DECLARE @AwardCategory6 uniqueidentifier;
DECLARE @AwardCategory7 uniqueidentifier;
DECLARE @AwardCategory8 uniqueidentifier;
DECLARE @AwardCategory9 uniqueidentifier;
DECLARE @AwardCategory10 uniqueidentifier;
DECLARE @AwardCategory11 uniqueidentifier;
DECLARE @AwardCategory12 uniqueidentifier;
DECLARE @AwardCategory13 uniqueidentifier;
DECLARE @AwardCategory14 uniqueidentifier;
DECLARE @AwardCategory15 uniqueidentifier;
DECLARE @AwardCategory16 uniqueidentifier;
DECLARE @AwardCategory17 uniqueidentifier;
DECLARE @AwardCategory18 uniqueidentifier;
DECLARE @AwardCategory19 uniqueidentifier;
DECLARE @AwardCategory20 uniqueidentifier;
DECLARE @AwardCategory21 uniqueidentifier;
DECLARE @AwardCategory22 uniqueidentifier;
DECLARE @AwardCategory23 uniqueidentifier;
DECLARE @AwardCategory24 uniqueidentifier;
DECLARE @AwardCategory25 uniqueidentifier;
DECLARE @AwardCategory26 uniqueidentifier;
DECLARE @AwardCategory27 uniqueidentifier;
DECLARE @AwardCategory28 uniqueidentifier;
DECLARE @AwardCategory29 uniqueidentifier;
DECLARE @AwardCategory30 uniqueidentifier;

SELECT @AwardCategory1 = NewID();
SELECT @AwardCategory2 = NewID();
SELECT @AwardCategory3 = NewID();
SELECT @AwardCategory4 = NewID();
SELECT @AwardCategory5 = NewID();
SELECT @AwardCategory6 = NewID();
SELECT @AwardCategory7 = NewID();
SELECT @AwardCategory8 = NewID();
SELECT @AwardCategory9 = NewID();
SELECT @AwardCategory10 = NewID();
SELECT @AwardCategory11 = NewID();
SELECT @AwardCategory12 = NewID();
SELECT @AwardCategory13 = NewID();
SELECT @AwardCategory14 = NewID();
SELECT @AwardCategory15 = NewID();
SELECT @AwardCategory16 = NewID();
SELECT @AwardCategory17 = NewID();
SELECT @AwardCategory18 = NewID();
SELECT @AwardCategory19 = NewID();
SELECT @AwardCategory20 = NewID();
SELECT @AwardCategory21 = NewID();
SELECT @AwardCategory22 = NewID();
SELECT @AwardCategory23 = NewID();
SELECT @AwardCategory24 = NewID();
SELECT @AwardCategory25 = NewID();
SELECT @AwardCategory26 = NewID();
SELECT @AwardCategory27 = NewID();
SELECT @AwardCategory28 = NewID();
SELECT @AwardCategory29 = NewID();
SELECT @AwardCategory30 = NewID();

INSERT INTO AWARD_CATEGORIES VALUES
(@AwardCategory1, 'Best Comedy', @Award1),
(@AwardCategory2, 'Best Drama', @Award1),
(@AwardCategory3, 'Best Comedy', @Award2),
(@AwardCategory4, 'Best Lead Actor in Comedy', @Award2),
(@AwardCategory5, 'Best Lead Actor in Drama', @Award3),
(@AwardCategory6, 'Best Drama', @Award4),
(@AwardCategory7, 'Best Director in Comedy', @Award4),
(@AwardCategory8, 'Best Comedy', @Award5),
(@AwardCategory9, 'Best Director in Comedy', @Award6),
(@AwardCategory10, 'Best Drama', @Award6),
(@AwardCategory11, 'Best Lead Actor in Comedy', @Award7),
(@AwardCategory12, 'Best Drama', @Award8),
(@AwardCategory13, 'Best Director in Comedy', @Award9),
(@AwardCategory14, 'Best Comedy', @Award10),
(@AwardCategory15, 'Best Supporting Actor in Comedy', @Award11),
(@AwardCategory16, 'Best Lead Actor in Comedy', @Award11),
(@AwardCategory17, 'Best Comedy', @Award11),
(@AwardCategory18, 'Best Drama', @Award12),
(@AwardCategory19, 'Best Supporting Actor in Comedy', @Award13),
(@AwardCategory20, 'Best Lead Actor in Comedy', @Award14),
(@AwardCategory21, 'Best Supporting Actor in Comedy', @Award14),
(@AwardCategory22, 'Best Supporting Actor in Drama', @Award15),
(@AwardCategory23, 'Best Comedy', @Award15),
(@AwardCategory24, 'Best Supporting Actor in Comedy', @Award16),
(@AwardCategory25, 'Best Supporting Actor in Drama', @Award16),
(@AwardCategory26, 'Best Comedy', @Award17),
(@AwardCategory27, 'Best Writer in Comedy', @Award18),
(@AwardCategory28, 'Best Writer in Drama', @Award19),
(@AwardCategory29, 'Best Writer in Comedy', @Award20),
(@AwardCategory30, 'Best Drama', @Award20);

INSERT INTO AWARD_CATEGORY_RESULTS VALUES
(@AwardCategory1, @Seinfeld, NULL, 1, '01/15/1990'),
(@AwardCategory1, @Frasier, NULL, 0, '01/15/1990'),
(@AwardCategory1, @ShowTest1, NULL, 0, '01/15/1990'),
(@AwardCategory1, @ShowTest4, NULL, 0, '01/15/1990'),
(@AwardCategory2, @Sopranos, NULL, 0, '01/15/1990'),
(@AwardCategory2, @ShowTest2, NULL, 0, '01/15/1990'),
(@AwardCategory2, @ShowTest6, NULL, 0, '01/15/1990'),
(@AwardCategory2, @ShowTest7, NULL, 0, '01/15/1990'),
(@AwardCategory3, @BigBangTheory, NULL, 0, '01/15/1990'),
(@AwardCategory3, @Office, NULL, 1, '01/15/1990'),
(@AwardCategory3, @ShowTest3, NULL, 0, '01/15/1990'),
(@AwardCategory4, @Seinfeld, @JerrySeinfeld, 1, '01/15/1990'),
(@AwardCategory4, @Frasier, NULL, 0, '01/15/1990'),
(@AwardCategory4, @Friends, NULL, 0, '01/15/1990'),
(@AwardCategory5, @Sopranos, @JamesGandolfini, 1, '01/15/1990'),
(@AwardCategory5, @ShowTest2, NULL, 0, '01/15/1990'),
(@AwardCategory6, @ShowTest11, NULL, 1, '01/15/1990'),
(@AwardCategory6, @ShowTest2, NULL, 0, '01/15/1990'),
(@AwardCategory6, @ShowTest5, NULL, 0, '01/15/1990'),
(@AwardCategory6, @ShowTest7, NULL, 0, '01/15/1990'),
(@AwardCategory7, @Frasier, @Director1, 1, '01/15/1990'),
(@AwardCategory7, @Seinfeld, NULL, 0, '01/15/1990'),
(@AwardCategory8, @ShowTest2, NULL, 1, '01/15/1990'),
(@AwardCategory9, @Seinfeld, @Director2, 0, '01/15/1990'),
(@AwardCategory10, @ShowTest1, NULL, 1, '01/15/1990'),
(@AwardCategory10, @ShowTest2, NULL, 0, '01/15/1990'),
(@AwardCategory10, @ShowTest3, NULL, 0, '01/15/1990'),
(@AwardCategory11, @Frasier, @KelseyGrammer, 1, '01/15/1990'),
(@AwardCategory12, @ShowTest10, NULL, 0, '01/15/1990'),
(@AwardCategory13, @FreshPrince, @Director4, 1, '01/15/1990'),
(@AwardCategory14, @FreshPrince, NULL, 0, '01/15/1990'),
(@AwardCategory15, @GoldenGirls, @BettyWhite, 0, '01/15/1990'),
(@AwardCategory16, @Office, @SteveCarell, 0, '01/15/1990'),
(@AwardCategory17, @ShowTest6, NULL, 0, '01/15/1990'),
(@AwardCategory18, @ShowTest2, NULL, 0, '01/15/1990'),
(@AwardCategory19, @Office, @JennaFischer, 0, '01/15/1990'),
(@AwardCategory20, @Cheers, @TedDanson, 0, '01/15/1990'),
(@AwardCategory21, @Seinfeld, @JuliaLouisDreyfus, 0, '01/15/1990'),
(@AwardCategory22, @Sopranos, @LorraineBraco, 0, '01/15/1990'),
(@AwardCategory23, @ShowTest4, NULL, 0, '01/15/1990'),
(@AwardCategory24, @Seinfeld, @JasonAlexander, 0, '01/15/1990'),
(@AwardCategory25, @Sopranos, @JamesGandolfini, 0, '01/15/1990'),
(@AwardCategory26, @ShowTest8, NULL, 0, '01/15/1990'),
(@AwardCategory27, @ShowTest6, @Writer1, 1, '01/15/1990'),
(@AwardCategory28, @ShowTest3, @Writer3, 1, '01/15/1990'),
(@AwardCategory29, @ShowTest10, @Writer4, 1, '01/15/1990'),
(@AwardCategory30, @ShowTest12, NULL, 0, '01/15/1990');


