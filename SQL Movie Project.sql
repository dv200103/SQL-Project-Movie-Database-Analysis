-- Creating and using the database 
DROP DATABASE IF EXISTS imdb;

CREATE DATABASE imdb;

USE imdb;

-- Creating the structure of various tables in the database
DROP TABLE IF EXISTS movie;
CREATE TABLE movie
 (
  id VARCHAR(10) NOT NULL,
  title VARCHAR(200) DEFAULT NULL,
  year INT DEFAULT NULL,
  date_published DATE DEFAULT null,
  duration INT,
  country VARCHAR(250),
  worlwide_gross_income VARCHAR(30),
  languages VARCHAR(200),
  production_company VARCHAR(200),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre
 (
	movie_id VARCHAR(10),
genre VARCHAR(20),
	PRIMARY KEY (movie_id, genre)
);

DROP TABLE IF EXISTS director_mapping;
CREATE TABLE director_mapping	
 (
	movie_id VARCHAR(10),
	name_id VARCHAR(10),
	PRIMARY KEY (movie_id, name_id)
);

DROP TABLE IF EXISTS role_mapping;
CREATE TABLE role_mapping
 (
	movie_id VARCHAR(10) NOT NULL,
name_id VARCHAR(10) NOT NULL,
category VARCHAR(10),
	PRIMARY KEY (movie_id, name_id)
);
	
DROP TABLE IF EXISTS names;
CREATE TABLE names
 (
  id varchar(10) NOT NULL,
  name varchar(100) DEFAULT NULL,
  height int DEFAULT NULL,
  date_of_birth date DEFAULT null,
  known_for_movies varchar(100),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ratings; 
CREATE TABLE ratings
(
	movie_id VARCHAR(10) NOT NULL,
	avg_rating DECIMAL(3,1),
	total_votes INT,
	median_rating INT,
PRIMARY KEY (movie_id)
);

-- Inserting into movie
INSERT INTO movie VALUES
('tt0012494','Der müde Tod',2017,'2017-06-09',97,'Germany','$ 12156','German','Decla-Bioscop AG'),
('tt0038733','A Matter of Life and Death',2017,'2017-12-08',104,'UK','$ 124241','English, French, Russian','The Archers'),
('tt0060908','Le roi de coeur',2018,'2018-06-08',102,'France, Italy','$ 18130','French, English, German','Fildebroc'),
('tt0069049','The Other Side of the Wind',2018,'2018-11-02',122,'France, Iran, USA',NULL,'English, German','Royal Road Entertainment'),
('tt0071145','Ankur',2019,'2019-01-02',131,'India',NULL,'Hindi','Blaze Film Enterprises'),
('tt0082620','Kiss Daddy Goodbye',2018,'2018-11-23',92,'USA',NULL,'English','Pendragon Film'),
('tt0083907','The Evil Dead',2018,'2018-10-31',85,'USA','$ 2893091','English','Renaissance Pictures'),
('tt0085953','Mo tai',2019,'2019-10-22',84,'Hong Kong',NULL,'Cantonese','Lo Wei Motion Picture Company'),
('tt0095857','Pestonjee',2019,'2019-02-22',125,'India',NULL,'Hindi','National Film Development Corporation of India (NFDC)'),
('tt0097268','Ek Din Achanak',2018,'2018-12-30',105,'India',NULL,'Hindi','National Film Development Corporation'),
('tt0100275','La Telenovela Errante',2018,'2018-09-06',80,'Chile','$ 3624','Spanish','Poetastros'),
('tt0116851','Leila',2017,'2017-12-06',102,'Iran','$ 8231','Persian','Farabi Cinema Foundation'),
('tt0137204','Joe Finds Grace',2017,'2017-04-22',83,'Canada',NULL,'English','Bradeway Pictures'),
('tt0147855','Aashirwad',2019,'2019-03-09',146,'India',NULL,'Hindi','Film Enterprises'),
('tt0192669','Teenage Space Vampires',2018,'2018-11-15',90,'Romania, Canada, USA',NULL,'English','Canarom Productions'),
('tt0235166','Against All Hope',2017,'2017-10-20',90,'USA',NULL,'English',NULL),
('tt0278422','Buttleman',2018,'2018-01-01',94,'USA',NULL,'English','Buttleman Productions LLC'),
('tt0331314','Bunyan and Babe',2017,'2017-01-12',84,'USA, India','$ 72060','English','Exodus Film Group'),
('tt0337383','Vaikai is Amerikos viesbucio',2017,'2017-03-09',88,'Soviet Union',NULL,'Lithuanian, Russian','Lietuvos Kinostudija'),
('tt0339091','Gang of Roses',2019,'2019-09-20',94,'USA','$ 30497','English','Sleeping Giant Productions'),
('tt0339736','The Evil Within',2017,'2017-08-30',98,'USA',NULL,'English','Supernova LLC'),
('tt0347307','Kaminnyy khrest',2018,'2018-10-30',80,'Soviet Union',NULL,'Ukrainian','Dovzhenko Film Studios'),
('tt0352314','Ek Hasina Thi',2019,'2019-01-02',120,'India',NULL,'Hindi, English','Bohra Bros Productions'),
('tt0360556','Fahrenheit 451',2018,'2018-05-20',100,'USA',NULL,'English','HBO Films'),
('tt0361953','The Nest of the Cuckoo Birds',2017,'2017-10-16',81,'USA',NULL,'English','Bert Williams Motion Pictures and Distributor'),
('tt0365545','Nappily Ever After',2018,'2018-09-21',98,'USA',NULL,'English','Netflix'),
('tt0385887','Motherless Brooklyn',2019,'2019-11-01',144,'USA','$ 9205026','English','Class 5 Films'),
('tt0427543','A Million Little Pieces',2019,'2019-08-30',113,'USA','$ 49710','English','3Blackdot'),
('tt0437086','Alita: Battle Angel',2019,'2019-02-06',122,'USA','$ 404852543','English, Spanish','Twentieth Century Fox'),
('tt0441881','Danger Close: The Battle of Long Tan',2019,'2019-08-08',118,'Australia','$ 2034844','English','Deeper Water'),
('tt0443474','Crazy',2017,'2017-01-19',106,'USA',NULL,'English','FN Crazy Film LLC'),
('tt0448115','Shazam!',2019,'2019-04-05',132,'USA, Canada','$ 364571656','English, Spanish','Warner Bros.'),
('tt0451201','Sludge',2017,'2017-09-19',95,'USA',NULL,'English','Xeno Films'),
('tt0451279','Wonder Woman',2017,'2017-06-01',141,'USA, China, Hong Kong','$ 821847012','English, German, Dutch, French, Spanish, Chinese, Greek, Ancient (to 1453), North American Indian','Warner Bros.'),
('tt0456407','Fakir of Venice',2019,'2019-02-08',87,'India',NULL,'English, Hindi','October Films'),
('tt0460890','The Only Living Boy in New York',2017,'2017-08-11',89,'USA','$ 2550321','English','Amazon Studios'),
('tt0490215','Silence',2017,'2017-01-01',161,'USA, UK, Taiwan, Japan, Mexico, Italy','$ 23737523','English, Japanese, Latin','SharpSword Films'),
('tt0491175','Suburbicon',2017,'2017-11-24',105,'UK, USA','$ 12751667','English','Black Bear Pictures'),
('tt0491203','Tulip Fever',2018,'2018-12-07',105,'UK, USA','$ 8381715','English','Worldview Entertainment'),
('tt0493405','CHIPS',2017,'2017-03-24',100,'USA','$ 26800152','English, Spanish','Primate Pictures'),
('tt0493407','Cook Off!',2017,'2017-11-17',98,'USA',NULL,'English',NULL),
('tt0498381','Rings',2017,'2017-02-03',102,'USA','$ 83080890','English','Macari/Edelstein'),
('tt0499469','Emilio',2017,'2017-02-17',102,'USA',NULL,'English, Spanish','Emilio Productions'),
('tt0765465','The Legend of Secret Pass',2019,'2019-01-15',92,'USA',NULL,'English','JC2 Animated Entertainment'),
('tt0800325','The Dirt',2019,'2019-03-22',107,'USA',NULL,'English','10th Street Entertainment'),
('tt0835802','Krystal',2018,'2018-04-13',90,'USA','$ 37516','English','Dorian Media'),
('tt0837563','Pet Sematary',2019,'2019-04-04',101,'USA, Canada','$ 112399944','english','Paramount Pictures'),
('tt0858419','Bolden',2019,'2019-05-03',108,'USA',NULL,'English','King Bolden'),
('tt0859635','Super Troopers 2',2018,'2018-06-15',99,'USA','$ 31626386','English','Votiv Films'),
('tt0862930','Dukun',2018,'2018-04-05',108,'Malaysia',NULL,'Hokkien, Malay','Astro Shaw');

-- TRUNCATE movie;

-- Inserting into genre
INSERT INTO genre VALUES
('tt0012494','Thriller'),
('tt0012494','Fantasy'),
('tt0012494','Drama'),
('tt0038733','Fantasy'),
('tt0038733','Drama'),
('tt0038733','Comedy'),
('tt0060908','Comedy'),
('tt0060908','Drama'),
('tt0069049','Drama'),
('tt0071145','Drama'),
('tt0082620','Horror'),
('tt0083907','Horror'),
('tt0085953','Horror'),
('tt0095857','Drama'),
('tt0095857','Comedy'),
('tt0097268','Drama'),
('tt0100275','Fantasy'),
('tt0100275','Drama'),
('tt0100275','Comedy'),
('tt0116851','Romance'),
('tt0116851','Family'),
('tt0116851','Drama'),
('tt0137204','Comedy'),
('tt0137204','Adventure'),
('tt0147855','Drama'),
('tt0192669','Sci-Fi'),
('tt0192669','Action'),
('tt0235166','Drama'),
('tt0278422','Comedy'),
('tt0331314','Comedy'),
('tt0331314','Adventure'),
('tt0337383','Drama'),
('tt0339091','Drama'),
('tt0339091','Action'),
('tt0339736','Horror'),
('tt0347307','Drama'),
('tt0352314','Mystery'),
('tt0352314','Drama'),
('tt0352314','Crime'),
('tt0360556','Thriller'),
('tt0360556','Sci-Fi'),
('tt0360556','Drama'),
('tt0361953','Horror'),
('tt0361953','Drama'),
('tt0365545','Romance'),
('tt0365545','Drama'),
('tt0365545','Comedy'),
('tt0385887','Drama'),
('tt0385887','Crime'),
('tt0427543','Drama'),
('tt0437086','Sci-Fi'),
('tt0437086','Adventure'),
('tt0437086','Action'),
('tt0441881','Drama'),
('tt0441881','Action'),
('tt0443474','Drama'),
('tt0448115','Comedy'),
('tt0448115','Adventure'),
('tt0448115','Action'),
('tt0451201','Horror'),
('tt0451279','Fantasy'),
('tt0451279','Adventure'),
('tt0451279','Action'),
('tt0456407','Drama'),
('tt0460890','Drama'),
('tt0490215','Drama'),
('tt0491175','Drama'),
('tt0491175','Crime'),
('tt0491175','Comedy'),
('tt0491203','Romance'),
('tt0491203','Drama'),
('tt0493405','Crime'),
('tt0493405','Comedy'),
('tt0493405','Action'),
('tt0493407','Comedy'),
('tt0498381','Mystery'),
('tt0498381','Horror'),
('tt0498381','Drama'),
('tt0499469','Mystery'),
('tt0499469','Drama'),
('tt0499469','Adventure'),
('tt0765465','Fantasy'),
('tt0765465','Family'),
('tt0800325','Drama'),
('tt0800325','Comedy'),
('tt0835802','Drama'),
('tt0835802','Comedy'),
('tt0837563','Thriller'),
('tt0837563','Mystery'),
('tt0837563','Horror'),
('tt0858419','Drama'),
('tt0859635','Mystery'),
('tt0859635','Crime'),
('tt0859635','Comedy'),
('tt0862930','Thriller'),
('tt0862930','Horror');

-- TRUNCATE genre;

-- Inserting into director_mapping
INSERT INTO director_mapping VALUES
('tt0038733','nm0003836'),
('tt0038733','nm0696247'),
('tt0060908','nm0003606'),
('tt0069049','nm0000080'),
('tt0082620','nm0716460'),
('tt0083907','nm0000600'),
('tt0085953','nm0490551'),
('tt0100275','nm0749914'),
('tt0100275','nm0765384'),
('tt0147855','nm0611531'),
('tt0192669','nm0939869'),
('tt0235166','nm0003761'),
('tt0339091','nm0478713'),
('tt0339736','nm1274189'),
('tt0347307','nm0652673'),
('tt0360556','nm1023919'),
('tt0427543','nm0853374'),
('tt0451279','nm0420941'),
('tt0491175','nm0000123'),
('tt0491203','nm0149491'),
('tt0800325','nm0871860'),
('tt0837563','nm1556116'),
('tt0837563','nm1552637'),
('tt0862930','nm1012100');

-- Inserting into role_mapping
INSERT INTO role_mapping VALUES
('tt0038733', 'nm0000057', 'actor'),
('tt0038733', 'nm0001375', 'actress'),
('tt0038733', 'nm0178509', 'actor'),
('tt0038733', 'nm0126402', 'actress'),
('tt0060908', 'nm0000869', 'actor'),
('tt0060908', 'nm0000991', 'actress'),
('tt0060908', 'nm0105482', 'actor'),
('tt0060908', 'nm0108400', 'actor'),
('tt0069049', 'nm0001379', 'actor'),
('tt0069049', 'nm0462648', 'actress'),
('tt0069049', 'nm0000953', 'actor'),
('tt0069049', 'nm0001782', 'actress'),
('tt0082620', 'nm0003104', 'actor'),
('tt0082620', 'nm0122782', 'actress'),
('tt0082620', 'nm0147736', 'actor'),
('tt0082620', 'nm0588922', 'actor'),
('tt0083907', 'nm0132257', 'actor'),
('tt0083907', 'nm0762445', 'actress'),
('tt0083907', 'nm0217822', 'actor'),
('tt0083907', 'nm0048260', 'actress'),
('tt0085953', 'nm0150874', 'actor'),
('tt0085953', 'nm1845142', 'actor'),
('tt0085953', 'nm0387360', 'actor'),
('tt0085953', 'nm4628925', 'actor'),
('tt0085953', 'nm0490623', 'actor'),
('tt0100275', 'nm0016013', 'actor'),
('tt0100275', 'nm0728971', 'actress'),
('tt0100275', 'nm0721280', 'actor'),
('tt0100275', 'nm1415193', 'actress'),
('tt0147855', 'nm0006369', 'actor'),
('tt0147855', 'nm0474876', 'actor'),
('tt0147855', 'nm0764407', 'actress'),
('tt0147855', 'nm0474940', 'actress'),
('tt0192669', 'nm0242903', 'actor'),
('tt0192669', 'nm0299479', 'actor'),
('tt0192669', 'nm0444339', 'actor'),
('tt0192669', 'nm0095751', 'actress'),
('tt0235166', 'nm0000514', 'actor'),
('tt0235166', 'nm0565247', 'actress'),
('tt0235166', 'nm2199466', 'actor'),
('tt0235166', 'nm2199374', 'actor'),
('tt0339091', 'nm0004793', 'actress'),
('tt0339091', 'nm0428591', 'actress'),
('tt0339091', 'nm0001107', 'actress'),
('tt0339091', 'nm0559069', 'actress'),
('tt0339736', 'nm0001218', 'actor'),
('tt0339736', 'nm0000539', 'actress'),
('tt0339736', 'nm0462735', 'actor'),
('tt0339736', 'nm0077720', 'actor'),
('tt0347307', 'nm0111410', 'actor'),
('tt0347307', 'nm0407597', 'actor'),
('tt0347307', 'nm1300963', 'actress'),
('tt0347307', 'nm0586645', 'actor'),
('tt0347307', 'nm0767512', 'actor'),
('tt0360556', 'nm0430107', 'actor'),
('tt0360556', 'nm2210323', 'actor'),
('tt0360556', 'nm0441654', 'actress'),
('tt0360556', 'nm0788335', 'actor'),
('tt0427543', 'nm1093951', 'actor'),
('tt0427543', 'nm0000671', 'actor'),
('tt0427543', 'nm3747611', 'actress'),
('tt0427543', 'nm0000610', 'actor'),
('tt0451279', 'nm2933757', 'actress'),
('tt0451279', 'nm1517976', 'actor'),
('tt0451279', 'nm0000705', 'actress'),
('tt0451279', 'nm0205063', 'actress'),
('tt0491175', 'nm0000354', 'actor'),
('tt0491175', 'nm0000194', 'actress'),
('tt0491175', 'nm1209966', 'actor'),
('tt0491175', 'nm7415871', 'actor'),
('tt0491203', 'nm2539953', 'actress'),
('tt0491203', 'nm2851530', 'actor'),
('tt0491203', 'nm1925239', 'actor'),
('tt0491203', 'nm0334441', 'actress'),
('tt0493405', 'nm0671567', 'actor'),
('tt0493405', 'nm1009277', 'actor'),
('tt0493405', 'nm0000352', 'actor'),
('tt0493405', 'nm4023073', 'actress'),
('tt0800325', 'nm3150488', 'actor'),
('tt0800325', 'nm3701064', 'actor'),
('tt0800325', 'nm0446622', 'actor'),
('tt0800325', 'nm3206486', 'actor'),
('tt0837563', 'nm0164809', 'actor'),
('tt0837563', 'nm1541272', 'actress'),
('tt0837563', 'nm0001475', 'actor'),
('tt0837563', 'nm5503448', 'actress'),
('tt0862930', 'nm0014474', 'actress'),
('tt0862930', 'nm0404003', 'actor'),
('tt0862930', 'nm2382489', 'actress'),
('tt0862930', 'nm0368349', 'actor');

-- Inserting into names
INSERT INTO names VALUES
('nm0003836', 'Michael Powell', '188', '1905-09-30', 'tt0038733'),
('nm0178509', 'Robert Coote', '200', '1909-02-04', 'tt0038733'),
('nm0515193', 'Roger Livesey', '200', '1906-06-25', 'tt0038733'),
('nm0696247', 'Emeric Pressburger', '97', '1902-12-05', 'tt0038733'),
('nm0000953', 'Peter Bogdanovich', '178', '1939-07-30', 'tt0069049'),
('nm0462648', 'Oja Kodar', NULL, '1941-04-25', 'tt0069049'),
('nm0716460', 'Patrick Regan', NULL, NULL, 'tt0082620'),
('nm0000600', 'Sam Raimi', '180', '1959-10-23', 'tt0083907'),
('nm0048260', 'Betsy Baker', NULL, '1955-05-08', 'tt0083907'),
('nm0132257', 'Bruce Campbell', '200', '1958-06-22', 'tt0083907'),
('nm0217822', 'Richard DeManincor', '200', NULL, 'tt0083907'),
('nm0762445', 'Ellen Sandweiss', '97', '1958-12-30', 'tt0083907'),
('nm4628925', 'Meng-Kuang Hsu', NULL, NULL, 'tt0085953'),
('nm0749914', 'Raoul Ruiz', NULL, '1941-07-25', 'tt0100275'),
('nm0765384', 'Valeria Sarmiento', NULL, '1948-10-29', 'tt0100275'),
('nm1415193', 'Consuelo Castillo', NULL, NULL, 'tt0100275'),
('nm0006369', 'Ashok Kumar', NULL, '1911-10-13', 'tt0147855'),
('nm0611531', 'Hrishikesh Mukherjee', NULL, '1922-09-30', 'tt0147855'),
('nm0003761', 'Edward T. McDougal', NULL, NULL, 'tt0235166'),
('nm0565247', 'Maureen McCarthy', NULL, NULL, 'tt0235166'),
('nm2199374', 'Rex Flores', NULL, NULL, 'tt0235166'),
('nm2199466', 'Cecil Moe', NULL, NULL, 'tt0235166'),
('nm1056714', 'Tim Swain', NULL, NULL, 'tt0339091'),
('nm1274189', 'Andrew Getty', NULL, '1967-07-01', 'tt0339736'),
('nm0407597', 'Daniil Ilchenko', NULL, '1894-12-25', 'tt0347307'),
('nm1300963', 'Yekaterina Mateyk', NULL, NULL, 'tt0347307'),
('nm0007107', 'Urmila Matondkar', '156', '1974-02-04', 'tt0352314'),
('nm1437189', 'Sriram Raghavan', NULL, NULL, 'tt0352314,tt8108198'),
('nm1023919', 'Ramin Bahrani', '84', '1975-03-20', 'tt0360556'),
('nm2210323', 'Aaron Davis', NULL, NULL, 'tt0360556'),
('nm2650183', 'Eric Berryman', NULL, '1989-01-09', 'tt0385887,tt5974044,tt6317236,tt6688022'),
('nm0853374', 'Sam Taylor-Johnson', NULL, '1967-03-04', 'tt0427543'),
('nm0000680', 'Casper Van Dien', '178', '1968-12-18', 'tt0437086'),
('nm0001194', 'Jeff Fahey', '183', '1952-11-29', 'tt0437086'),
('nm2784856', 'Jorge A. Jimenez', '200', NULL, 'tt0437086'),
('nm3156758', 'Elle LaMont', '200', '1981-09-12', 'tt0437086'),
('nm4665416', 'Lassiter Holmes', '200', NULL, 'tt0437086'),
('nm5277107', 'Keean Johnson', '200', NULL, 'tt0437086'),
('nm6388037', 'James Storer', '200', '1995-03-17', 'tt0441881'),
('nm1157048', 'Zachary Levi', '84', '1980-09-29', 'tt0448115'),
('nm2803689', 'Marta Milans', '200', '1982-04-19', 'tt0448115'),
('nm4755508', 'Asher Angel', '200', '2002-09-06', 'tt0448115'),
('nm0000667', 'David Thewlis', '190', '1963-03-20', 'tt0451279'),
('nm0090674', 'Rainer Bock', '200', '1954-07-31', 'tt0451279'),
('nm0205063', 'Lucy Davis', '200', '1973-02-17', 'tt0451279'),
('nm0420941', 'Patty Jenkins', '200', '1971-07-24', 'tt0451279'),
('nm0811583', 'Zack Snyder', '94', '1966-03-01', 'tt0451279'),
('nm1517976', 'Chris Pine', '84', '1980-08-26', 'tt0451279'),
('nm1915282', 'Eleanor Matsuura', '76', NULL, 'tt0451279'),
('nm2933757', 'Gal Gadot', '200', '1985-04-30', 'tt0451279'),
('nm4302215', 'Shawn Dixon', NULL, NULL, 'tt0451279'),
('nm0001971', 'Ewen Bremner', '173', '1972-01-23', 'tt0451279,tt2763304'),
('nm1322293', 'David Bispham', NULL, NULL, 'tt0451279,tt4158096,tt3548276'),
('nm0297983', 'Nobuaki Fukuda', NULL, '1950-12-18', 'tt0490215'),
('nm0441098', 'Hairi Katagiri', '200', '1963-01-18', 'tt0490215'),
('nm0475900', 'Asuka Kurosawa', '200', '1971-12-22', 'tt0490215'),
('nm1328568', 'Munetaka Aoki', '84', '1980-03-14', 'tt0490215'),
('nm5862455', 'Nana Komatsu', '200', NULL, 'tt0490215'),
('nm0149491', 'Justin Chadwick', NULL, '1968-12-01', 'tt0491203'),
('nm4436761', 'Matilda Anna Ingrid Lutz', '200', NULL, 'tt0498381,tt6738136'),
('nm0871860', 'Jeff Tremaine', '94', NULL, 'tt0800325'),
('nm2473806', 'Aaron Jay Rome', '200', '1985-05-02', 'tt0800325'),
('nm3150488', 'Douglas Booth', '200', '1992-07-09', 'tt0800325'),
('nm3206486', 'Daniel Webber', '200', NULL, 'tt0800325'),
('nm3330483', 'Rebekah Graf', '200', '1982-07-27', 'tt0800325'),
('nm3701064', 'Iwan Rheon', '200', '1985-05-13', 'tt0800325'),
('nm3812343', 'Sylvia Grace Crim', '200', NULL, 'tt0800325'),
('nm0446622', 'Machine Gun Kelly', '200', '1990-04-22', 'tt0800325,tt5519340,tt5968394'),
('nm1541272', 'Amy Seimetz', '84', '1981-11-25', 'tt0837563'),
('nm1552637', 'Dennis Widmyer', NULL, NULL, 'tt0837563'),
('nm1556116', 'Kevin Kölsch', NULL, NULL, 'tt0837563'),
('nm5503448', 'Jeté Laurence', NULL, '2007-07-27', 'tt0837563,tt1758810'),
('nm1887429', 'Hayes MacArthur', '76', '1977-04-16', 'tt0859635'),
('nm0014474', 'Umie Aida', NULL, '1973-01-18', 'tt0862930'),
('nm1012100', 'Dain Said', NULL, NULL, 'tt0862930'),
('nm2382489', 'Elyana', NULL, NULL, 'tt0862930'),
('nm0906207', 'Kin Wah Chew', NULL, NULL, 'tt0862930,tt9231140');

-- Inserting into ratings
INSERT INTO ratings VALUES
('tt0012494', '7.7', '4695', '8'),
('tt0038733', '8.1', '17693', '8'),
('tt0060908', '7.5', '3392', '8'),
('tt0069049', '6.9', '5014', '7'),
('tt0071145', '8.2', '789', '8'),
('tt0082620', '3.6', '236', '3'),
('tt0083907', '7.5', '174505', '8'),
('tt0085953', '6.2', '262', '6'),
('tt0095857', '7', '137', '8'),
('tt0097268', '6.9', '179', '7'),
('tt0100275', '6.6', '121', '7'),
('tt0116851', '7.6', '3149', '8'),
('tt0137204', '8.6', '264', '9'),
('tt0147855', '7.3', '171', '8'),
('tt0192669', '2.6', '449', '2'),
('tt0235166', '3.6', '145', '4'),
('tt0278422', '5', '109', '8'),
('tt0331314', '5', '319', '5'),
('tt0337383', '8.2', '493', '9'),
('tt0339091', '2.4', '943', '2'),
('tt0339736', '5.5', '2577', '6'),
('tt0347307', '7.3', '129', '8'),
('tt0352314', '7.6', '6014', '8'),
('tt0360556', '4.9', '15320', '5'),
('tt0361953', '5.1', '220', '5'),
('tt0365545', '6.4', '6732', '7'),
('tt0385887', '7.2', '4414', '8'),
('tt0427543', '6.5', '292', '7'),
('tt0437086', '7.4', '171427', '8'),
('tt0441881', '7.1', '1872', '8'),
('tt0443474', '6.6', '568', '7'),
('tt0448115', '7.1', '191155', '7'),
('tt0451201', '6.3', '382', '9'),
('tt0451279', '7.4', '507173', '8'),
('tt0456407', '5.1', '188', '6'),
('tt0460890', '6.3', '9426', '7'),
('tt0490215', '7.1', '88842', '7'),
('tt0491175', '5.7', '34001', '6'),
('tt0491203', '6.2', '16190', '6'),
('tt0493405', '6', '38693', '6'),
('tt0493407', '4', '745', '4'),
('tt0498381', '4.5', '35233', '5'),
('tt0499469', '7.3', '174', '8.5'),
('tt0765465', '5', '340', '5'),
('tt0800325', '7', '31672', '7'),
('tt0835802', '5.4', '1016', '6'),
('tt0837563', '5.8', '61560', '6'),
('tt0858419', '5.5', '295', '6'),
('tt0859635', '6.1', '21489', '6'),
('tt0862930', '6.9', '339', '8');

select * from movie;
DESC movie;
select * from genre;
DESC genre;
select * from director_mapping;
DESC director_mapping;
select * from role_mapping;
DESC role_mapping;
select * from names;
DESC names;
select * from ratings; 
DESC ratings;

-- JOINS

-- 1) Retrieve the names of actors and actresses who worked in the movie with the title 'A Matter of Life and Death' (tt0038733).

SELECT B.name
FROM movie AS A INNER JOIN names AS B
ON A.id = B.known_for_movies
WHERE B.known_for_movies = "tt0038733";

-- 2) List the titles and release years of movies directed by Patrick Regan.

