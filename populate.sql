INSERT INTO Country (country_name) VALUES ('United States');
INSERT INTO Country (country_name) VALUES ('Ukraine');
INSERT INTO Country (country_name) VALUES ('China');

INSERT INTO Athlete (athlete_name, gender, country_name) VALUES ('MASHURENKO, Ruslan', 'Men', 'Ukraine');
INSERT INTO Athlete (athlete_name, gender, country_name) VALUES ('COUGHLIN, Natalie', 'Women', 'United States');
INSERT INTO Athlete (athlete_name, gender, country_name) VALUES ('LI, Jie', 'Men', 'China');


INSERT INTO Cities (city_name) VALUES ('Sydney');
INSERT INTO Cities (city_name) VALUES ('Athens');
INSERT INTO Cities (city_name) VALUES ('Beijing');

INSERT INTO Olimpiada (olimp_year, cities_name) VALUES (2000, 'Sydney');
INSERT INTO Olimpiada (olimp_year, cities_name) VALUES (2004, 'Athens');
INSERT INTO Olimpiada (olimp_year, cities_name) VALUES (2008, 'Beijing');

INSERT INTO Medal (color) VALUES ('Bronze');
INSERT INTO Medal (color) VALUES ('Gold');
INSERT INTO Medal (color) VALUES ('Silver');

INSERT INTO SportCategory (category_name) VALUES ('Shooting');
INSERT INTO SportCategory (category_name) VALUES ('Judo');
INSERT INTO SportCategory (category_name) VALUES ('Aquatics');

INSERT INTO Disciplina (disc_name, SportCategory_name) VALUES ('Shooting', 'Shooting');
INSERT INTO Disciplina (disc_name, SportCategory_name) VALUES ('Judo', 'Judo');
INSERT INTO Disciplina (disc_name, SportCategory_name) VALUES ('Swimming', 'Aquatics');

INSERT INTO Event (event_name) VALUES ('10m air rifle (60 shots)');
INSERT INTO Event (event_name) VALUES ('81 - 90kg (middleweight)');
INSERT INTO Event (event_name) VALUES ('100m backstroke');

INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Judo', '81 - 90kg (middleweight)', 'MASHURENKO, Ruslan', 2000, 'Bronze');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Swimming', '100m backstroke', 'COUGHLIN, Natalie', 2000, 'Gold');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Shooting', '10m air rifle (60 shots)', 'LI, Jie', 2000, 'Silver');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Judo', '81 - 90kg (middleweight)', 'MASHURENKO, Ruslan', 2004, 'Bronze');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Swimming', '100m backstroke', 'COUGHLIN, Natalie', 2004, 'Gold');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Shooting', '10m air rifle (60 shots)', 'LI, Jie', 2004, 'Silver');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Judo', '81 - 90kg (middleweight)', 'MASHURENKO, Ruslan', 2008, 'Bronze');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Swimming', '100m backstroke', 'COUGHLIN, Natalie', 2008, 'Gold');
INSERT INTO GrantMedal (disciplina_name, event_name, athlete_name, olimpiada_year, medal_color) VALUES ('Shooting', '10m air rifle (60 shots)', 'LI, Jie', 2008, 'Silver');
