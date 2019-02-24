-- Countries Insert 
insert into country (code, name) values 
	('AL', 'Albania'),
	('AM', 'Armenia'),
	('AU', 'Australia'),
	('AT', 'Austria'),
	('AZ', 'Azerbaijan'),
	('BY', 'Belarus'),
	('BE', 'Belgium'),
	('HR', 'Croatia'),
	('CY', 'Cyprus'),
	('CZ', 'Czech Republic'),
	('DK', 'Denmark'),
	('EE', 'Estonia'),
	('FI', 'Finland'),
	('FR', 'France'),
	('GE', 'Georgia'),
	('DE', 'Germany'),
	('GR', 'Greece'),
	('HU', 'Hungary'),
	('IS', 'Iceland'),
	('IE', 'Ireland'),
	('IL', 'Israel'),
	('IT', 'Italy'),
	('LV', 'Latvia'),
	('LT', 'Lithuania'),
	('MK', 'Macedonia'),
	('MT', 'Malta'),
	('MD', 'Moldova'),
	('ME', 'Montenegro'),
	('NL', 'Netherlands'),
	('NO', 'Norway'),
	('PL', 'Poland'),
	('PT', 'Portugal'),
	('RO', 'Romania'),
	('RU', 'Russia'),
	('SM', 'San Marino'),
	('RS', 'Serbia'),
	('SI', 'Slovenia'),
	('ES', 'Spain'),
	('SE', 'Sweden'),
	('CH', 'Switzerland'),
	('UA', 'Ukraine'),
	('GB', 'United Kingdom')


-- Participants Insert 
insert into participant (country_id, name, song, year, song_link, language) values
	(14, 'Bilal Hassani', 'Roi', 2019, 'https://youtu.be/Z4X4ygjcUd4', 'French & English'),
	(10, 'Lake Malawi', 'Friend of a Friend', 2019, 'https://youtu.be/duSSVY_YJyY', 'English'), 
	(38, 'Miki', 'La Venda', 2019, 'https://youtu.be/vpMIb5rabKQ', 'Spanish')
	
insert into participant (country_id, name, song, year, language) values
	(1, 'Jonida Maliqi', 'Ktheju tokës', 2019, 'Albanian'), 
	((select id from country where name = 'Cyprus'), 'Tamta', 'Replay', 2019, 'English'),
	((select id from country where name = 'Australia'), 'Kate Miller-Heidke', 'Zero Gravity', 2019, 'English'),
	((select id from country where name = 'Italy'), 'Mahmood', 'Soldi', 2019, 'Italian'),
	((select id from country where name = 'Montenegro'), 'D-Moll', 'Heaven', 2019, 'English'),
	((select id from country where name = 'United Kingdom'), 'Michael Rice', 'Bigger Than Us', 2019, 'English'),
	((select id from country where name = 'Slovenia'), 'Zala Kralj & Gašper Šantl', 'Sebi', 2019, 'Slovene'),
	((select id from country where name = 'Estonia'), 'Victor Crone', 'Storm', 2019, 'English'),
	((select id from country where name = 'Greece'), 'Katerine Duska', 'Better Love', 2019, 'English'),
	((select id from country where name = 'Latvia'), 'Carousel', 'That Night', 2019, 'English'),
	((select id from country where name = 'Romania'), 'Esther Peony', 'On a Sunday', 2019, 'English'),
	((select id from country where name = 'Croatia'), 'Roko Blažević', 'The Dream', 2019, 'Croatian & English'),
	((select id from country where name = 'Germany'), 'S!sters', 'Sister', 2019, 'English'),
	((select id from country where name = 'Denmark'), 'Leonora', 'Love is forever', 2019, 'English, French, German & Dansk'),
	((select id from country where name = 'Hungary'), 'Joci Pápai', 'Az Én Apám', 2019, 'Hungarian'),
	((select id from country where name = 'Israel'), 'Kobi Marimi', 'Home', 2019, 'English'),
	((select id from country where name = 'Lithuania'), 'Jurijus', 'Run with the lions', 2019, 'English')


-- insert into participant (country_id, name, song, year, language) values
	-- (4, 'PAENDA', 'Limits', 2019)
	-- ((select id from country where name = 'Macedonia'), 'Tamara Todevska', 'Proud', 2019),
	
-- Gala Insert
insert into gala (type, date) values
	('Semifinal', '2019-05-14'),
	('Semifinal', '2019-05-16'),
	('Final', '2019-05-18')
	

-- galaParticipant Insert 
/* insert into galaparticipant (gala_id, participant_id) values
	(3, 1), -- France
	(3, 3) -- Spain 
	(3, )
	**/

	