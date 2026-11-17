USE dbms_lab;

-- TABLE CREATION


CREATE TABLE IF NOT EXISTS player (
    name VARCHAR(30),
    team VARCHAR(20),
    runs INT
);



-- INSERTING DATA (WITHOUT DUPLICATES)

INSERT INTO player (name, team, runs)
SELECT 'Asha', 'Eagles', 45
WHERE NOT EXISTS (
    SELECT 1 FROM player WHERE name = 'Asha'
);

INSERT INTO player (name, team, runs)
SELECT 'Meera', 'Tigers', 72
WHERE NOT EXISTS (
    SELECT 1 FROM player WHERE name = 'Meera'
);

INSERT INTO player (name, team, runs)
SELECT 'Arjun', 'Eagles', 30
WHERE NOT EXISTS (
    SELECT 1 FROM player WHERE name = 'Arjun'
);

INSERT INTO player (name, team, runs)
SELECT 'Kiran', 'Lions', 88
WHERE NOT EXISTS (
    SELECT 1 FROM player WHERE name = 'Kiran'
);


-- 
-- TASK 1: Players from Eagles with more than 35 runs

SELECT *
FROM player
WHERE team = 'Eagles' AND runs > 35;


-- 
-- TASK 2: Players who scored between 40 and 80 runs
-- 

SELECT *
FROM player
WHERE runs BETWEEN 40 AND 80;


-- 
-- TASK 3: Players from Tigers or Lions team
-- 

SELECT *
FROM player
WHERE team IN ('Tigers', 'Lions');


-- 
-- CHECK: DISPLAY ALL PLAYERS
-- 

SELECT * FROM player;