SELECT A.title, A.year
FROM movie AS A INNER JOIN names AS B
ON A.id = B.known_for_movies
WHERE name = "Patrick Regan";

-- 3) Find the total number of movies in the 'Horror' genre.

SELECT COUNT(*) AS Count
FROM movie AS A INNER JOIN genre AS B
ON A.id = B.movie_id
WHERE genre = "Horror";

-- 4) Display the names of directors who directed movies with a duration greater than 120 minutes.

SELECT B.name
FROM movie AS A INNER JOIN names AS B
ON A.id = B.known_for_movies
WHERE duration > 120;

-- 5) Retrieve the average rating and total votes for movies released in the year 2018.

SELECT B.avg_rating, B.total_votes
FROM movie AS A INNER JOIN ratings AS B
ON A.id = B.movie_id
WHERE year = 2018;

-- 6) Retrieve a list of all movies and their corresponding actors, including those with no associated actors.

SELECT A.id, A.title, B.name
FROM movie AS A LEFT JOIN names AS B
ON A.id = B.known_for_movies;

-- 7) Display the names of all actors and the movies they have acted in, even if some actors haven't been cast in any movies.

SELECT A.name, B.id, B.title
FROM names AS A LEFT JOIN movie AS B
ON A.known_for_movies = B.id;

