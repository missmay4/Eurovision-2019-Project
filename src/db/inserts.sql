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
	('UA', 'Ukraine'), -- Retirado en la edición de 2019
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

insert into participant (country_id, name, song, year, language) values
	((select id from country where name = 'Finland'), 'Darude ft. Sebastian Rejman', 'Look away', 2019, 'English'),
	((select id from country where name = 'Georgia'), 'Oto Nemsadze', 'Sul tsin iare', 2019, 'Georgian'),
	((select id from country where name = 'Iceland'), 'Hatari', 'Hatrið mun sigra', 2019, 'Icelandic'),
	((select id from country where name = 'Moldova'), 'Anna Odobescu', 'Stay', 2019, 'English'),
	((select id from country where name = 'Norway'), 'KEiiNO', 'Spirit in the Sky', 2019, 'English & Sámi'),
	((select id from country where name = 'Portugal'), 'Conan Osíris', 'Telemóveis', 2019, 'Portuguese'),
	((select id from country where name = 'Serbia'), 'Nevena Božović', 'Kruna', 2019, 'Serbian'),
	((select id from country where name = 'Belgium'), 'Eliot', 'Wake up', 2019, 'English')

insert into participant (country_id, name, song, year, language) values
	((select id from country where name = 'Switzerland'), 'Luca Hänni', 'She got me', 2019, 'English'),
	((select id from country where name = 'San Marino'), 'Serhat', 'Say Na Na Na', 2019, 'English'),	
	((select id from country where name = '3'), 'Zena', 'Like it', 2019, 'English'),
	((select id from country where name = 'Netherlands'), 'Duncan Laurence', 'Arcade', 2019, 'English')
	
insert into participant (country_id, name, song, year, language) values
	((select id from country where name = 'Macedonia'), 'Tamara Todevska', 'Proud', 2019, ''),
	((select id from country where name = 'Ireland'), 'Sarah McTernan', '22', 2019, 'English'),
	((select id from country where name = 'Austria'), 'PAENDA', 'Limits', 2019, 'English'), 
	((select id from country where name = 'Azerbaijan'), 'Chingiz', 'She is a killer', 2019, 'English'),
	((select id from country where name = 'Armenia'), 'Srbuk', 'Walking out', 2019, 'English'),
	((select id from country where name = 'Poland'), 'Tulia', 'Pali się', 2019, 'Polish & English')
	
insert into participant (country_id, name, song, year, language) values	
	((select id from country where name = 'Russia'), 'Sergey Lazarev', 'Scream', 2019, 'English'),
	((select id from country where name = 'Sweden'), 'John Lundvik', 'Too late for love', 2019, 'English'),
	((select id from country where name = 'Malta'), 'Michela Pace', 'Chameleon', 2019, 'English')
	
-- Gala Insert
insert into gala (type, date) values
	('Semifinal', '2019-05-14'),
	('Semifinal', '2019-05-16'),
	('Final', '2019-05-18')
	
-- galaParticipant Insert 
insert into galaparticipant (gala_id, participant_id) values
	(3, 1), -- France
	(3, 3), -- Spain 
	(3, 19), -- Israel
	(3, 16), -- Germany
	(3, 7), -- Italy
	(3, 9) -- UK
	
insert into galaparticipant (gala_id, participant_id) values	
	(1, 5), -- Cyprus
	(1, 2), -- Checz Republique
	(1, 21), -- Finland
	(1, 18), -- Hungary
	(1, 8), -- Montenegro
	(1, 38), -- Poland
	(1, 27), -- Serbia
	(1, 10), -- Slovenia
	(1, 6), -- Australia
	(1, 28), -- Belgium
	(1, 11), -- Estonia
	(1, 22), -- Georgia
	(1, 12), -- Greece
	(1, 23), -- Iceland
	(1, 26), -- Portugal
	(1, 30), -- San Marino 
	(2, 37), -- Armenia
	(2, 35), -- Austria
	(2, 17), -- Denmark
	(2, 34), -- Ireland
	(2, 13), -- Latvia
	(2, 24), -- Moldova
	(2, 14), -- Romania
	(2, 43), -- Sweden
	(2, 29), -- Switzerland
	(2, 4), -- Albania
	(2, 36), -- Azerbaijan
	(2, 15), -- Croatia
	(2, 20), -- Lithuania
	(2, 44), -- Malta
	(2, 32), -- Netherlands
	(2, 33), -- Macedonia
	(2, 25), -- Norway
	(2, 42) -- Russia 
	
insert into galaparticipant (gala_id, participant_id) values	
	(1, 31)
		
-- updates participant
update participant set language = 'Italian & Arabic' where country_id = 22
update participant set language = 'English' where country_id = 25
update participant set song_link = 'https://youtu.be/eWEFU2c3tBI' where country_id = 38 -- Spain
update participant set song_link = 'https://youtu.be/dw7WqoSHtgU' where country_id = 14 -- France
update participant set song_link = 'https://youtu.be/Ho9MuPJPZ90' where country_id = 10 -- Czech Republic

insert into galaparticipant (gala_id, participant_id) values
	(3, 12), 
	(3, 31), 
	(3, 27), 
	(3, 5), 
	(3, 11), 
	(3, 2), 
	(3, 6), 
	(3, 23), 
	(3, 30), 
	(3, 10)

