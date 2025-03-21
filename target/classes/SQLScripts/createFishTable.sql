-- Best practice MySQL as of 5.7.6
--
-- The Aquarium database must exist before running this script. Use the
-- createAquariumDB.sql script once. This script will now run during unit
-- testing.

USE AQUARIUM;
DROP TABLE IF EXISTS FISH;
CREATE TABLE FISH (
  ID int(11) NOT NULL auto_increment,
  COMMONNAME varchar(45) NOT NULL default '',
  LATIN varchar(40) NOT NULL default '',
  PH varchar(12) NOT NULL default '',
  KH varchar(12) NOT NULL default '',
  TEMP varchar(12) NOT NULL default '',
  FISHSIZE varchar(12) NOT NULL default '',
  SPECIESORIGIN varchar(35) NOT NULL default '',
  TANKSIZE varchar(38) NOT NULL default '',
  STOCKING varchar(28) NOT NULL default '',
  DIET varchar(28) NOT NULL default '',
  PRIMARY KEY  (ID)
) ENGINE=InnoDB;


INSERT INTO FISH (COMMONNAME, LATIN, PH, KH, TEMP, FISHSIZE, SPECIESORIGIN, TANKSIZE, STOCKING, DIET) values 
("Betta","Betta splendens","6.0-8.0","5-19 dH","75-86 F","2.6 TL","Asia","24 in Min","Harem","Carnivore"),
("Chinese Algae Eater","Gyrinocheilus aymonieri","6.0-8.0","5-19 dH","77-82F","11 in SL","Asia","24 in Min.","5+",""),
("Clown Knife","Chitala ornata","","","75-82 F","39in","Asia","","",""),
("Rosy Barb","Puntius  conchonius","6.0-8.0","5-19 dH","64-72F","5.5 in TL","Asia","30 in Min.","5+",""),
("Acei Cichlid","Pseudotropheus sp. Acei","","","","5in","","","",""),
("African Brown Knife","Xenomystus nigri","6.0-8.0","5-19 dH","72-78F","12 in TL","Africa","","","Carnivore"),
("African Buttterfly","Pantodon buchholzi","","","73-86 F","4.5 in TL","West/Central Africa","","","Insectivore"),
("Albino Ornatus Cichlid","Julidochromis ornatus","8.0-9.0","9-19 dH","72-75F","3 in TL","African-Tanganyikan","2 Ft. Min","Pairs",""),
("Albino Rainbow Shark","Epalzeorhynchos frenatus","6.0-8.0","5-12 dH","75-80F","6 in TL","Asian","4 Ft. Min","","Omnivore"),
("Angel","Pterophyllum scalare","6.0-8.0","5-13 dH","75-86F","3 in SL","South American","40 in Min.","Pairs",""),
("Angelicus Botia","Botia kubotai","","","","5 in TL-LOL","Asia/Myanmar","N/A","","Omnivore"),
("Angelicus Pleco (L-05)","Hypancistrus sp. (L004)","6.6-7.6","","72-82 F","3.9 in SL","South America","","",""),
("Australian Rainbow","Melanotaenia splendida splendida","5.3-8.5","10 dH","68-84F","8 in SL","Australia","","",""),
("Bala Shark","Balantiocheilus melanopterus","6.0-8.0","5-12 dH","72-82F","14 in TL","Asia","5+ Ft. Min","5+",""),
("Big Lipped Cichlid","Cheilochromis euchilus","8.0-8.5","10-17 dH","75-79F","14 in TL","Africa-Malawi","N/A","",""),
("Black Ghost Knife","Apteronotus albifrons","6.0-8.0","5-19 dH","73-82F","20 in TL","South America","N/A","",""),
("Black Kuhli","Pangio javanicus","","","73-77F","3 in TL","Asia","","",""),
("Black Neon Tetra","Hyphessobrycon herbertaxelrodi","5.5-7.5","15 dH","73-81 F","1.25 in SL","South America","24 in Min","5+",""),
("Black Phantom Tetra","Hyphessobrycon megalopterus","6.0-7.5","18 dH","72-82 F","1.5 in SL","South america","30 in Min","5+",""),
("Black Shark","Labeo chrysophekadion","6.5-7.5","15 dH","75-81 F","35 in TL","Asia","Commercial","","Omnivore"),
("Black Skirt Tetra","Gymnocorymbus ternetzi","6.0-8.0","5-19 dH","66-79 F","2.4 in TL","South America","24 in Min","5+",""),
("Black Stripe Dwarf Cichlid","Taeniacara candidi","5","5","77-82F","1.3 in SL","South America","","",""),
("Black/Pink convict","Archocentrus nigrofasciatus","7.0-8.0","9-20 dH","68-97F","4 in TL","Central America","31 in Min","Pairs",""),
("Bleeding Heart Tetra","Hyphessobrycon erythrostigma","5.6-7.2","12 dH","73-82 F","2.5 in SL","South America","30 in Min","5+",""),
("Bloodfin Tetra","Aphyocharax anisitsi","6.0-8.0","30dH","64-82F","2 in TL","South America","24 in Min.","5+",""),
("Blue Johanni Cichlid","Melanochromis johanni","8.0-9.0","9-19 dH","72-77F","4 in TL","African-Malawi","","","Omnivore"),
("Blue Peacock Cichlid","Aulonocara nyassae","","","","3 in SL","African-Malawi","N/A","",""),
("Boessemani Rainbow","Melanotaenia boesemani","7.0-8.0","9-19 dH","81-86F","3.5 in SL","Asia","30 in Min","5+",""),
("Bolivian Ram","Microgeophagus altispinosa","7","10 dH","72-79F","2.2 in SL","South American","","","Omnivore"),
("Brevis Cichlid","Neolamprologus brevis","8.0-9.0","9-19 dH","73-77F","2 in TL","African-Tanganyikan","","",""),
("Buenos Aires Tetra","Hyphessobrycon anisitsi","","","","2.25 in TL","South America","30 in Min","5+",""),
("Bumblebee Cichlid","Pseudotropheus crabro","7.5-8.2","","75-79F","4 in SL","African-Malawi","","",""),
("Bushy Nose Pleco L-144","Ancistrus sp. (L144)","6.2-7.2","","70-73 F","4.3 in SL","","","","Omnivore"),
("Calvus Cichlid","Altolamprologus calvus","8.0-9.0","9-19 dH","73-77F","5 in TL","African-Tanganyikan","N/A","",""),
("Candy Stripe Pleco (L-137)","Peckoltia vittata","5.0-7.5","2-20 dH","73-77 F","5.5 in TL","South America","31 in Min","5+","Herbivore"),
("Cardinal Tetra","Paracheirodon axelrodi","4.0-6.0","5-12 dH","73-81 F","1 in SL","South America","30 in Min","5+",""),
("Caudopunctatus Cichlid","Neolamprologus caudopunctatus","7.5-8.5","15 dH","73-77F","2.5 in TL","African-Tanganyikan","","",""),
("Celebes Rainbow","Telmatherina ladigesi","7.0-8.0","9-19 dH","72-82 F","3 in SL","Asia","","","Omnivore"),
("Cherry Barb","Puntius titteya","6.0-8.0","5-19 dH","73-81 F","2 in SL","Asia","24 in Min","5+","Omnivore"),
("Chinese Hi Fin Banded Shark","Myxocyprinus asiaticu","N/P","N/P","59-82 F","2' TL","Asia","N/P","",""),
("Chocolate Chip Spiny Pleco (L-160)","Pseudacanthicus spinosus","N/P","N/P","68-75 F","10 in SL","South America","","",""),
("Chocolate Gourami","Sphaerichthys osphromenoides","4.0-6.0","0-4 dH","75-81 F","2.5 in TL","Asia","","","Omnivore"),
("Clown Loach","Botia macracantha","5.0-8.0","5-12 dH","77-86F","12 in TL","Asia/Indonesia","5 Ft. Min","5+","Omnivore"),
("Cobalt Blue Zebra Cichlid","Pseudotropheus zebra","8","9-19 dH","72-82F","4.5 SL","African-Malawi","","",""),
("Columbian Shark","Arius jordani","6.8-8.0","8-30 dH","72-79F","14 in TL","Central & South America","5 Ft. Min","",""),
("Compressiceps Cichlid","Dimidiochromis compressiceps","8","9-19 dH","72-82F","9 in TL","African-Malawi","N/A","","Carnivore"),
("Congo Tetra","Phenacogrammus interruptus","6.0-8.0","5-19 dH","73-79 F","3 in TL","Africa","40 in Min","5+","Omnivore"),
("Curviceps","Laetacara Curviceps","5.2-7.5","5-12 dH","73-79F","3.5 in TL*","South American","24 in Min","Pairs",""),
("Cylindricus Cichlid","Neolamprologus cylindricus","7.0-8.5","10-15 dH","73-82F","4 in TL","African-Tanganyikan","","",""),
("Dario Botia Loach","Botia dario","6.5-7.5","10 dH","73-79 F","6 in TL","Asia","","",""),
("Delhezi Bichir","Polypterus delhezi","","","79-82 F","1'5 in TL","Africa/Congo River","Public","",""),
("Demasoni Cichlid","Pseudotropheus demasoni","","","","2.5 in SL","","","",""),
("Denison Barb","Barbus denisonii","6.8-7.8","5-25 dH","59-77 F","6 in TL","Asia","","",""),
("Diamond Tetra","Moenkhausia pittieri","6.0-7.0","5-12 dH","75-82 F","2.4 in SL","South America","31 in Min.","5+","Worms Insects Crus"),
("Dickfeldi Cichlid","Julidochromis dickfeldi","8.5-9.2","8-14 dH","72-77F","4 in TL","African-Tanganyican","2 Ft-Min","Pairs",""),
("Dinosaur Birchir","Polypterus senegalus","6.0-8.0","5-19 dH","77-82F","20 in TL","Africa","","",""),
("Double Full Red Agassizi Cichlid","Apistogramma agassizi","5.0-7.0","0-12 dH","79-84F","1.7 in SL","South America","24 in Min.","Harem",""),
("Dragon Goby","Gobioides Broussonnetti","","","73-77F","22 in TL","North America-South Amer.","N/A","",""),
("Duboisi Cichlid","Tropheus duboisi","8.5-9.0","10-12 dH","75-78F","5 in TL","African-Tanganyikan","60 in Min","0ne male-many females",""),
("Dwarf Gourami","Colisa  lalia","6.0-8.0","5-19 dH","72-82 F","3.5 in TL","Asia","24 in Min","",""),
("Electric Blue/Ahli Cichlid","Sciaenochromis ahli","8","9-19 dH","75-79F","8 in TL","African-Malawi","","",""),
("Electric Yellow Lab","Labidochromis caeruleus","","","73-79F","3 inSL","African-Malawi","32 in Min.","1 male/many females",""),
("Festivum Cichlid","Mesonauta festivum","6.0-8.0","4-6 dH","77-93F","3.2 SL","South America","N/A","",""),
("Firemouth","Thoricythys meeki","6.5-7.5","10 dH","79-86F","7 in TL","Central America","32 in Min.","",""),
("Frontosa","Cyphotilapia frontosa","8","8-12 dH","75-79F","13 in TL","Africa-Tanganyikan","79 in+ Min","1 male-several females",""),
("German Blue Ram","Microgeophagus ramirezi","5.0-6.0","5-12 dH","81-86F","1.3 in SL","South American","2 Ft. Min","Pairs",""),
("Giant Gourami","Colisa fasciata","6.0-7.5","4-15 dH","72-82 F","5 in TL","Asia","","",""),
("Glo Light Tetras","Hemigrammus erythrozonus","6.0-8.0","5-12 dH","75-82 F","1.3 in TL","South American","24 in Min","5+",""),
("Gold Banded Peckoltia Pleco (L-134)","Peckoltia vittata","5.0-7.5","2-20 dH","73-79 F","5.5 in TL","South America","31 in Min.","5+","Herbivore"),
("Gold Head Compressicep Cichlid","Altolamprologus compressicep","6.5-7.5","8-12 dH","73-77F","5 in TL","African-Tanganyikan","N/A","",""),
("Gold Nugget Plecostomus","Baryancistrus sp.","6.4-7.6","","77-86F","7 in-L081","South American","N/A","1","Omnivore"),
("Gold Ocellatus Cichlid","Lamprologus ocellatus","8.0-9.0","9-19 dH","73-77F","2.5 in TL","African-Tanganyikan","24 in Min","",""),
("Gold Pristella Tetra","Pristella maxillari","6.0-8.0","35 dH","75-82 F","2 in TL","South America","24 in Min","5+",""),
("Gold Royal Pleco (L-027)","Panaque nigrolineatus","6.5-7.5","2-15 dH","72-79 F","17 in SL","South America","","",""),
("Gold Sexfasciatus Cichlid","Neolamprologus sexfasciatus","","","73-79F","6in","African-Tanganyikan","","",""),
("Gold Tetra","Rachoviscus crassiceps","5.6-7.2","18 dH","68-77 F","1.5 in SL","South America","N/P","","N/P"),
("Golden Dojo Loach","Misgurnus anguillicaudatus","","","41-77 F","10 in TL","","","",""),
("Golden Stripes Peckoltia Pleco (LDA-20)","Peckoltia sp. (LDA20)","N/P","N/P","N/P","N/P","South America","","","Omnivore"),
("Goldfinned Barb","Puntius  sachsii","","","","3 in TL","Asia","","",""),
("Green Fire Tetra","Aphyocharax rathbuni","6.0-7.5","20 dH","68-79 F","1 in SL","South America","","",""),
("Green Terror","Aequidens rivulatus","6.5-8.0","25 dH","68-75F","8 in TL","South American","N/A","",""),
("Green Texas Cichlid","Herichthys carpintis","7.0-8.0","37518","33-91F","10 in TL*","North/Central Americas","","","Omnivore"),
("Green/Gold Severum","Heros severus","5.0-6.5","0-6","73-84F","8 in SL","South American","","","Omnivore"),
("Gypsy King Tiger Pleco (L-66)","Hypancistrus sp. (L066)","5.8-7.0","","77-84 F","4.7 in SL","South America","","",""),
("Hairy Tiger Pleco (L-105)","Panaque sp. (L105)","","","","2.4 in SL","South America","","",""),
("Head and Taillight Tetra","Hemigrammus ocellifer","6.0-8.0","5-19 dH","72-79 F","1.7 in TL","South America","24 in Min","5+",""),
("Hexazon/5-Band Barb","Puntius pentazona","5.0-6.0","5-12 dH","79-84 F","3.5 in TL","Asia","","",""),
("Honey Dwarf Gourami","Colisa sota","6.0-8.0","5-19 dH","72-82 F","2.5 in TL","Asia","24 in Min","",""),
("HYBRID","HYBRID_Cichlasoma sp","","","","","","N/A","",""),
("Ice Blue Zebra","Pseudotropheus greshakei","","","75-79F","5 in TL","African-Malawi","","",""),
("Jack Dempsey","Cichlasoma octofasciatum","7.0-8.0","9-20 dH","72-86F","10 in TL","North and Central America","N/A","",""),
("Jardini Arowana","Scleropages jardinii","","","59 F","3'3 in SL","Asia","","","Omnivore"),
("Jewel Cichlid","Hemichromis bimaculatus","6.5-7.5","4-16 dH","70-73F","5 in TL","Africa","40 in Min","Pairs",""),
("Jeweled Goby Cichlid","Tanganicodus irsacae","","","75-82F","3 in TL","African-Tanganyikan","","",""),
("Julii Cory Cat","Corydoras sp.","6.0-8.0","2-25 dH","72-79 F","2 in SL","South American","N/A","",""),
("Kenyi","Pseudotropheus lombardi","8","10-20 dH","75-79F","3.5 in SL","African-Malawi","","",""),
("Killifish","Simpsonichthys magnificus","N/P","N/P","72-79F","1.5 in TL","South America","","",""),
("Kissing Gourami","Helostoma teminckii","6.0-8.0","5-19 dH","72-82F","12 in TL","Asia","5 Ft. Min","",""),
("Leporinus Fasciatus","Leporinus Fasciatus","5.5-7.5","2-20 dH","72-79F","12 in TL","South American","","","Omnivore"),
("Licorice Gourami","Parosphromenus deissneri","5.6-7.2","10 dH","75-82 F","1.2 in SL","Asia","","",""),
("Lohachata Botia Loach","Botia lohachata","6.0-8.0","5-12 dH","75-86 F","4.3 in SL","Asia","","",""),
("Malawi Chrysonotus","Copadichromis chrysonotus","8.0-8.5","10-15 dH","73-79F","6 in TL","Africa-Malawi","N/A","",""),
("Managuense","Parachromis managuensis","7.0-8.7","10-15 dH","77-97F","22 in TL","Central America","","",""),
("Mango Pleco (L-47)","Baryancistrus sp. (L047)","","","","11in","South America","","",""),
("Marlieri Cichlid","Julidochromis marlieri","7.5-9.0","12 dH","72-77F","4 in TL","African-Tanganyikan","","Pairs",""),
("Medusa Head Pleco (L-34)","Ancistrus ranunculus","N/P","N/P","77-82 F","5 in SL","Souh America","","",""),
("Midas Cichlid","Amphilophus citrinellus","","","73-91F","10 in TL","Central America","N/A","","Omnivore"),
("Moorei Cichlid","Haplochromis moorii","7.2-8.8","10-18 dH","75-79F","8 in TL","African-Malawi","N/A","",""),
("Moorii (Kaiser II) Cichlid","Tropheus moori","8.0-9.0","9-19 dH","75-78F","6 in TL","African-Tanganyikan","60 in Min","0ne male-many females",""),
("Nanus Cory Cat","Corydoras nanus","6.0-8.0","2-25 dH","72-79F","1.8 in SL","South American","N/A","","Omnivore"),
("Needle Nose Gar","Xenentodon cancila","7.0-7.5","20 dH","72-82F","16 in TL","Asia","","","Carnivore"),
("Neon Tetra","Paracheirodon innesi","5.0-7.0","1-2 dH","68-79 F","1 in SL","South America","24 in Min","5+",""),
("Net Pleco (L-037)","Peckoltia platyrhyncha","N/P","N/P","73-80 F","4 in TL","South America","","",""),
("Odessa Barb","Puntius ticto","6.5-7.0","10 dH","57-72F","4 in TL","Sub-Tropical/Asia","24 in Min.","5+",""),
("Opal Dot Pleco (L-82)","Scobiancistrus sp.","","","","8.7 in SL","","","",""),
("Orange Leleupi Cichlid","Neolamprologus leleupi","7.5-8.0","12-15 dH","75-79F","4in","African-Tanganyikan","32 in Min","",""),
("Ornate Bichir","Polypterus ornatipinnis","N/P","N/P","79-82 F","2' TL","","Public","","Carnivore"),
("Oscar Varieties","Astronotus ocellatus","6.0-8.0","5-19 dH","72-77F","18 in TL","South America","4 Ft. Min-75*","",""),
("Otoconclus Catfish","Otocinclus affinis","6.0-8.0","5-19 dH","68-79 F","2 in SL","South American","24 in Min.","5+",""),
("Palmas Bichir","Polypterus palmus","","","","21 in TL","Africa/Congo River","","",""),
("Panda Barb","Barbus melanampyx","","","","3 in TL","Asia","","",""),
("Pangasius sutchii","Pangasius hypophthalmus","6.5-7.5","2-29 dH","72-79F","51 in SL","Asia","60 in+ Min.","5+",""),
("Pario-Ancistrus Pleco (L-048)","Scobiancistrus pariolispos","N/P","N/P","75-86","9.5 in SL","South America","","",""),
("Peacock Bass (Ocellaris)","Cichla orinocensis","","","","24in","South America","N/A","","Carnivore"),
("Pearl Gourami","Trichogaster leeri","6.0-8.0","37394","75-82 F","4.7 in TL","Asia","4' Min","",""),
("Penguin Tetra","Thayeria boehlkei","6.0-8.0","5-19 dH","72-82 F","2.3 in TL","South America","24 in Min","5+","Worms Insects Crus"),
("Peppermint Plecostomus (L-31)","Parancistrus nudiventris","N/P","N/P","N/P","6.9 in SL","South America","","",""),
("Petenia splendida","Petenia splendida","7.0-7.5","15 dH","79-86F","20 in TL","Central America","","",""),
("Pictus Catfish","Pimelodus pictus","6.0-8.0","5-19 dH","72-77 F","4.5 in TL","South American","4 Ft. Min--not home aquaria","",""),
("Plecostomus","Hypostomus plecostomus","6.2-8.2","28 dH","68-82F","20 in SL","South America","","","Omnivore"),
("Port Acara","Aequidens portalegrensis","6.5-7.0","3-10 dH","61-75F","4 in SL","South America","N/A","",""),
("Praecox Rainbow","Melanotaenia praecox","N/P","N/P","72-82 F","2 in SL","Asia","31 in Min","5+","N/P"),
("Pseudoacanthicus Angelicus Pleco (L-282)","Pseudacanthicus sp. (L282)","","","","N/P","","","",""),
("Purple Emperor Tetra","Inpaichthys kerri","6.0-8.0","5-12 dH","75-81 F","1 in SL","Soutj American","24 in Min","5+",""),
("Queen Arabesque Pleco (L-260)","Hypancistrus sp. (L260)","6.4-7.6","","73-82 F","3.5 in SL","South America","","",""),
("Rainbow Cichlid","Herotilapia multispinosa","7.0-8.0","9-20 dH","70-79F","7 in TL","Central America","","","Omnivore"),
("Red Belly Pacu","Colossoma bidens","4.8-6.8","15 dH","73-82F","35 in TL","South America","80 in Min-200 Gal.*","",""),
("Red Devil","Amphilophus labiatus","","","82-91F","9.4 TL","Central America","N/A","",""),
("Red Finned Albino Zebra","Pseudotropheus greshakei-b","","","75-79F","5 in TL","African-Malawi","","",""),
("Red Finned Borleyi","Copadichromis borleyi-rf","","","","","","","",""),
("Red Minor Serpae Tetra","Hyphessobrycon eques","5.0-7.8","10-25 dH","72-79 F","1.2 in SL","South America","24 in Min","5+","Omnivore"),
("Red Tailed Shark","Epalzeorhynchos bicolor","6.5-7.5","6.5-7.5","72-79F","4.7 in TL","Asia","4 Ft. Min","","Omnivore"),
("Red Zebra Cichlid","Pseudotropheus zebra-r","","","","","","","",""),
("Red/Blue Columbian Tetra","Hyphessobrycon columbianus","N/P","N/P","N/P","2.7 in TL","South America","N/P","","N/P"),
("Redtail Botia Loach","Botia modesta","6.0-8.0","5-12 dH","79-86 F","10 in SL","Asia","","","Worms Insects Crus"),
("Redtail Cat","Phractocephalus hemioliopterus","5.5-6.8","10 dH","68-79 F","4'5 in TL","South America","N/P","","Omnivore"),
("Redtail Leopard Pleco (L-114)","Pseudoacanthicus leopardus","","","","","","","",""),
("Retropinnis Bichir","Polypterus retropinnis","","","","13 in TL","Africa/Congo River","Public","",""),
("Rio de Para Pleco (L-75)","Peckoltia sabaji","6.0-7.6","","75-79 F","9.8 in SL","South America","","",""),
("Rock Kribensis","Paralabidochromis sp.","","","","6 in TL*","Africa","","",""),
("Royal Black Emperor Tetra","Nematobrycon palmeri","5.0-8.0","5-19 dH","73-81F","1.5 in SL","South America","32 in Min","5+",""),
("Royal Farlowella Cat","Sturisoma panamense","6.5-7.2","25 dH","68-77 F","10.2 in SL","Central and South America","","",""),
("Rubber Pleco (L-56)","Parancistrus aurantiacus","N/P","N/P","72-81 F","7.5 in SL","South america","","",""),
("Rummynose Tetra","Hemigrammus rhodostomus","","","","2 in TL","South America","32 in Min","5+",""),
("SailFin Pleco","Glyptoperichthys gibbiceps","6.0-8.0","5-19 dH","73-81F","20 in TL","South American","N/A","",""),
("Salvini Cichlid","Cichlasoma salvini","7.0-8.0","5-20 dH","72-90F","8.6 in TL","Central American","","",""),
("Siamese Flying Fox / SAE","Crossocheilus siamensis","6.5-8.0","5-20 dH","75-79 F","6.3 in SL","Asia","40in","5+","Omnivore"),
("Sidthimunki Botia Loach","Botia sidthimunki","6.0-8.0","5-19 dH","78-86 F","2 in SL","Asia","","School","Omnivore"),
("Silver Arowana","Osteoglossum bicirrhosum","N/P","N/P","75-86 F","3' 11 in TL","South America","","","Omnivore"),
("Silver Dollar","Metynnis argenteus","5.0-7.0","15 dH","75-82F","5.5 in TL","South America","4 Ft. Min","",""),
("Silver Tipped Tetra","Hasemania nana","6.0-8.0","5-19 dH","72-82 F","1 in SL","South America","24 in Min","5+",""),
("Skunk Botia Loach","Botia morleti","6.0-8.0","5 - 12 dH","72-86 F","3.9 in TL","Asia","","",""),
("Snow Pleco","Liposarcus anisitsi","6.5-8.2","25 dH","70-75 F","16.5 in TL","South American","","",""),
("Snow White Scolofi","Pseudotropheus socolofi","","","75-79F","2.5 in SL","African-Malawi","","",""),
("Snowball Pleco (L-102)","Hypancistrus sp. (L102)","5.4-7.6","","72-86 F","6.3 in SL","South america","","",""),
("South American Bumblebee Cat","Microglanis ihering","6.0-8.0","5-12 dH","75-82 F","2.5in","South America","","",""),
("Sparkling Gourami","Trichopsis pumilus","6.0-7.0","5-19 dH","77-82 F","1.5 in SL","Asia","","","Omnivore"),
("Splashing Tetra","Copella arnoldi","6.0-8.0","5-12 dH","77-84 F","1.3 in TL","","N/P","","Worms Insects Crus"),
("Spotted African Leaf Fish","Ctenopoma acutirostre","6.0-8.0","5-12 dH","68-77F","6 in TL","Africa-Congo Basin","N/A","",""),
("Starry Night Pleco (L-183)","Ancistrus dolichopterus","6.0-8.0","5-19 dH","73-82 F","4.6 in SL","Brazil","31 in Min","","Omnivore"),
("Striata Botia Loach","Botia striata","6.0-8.0","5-12 dH","73-79 F","3 in SL","Asia","","",""),
("Striped Peacock Eel","Macrognathus aculeatus","6.5-7.5","15 dH","73-82F","15 in TL","Asia","N/A","",""),
("Striped Raphael","Platydoras costatus","5.8-7.5","2-20 dH","75-86F","9 in SL","South America","","",""),
("Sunshine Peacock","Aulonocara baenschi","7.2-8.2","10-30 dH","72-79F","5 in TL","African-Malawii","N/A","","Benthic Invertebrates"),
("Surinamen Geophagus","Geophagus surinamensis","6.0-8.0","37394","72-77F","12 in TL","South America","N/A","",""),
("Swordtail","Xiphophorus helleri","7.0-8.0","9-19 dH","72-82 F","5.5 TL","Cental Amer.  N. Amer. Africa","31 in Min","","Omnivore"),
("Synodontis Eupterus","Synodontis eupteru","6.2-7.5","15 dH","72-79 F","8.5 in SL","Africa","","","Insects/Algae"),
("Synodontis longirostris","Synodontis longirostris","6.5-7.2","8-18 dH","70-75F","26 in TL","Africa-Congo Basin","","",""),
("Synodontis Ocellifer Catfish","Synodontis ocellifer","","","73-81 F","19 in TL","Africa","","",""),
("Texas Cichlid","Cichlasoma cyanoguttatum","6.5-7.7","5-12 dH","68-91F","12 in TL","North America","N/A","",""),
("Thomasi Pleco (L-188a)","Chaetostoma  thomsoni","6.8-7.8","","68-73 F","3.9 in TL","South America","","","Omnivore"),
("Threadfin Rainbow","Iriatherina werneri","5.2-6.6*","5-12 dH","73-82 F*","1.5 in SL","Asia","24 in Min","5+","Omnivore"),
("Three Spot/Blue/Gold/Gourami","Trichogaster trichopterus","6.0-8.0","5-19 dH","72-82 F","6 in SL","Asia","40 in + Min","",""),
("Tiger Barb","Puntius tetrazona","6.0-8.0","5-19 dH","68-79F","2.7 in TL","Asia","24 in Min","5+",""),
("Tiger Botia Loach","Botia hymenophysa","N/P","N/P","N/P","8 in SL","Asia","","","Worms Insects Crus"),
("Tiger Pleco (L-02)","Peckoltia vermiculata","N/P","N/P","73-81 F","6 in TL","South America","","",""),
("Tin Foil Barb","Barbus schwanenfeldi","6.5-7.0","10 dH","68-92F","14 in SL","Asian","6 Ft. Min.*","",""),
("Tooth-Nose Pleco (L-07a)","Leporacanthicus galaxias","6.2-7.2","N/P","72-77 F","8.3 SL","South America","","",""),
("Tretocephalus Cichlid","Neolamprologus tretocephalus","7.6-8.0","8-12 dH","75-79F","6 in TL","African-Tanganyikan","","",""),
("Trinidad Pleco","Hypostomus punctatus","5.0-8.0",".5-25 dH","72-82 F","12 in TL","","4 in Min","","Herbivore"),
("Turquoise Rainbow","Melanotaenia lacustris","7.0-8.0","9-12 dH","68-75 F","4 in SL","Lake Kutubu&Soro River","","",""),
("Uaru Cichlid","Uara amphiacanthoides","5.0-7.0","5-12 dH","79-82F","10in","South America","","","Omnivore"),
("Venustus Cichlid","Nimbochromis venustrus","7.2-8.8","10-18 dH","77-81F","10 in","African-Malawi","","",""),
("Von Rio Flame Tetra","Hyphessobrycon flammeus","5.8-7.8","5-25 dH","72-79F","1 in SL","South America","24 in Min.","5+",""),
("Weeksii Bichir","Polypterus weeksii","N/P","N/P","N/P","21 in TL","Africa/Congo River","","",""),
("Whiptail Cat","Farlowella acus","6.0-7.0","3-8 dH","75-79 F","6.3 in SL","South America","31 in","5+","Herbivore"),
("White Cloud","Tanichthys albonubes","6.0-8.0","5-19 dH","64-72F","1.5 in TL","Asia","24 in Min.","5+",""),
("Yellow Fin Borleyi Cichlid","Copadichromis borleyi","8.0-8.5","15 dH","75-79F","5.5 in TL","African-Malawi","N/A","","Omnivore"),
("Yellow Peacock Cichlid","Aulonocara sp","","","","","","","",""),
("Yellow Prince Tiger Pleco (L-72)","Peckoltia sp. (L072)","N/P","N/P","N/P","N/P","South America","","","Omnivore");
