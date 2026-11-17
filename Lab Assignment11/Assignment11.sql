 -- Assignment 11
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268

USE dbms_lab;

CREATE TABLE if not exists team (
    team_id INT,
    team_name VARCHAR(20)
);

INSERT INTO team (team_id, team_name)
VALUES
(1, 'Eagles'),
(2, 'Tigers'),
(3, 'Lions');


CREATE TABLE player (
    player_name VARCHAR(30),
    team_id INT,
    age INT
);

INSERT INTO player (player_name, team_id, age)
VALUES
('Asha', 1, 24),
('Meera', 1, 22),
('Arjun', 2, 27);

-- TASK 1: Display all teams with their players, including teams without players
SELECT team.team_name, player.player_name
FROM team
LEFT JOIN player
ON team.team_id = player.team_id
ORDER BY team.team_name, player.player_name;


-- TASK 2: Display every possible team and player combination
SELECT team.team_name, player.player_name
FROM team
CROSS JOIN player
ORDER BY team.team_name, player.player_name;


-- TASK 3: Display matching team and player records using NATURAL JOIN
SELECT team_name, player_name, team_id, age
FROM team
NATURAL JOIN player;