-- 8) Retrieve a list of all actors and the movies they have acted in, along with the corresponding genres.

SELECT A.name AS Actors_Name, B.title AS Movies_Name, C.genre
FROM names AS A
LEFT JOIN movie AS B ON A.known_for_movies = B.id
LEFT JOIN genre AS C ON B.id = C.movie_id;

--  9) Display the names of all directors, their directed movies, and the corresponding genres of those movies.

SELECT B.name AS Director_Name, C.title AS Movie_Name, D.genre
FROM director_mapping AS A
LEFT JOIN names AS B ON A.name_id = B.id 
LEFT JOIN movie AS C ON A.movie_id = C.id
LEFT JOIN genre AS D ON C.id = D.movie_id;

-- SUBQUERIES

-- 1) Find the names of actors and actresses who played roles in the movie 'The Evil Dead' (tt0083907).

SELECT name FROM names
WHERE known_for_movies IN (SELECT movie_id FROM role_mapping WHERE movie_id IN (SELECT id FROM movie WHERE title = "The Evil Dead"));

-- 2) List the movies where Zack Snyder (nm0811583) played a role.

SELECT title FROM movie
WHERE id = (SELECT known_for_movies FROM names WHERE name = "Zack Snyder");

-- 3) Identify the movies directed by Sam Raimi (nm0000600) that have a duration less than the average duration of all movies.

