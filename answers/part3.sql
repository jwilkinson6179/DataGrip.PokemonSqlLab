/* What is each pokemon's primary type? */
SELECT p.name, t.name AS "Primary Type" FROM pokemons p JOIN types t ON p.primary_type = t.id;

/* What is Rufflet's secondary type? */
SELECT p.name, t.name AS "Secondary Type" FROM pokemons p JOIN types t ON p.name = 'Rufflet' AND p.secondary_type = t.id;

/* What are the names of the pokemon that belong to the trainer with trainerID 303? */
SELECT p.name "Pokemon of Trainer 303" FROM pokemons p JOIN pokemon_trainer pt ON pt.trainerID = 303;

/* How many pokemon have a secondary type Poison */
SELECT COUNT(*) AS "Number of Pokemon With Secondary Type 'Poison'" FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE t.name = 'Poison';

/* What are all the primary types and how many pokemon have that type? */
SELECT t.name AS "Primary Type" , COUNT(*) AS "Pokemon With" FROM pokemons p JOIN types t ON p.primary_type = t.id GROUP BY t.name;

/*  How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? 
    (Hint: your query should not display a trainer) */
SELECT COUNT(*) AS "Number of Max Level Pokemon" FROM pokemon_trainer pt WHERE pt.pokelevel = 100 GROUP BY pt.trainerID;

/* How many pokemon only belong to one trainer and no other? */
SELECT p.name AS "Unique Pokemon" FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_id GROUP BY p.name HAVING COUNT(pt.trainerID) = 1;