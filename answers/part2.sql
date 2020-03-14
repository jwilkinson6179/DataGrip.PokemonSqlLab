/* What are all the types of pokemon that a pokemon can have? */
SELECT name FROM types;

/*  What is the name of the pokemon with id 45? */
SELECT p.name FROM pokemons p WHERE p.id = 45;

/*  How many pokemon are there? */
SELECT COUNT(*) FROM pokemons;

/* How many types are there? */
SELECT COUNT(*) FROM types;

/* How many pokemon have a secondary type? */
SELECT COUNT(*) FROM pokemons p WHERE p.secondary_type IS NOT NULL;