SELECT title FROM movie
WHERE id = (SELECT known_for_movies FROM names WHERE name = "Sam Raimi") AND duration < (SELECT AVG(duration) FROM movie);

-- 4) Find the movies where the average rating is higher than the median rating.

SELECT title FROM movie
WHERE id IN (SELECT movie_id FROM ratings WHERE avg_rating > median_rating);

-- 5) Retrieve the names who worked in movies released in the year 2019 with a duration greater than 120 minutes.

SELECT name FROM names
WHERE known_for_movies IN (SELECT id FROM movie WHERE year = 2019 AND duration > 120);

-- WHERE CLAUSE, GROUP BY CLAUSE, HAVING CLAUSE, AGGREGATE.

-- 1) Determine the average of avg_rating of movies released in the year 2017 and 2018 and have a total number of votes greater than 100000.

SELECT ROUND(AVG(avg_rating),2) AS Average FROM ratings
WHERE movie_id IN (SELECT id FROM movie WHERE year IN (2017,2018))
GROUP BY avg_rating, total_votes HAVING total_votes > 100000;

/* 2) What is the average duration of movies (in minutes) released in 2018, grouped by country, with only those countries included in the 
result set where the average duration is greater than 100 minutes? */

SELECT AVG(duration) AS Avg_Duration FROM movie
WHERE year = 2018 GROUP BY duration, country HAVING AVG(duration) > 100;

