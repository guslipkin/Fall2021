# Homework 1

## Gus Lipkin

> Create a stored procedure that enables you to input an actors name and then retrieve the top five suggestions based on movies the actor has starred in.

```sql
CREATE OR REPLACE FUNCTION TopFive(actor_name TEXT)
RETURNS TABLE (actors_name TEXT, movie_name TEXT) language plpgsql
AS $$
BEGIN
    RETURN QUERY
        SELECT actors.name, movies.title
        FROM actors
        INNER JOIN movies_actors ON actors.actor_id = movies_actors.actor_id
        INNER JOIN movies ON movies_actors.movie_id = movies.movie_id
        WHERE actors.name = actor_name
        LIMIT 5;
END;$$
```

```sql
SELECT * FROM TopFive('Alec Guinness')
```

![Screen Shot 2021-09-21 at 7.59.02 PM](Homework 1.assets/Screen Shot 2021-09-21 at 7.59.02 PM.png)