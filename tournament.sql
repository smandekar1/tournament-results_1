-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.



CREATE TABLE players(id SERIAL PRIMARY KEY, name TEXT);
CREATE TABLE game_results(id SERIAL PRIMARY KEY, 
	winner_id INTEGER REFERENCES players(id), 
	loser_id INTEGER REFERENCES players(id));


-- Standings View shows number of wins and matches played for each Player 
CREATE VIEW standings AS
	SELECT players.id, players.name, (SELECT count(*) FROM game_results WHERE players.id in (winner_id)) as wins,
	count(game_results.winner_id = players.id) as matches 
	FROM players LEFT JOIN game_results
	ON players.id = game_results.winner_id or players.id = game_results.loser_id
	GROUP by players.id
	ORDER by matches desc;




