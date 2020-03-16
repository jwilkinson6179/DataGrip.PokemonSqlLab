/* 
Part 4: Final Report

Directions: Write a query that returns the following collumns:
Pokemon Name 	Trainer Name 	Level 	Primary Type 	Secondary Type
Pokemon's name 	Trainer's name 	Current Level 	Primary Type Name 	Secondary Type Name

Sort the data by finding out which trainer has the strongest pokemon so that this will act 
as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way 
you want, but you will have to explain your decision. 
*/

SELECT p.name AS "Pokemon Name", tr.trainername AS "Trainer Name", pt.pokelevel AS "Level", t.name AS "Primary Type", ts.name AS "Secondary Type", 
    (pt.maxhp + pt.attack + pt.defense + pt.spatk + pt.spdef + speed) AS "Stat Total" 
    FROM pokemon_trainer pt 
    JOIN pokemons p ON p.id = pt.pokemon_id 
    JOIN trainers tr ON tr.trainerID = pt.trainerID 
    JOIN types t ON t.id = p.primary_type 
    JOIN types ts ON ts.id = p.secondary_type 
    ORDER BY "Stat Total" DESC;

/* The highest combined base stats of a Pokemon make for the most powerful I could deduce.  I am not familiar enough with types
and what not to make a decision based further on this, but it goes to reason that Ace Duo Jude & Rory are the strongest trainers
because of a large concentration of powerful Pokemon in the stable of fighters. */