-- 3) What are the movie genres that have more than two occurrences in the dataset, and how many movies belong to each of those genres?

SELECT genre, COUNT(movie_id) AS Movie_Count FROM genre 
GROUP BY genre HAVING COUNT(movie_id) > 2;

-- 4) Retrieve the names (id, name) who have movies and have an average height greater than 185.

SELECT id, name FROM names
WHERE height IS NOT NULL
GROUP BY id, name HAVING AVG(height) > 185;

-- 5) Find the average duration of movies produced in each country, but only include countries that have more than two movies in the database.

SELECT country, AVG(duration) FROM movie
GROUP BY country HAVING COUNT(*) > 2;

-- UPDATE, SET, WHERE

-- 1) Update the duration of the movie with the ID 'tt0085953' to 90 minutes.

START TRANSACTION;
UPDATE movie SET duration = 90 WHERE id = "tt0085953";
ROLLBACK;
COMMIT;

-- 2) Set the production company of the movie with the title 'The Evil Dead' to 'Sam Raimi Productions'.

START TRANSACTION;
UPDATE movie SET production_company = "Sam Raimi Productions" WHERE title = "The Evil Dead";
ROLLBACK;
COMMIT;

-- 3) Update the year of the movie with the ID 'tt0116851' to 2018.

START TRANSACTION;
UPDATE movie SET year = 2018 WHERE id = "tt0116851";
ROLLBACK;
COMMIT;

