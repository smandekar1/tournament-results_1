# Udacity Project 2 - Tournament Results 

This system implements a Swiss style tournanement from a group of players that are inserted into the database.  


# Files

README.txt - information on Tournament Results
tournament.py - python file containing functions tha implement a Swiss style tournament system 
tournament.sql - creates tables and view that are used by tournament.py
tournament_test.py - Test file used to create scenarios for Tournament Results system.


# Requirements

Python 2.7
psycopg2 


# Create and Connect to the Database 

1.  Run psql command at the vagrant virtual machine prompt
2.  Run DROP DATABASE IF EXISTS tournament;
3.  Run CREATE DATABASE tournament;
4.  Run \c tournament;


# Import the sql schema
 
1.  Run \i tournament.sql
2.  Run \q


# Running the test

1.  Run python tournament.py
2.  Run python tournament_test.py 



# Functions in tournament.py

registerPlayer(name)
Adds player to Tournament Results database  

countPlayers()
Counts players currently registered  

deletePlayers()
Deletes players from the database

reportMatch(winner, loser)
Stores the outcome of a single match between two players in the database.

deleteMatches()
Deletes players from the database

playerStandings()
Returns a player standings list sorted by each player's wins

swissPairings()
Returns a list of pairings for matches to be played in the next round based upon player wins.  
