-- 1.Join the film to the film_actor table.
SELECT *
FROM  FILM A
LEFT JOIN FILM_ACTOR B 
ON A.FILM_ID = B.ACTOR_ID

--2.Join the actor table to the film_actor table. 
SELECT *
FROM ACTOR A
LEFT JOIN FILM_ACTOR B
ON A.ACTOR_ID = B.ACTOR_ID

--3.Try to join the actor, film_actor, and film table together (3 joins!)
SELECT *
FROM ACTOR A
LEFT JOIN FILM B
ON A.ACTOR_ID = B.FILM_ID
LEFT JOIN FILM_ACTOR C
ON C.ACTOR_ID = A.ACTOR_ID