-- 4) Update the avg_rating column of the movie with movie_id 'tt0082620' to '4.0'.

START TRANSACTION;
UPDATE ratings SET avg_rating = 4.0 WHERE movie_id = "tt0082620";
ROLLBACK;
COMMIT;

-- 5) Increase the total_votes by 1000 for the movie with movie_id 'tt0278422'.

START TRANSACTION;
UPDATE ratings SET total_votes = total_votes + 1000 WHERE movie_id = "tt0278422";
ROLLBACK;
COMMIT;

-- ALTER

-- 1) Add a new column named 'Number_Cast' to the 'movies' table with a data type of INT.

ALTER TABLE movie
ADD Number_Cast INT; 
DESC movie;

-- 2) Modify the 'role_mapping' table to increase the length of the 'category' column to 10 to 30.

ALTER TABLE role_mapping
MODIFY category VARCHAR(30);
DESC role_mapping;

-- 3) Add a NOT NULL constraint to the 'release_year' column in the 'movies' table.

ALTER TABLE movie
MODIFY year INT NOT NULL;
DESC movie;

-- 4) Change the name of column duration of movie table to time_period.

ALTER TABLE movie
CHANGE duration time_period INT;
DESC movie;

-- 5) Drop the number_cast column from movie table.

ALTER TABLE movie
DROP number_cast;
DESC movie;