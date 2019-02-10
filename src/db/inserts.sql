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
insert into participant (country_id, name, song, year, song_link) values
	(14, 'Bilal Hassani', 'Roi', 2019, 'https://youtu.be/Z4X4ygjcUd4')
	
insert into participant (country_id, name, song, year, song_link) values
	(10, 'Lake Malawi', 'Friend of a Friend', 2019, 'https://youtu.be/duSSVY_YJyY'), 
	(38, 'Miki', 'La Venda', 2019, 'https://youtu.be/vpMIb5rabKQ')
	
insert into participant (country_id, name, song, year) values
	(1, 'Jonida Maliqi', 'Ktheju tokës', 2019),
	(4, 'PAENDA', 'Limits', 2019)
	
insert into participant (country_id, name, song, year) values
	((select id from country where name = 'Cyprus'), 'Tamta', 'Replay', 2019)
	
insert into participant (country_id, name, song, year) values
	((select id from country where name = 'Macedonia'), 'Tamara Todevska', 'Proud', 2019)
	((select id from country where name = 'Australia'), 'Kate Miller-Heidke', 'Zero Gravity', 2019),
	((select id from country where name = 'Italy'), 'Mahmood', 'Soldi', 2019),
	((select id from country where name = 'Montenegro'), 'D-Moll', 'Heaven', 2019),
	((select id from country where name = 'United Kingdom'), 'Michael Rice', 'Bigger Than Us', 2019)
	
	
-- Gala Insert
insert into gala (type, date) values
	('Semifinal', '2019-05-14'),
	('Semifinal', '2019-05-16'),
	('Final', '2019-05-18')
	
-- galaParticipant Insert 
insert into galaparticipant (gala_id, participant_id) values
	(3, 1), -- France
	(3, 3) -- Spain

	