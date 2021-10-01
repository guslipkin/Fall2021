# Homework 2

>  Gus Lipkin

## Code

```SPARQL
DEL tetris:leaderboard
ZADD tetris:leaderboard 0 "Ahna" 0 "Nate" 0 "Gus" 0 "Luis"
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
ZRANGEBYSCORE tetris:leaderboard 0 2000
ZINCRBY tetris:leaderboard 9213 "Ahna"
ZINCRBY tetris:leaderboard 5246 "Nate"
ZINCRBY tetris:leaderboard 9971 "Gus"
ZINCRBY tetris:leaderboard 7705 "Luis"
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
ZINCRBY tetris:leaderboard 14 "Ahna"
ZINCRBY tetris:leaderboard 5222 "Nate"
ZINCRBY tetris:leaderboard 7097 "Gus"
ZINCRBY tetris:leaderboard 5520 "Luis"
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
ZINCRBY tetris:leaderboard 3160 "Ahna"
ZINCRBY tetris:leaderboard 6761 "Nate"
ZINCRBY tetris:leaderboard 6921 "Gus"
ZINCRBY tetris:leaderboard 281 "Luis"
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
```

## Code with Results

```SPARQL
DEL tetris:leaderboard
> 0
ZADD tetris:leaderboard 0 "Ahna" 0 "Nate" 0 "Gus" 0 "Luis"
> 4
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
> Ahna
> 0
> Gus
> 0
> Luis
> 0
> Nate
> 0
ZRANGEBYSCORE tetris:leaderboard 0 2000
> Ahna
> Gus
> Luis
> Nate
ZINCRBY tetris:leaderboard 9213 "Ahna"
> 9213
ZINCRBY tetris:leaderboard 5246 "Nate"
> 5246
ZINCRBY tetris:leaderboard 9971 "Gus"
> 9971
ZINCRBY tetris:leaderboard 7705 "Luis"
> 7705
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
> Nate
> 5246
> Luis
> 7705
> Ahna
> 9213
> Gus
> 9971
ZINCRBY tetris:leaderboard 14 "Ahna"
> 9227
ZINCRBY tetris:leaderboard 5222 "Nate"
> 10468
ZINCRBY tetris:leaderboard 7097 "Gus"
> 17068
ZINCRBY tetris:leaderboard 5520 "Luis"
> 13225
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
> Ahna
> 9227
> Nate
> 10468
> Luis
> 13225
> Gus
> 17068
ZINCRBY tetris:leaderboard 3160 "Ahna"
> 12387
ZINCRBY tetris:leaderboard 6761 "Nate"
> 17229
ZINCRBY tetris:leaderboard 6921 "Gus"
> 23989
ZINCRBY tetris:leaderboard 281 "Luis"
> 13506
ZRANGE tetris:leaderboard 0 999999 WITHSCORES
> Ahna
> 12387
> Luis
> 13506
> Nate
> 17229
> Gus
> 23989
```

## Screenshots of Initial and Final State

### Initial State

<img src="Homework 2.assets/Screen Shot 2021-09-24 at 4.53.39 PM.png" alt="Screen Shot 2021-09-24 at 4.53.39 PM" style="zoom: 33%;" />

### Final State

<img src="Homework 2.assets/Screen Shot 2021-09-24 at 4.54.17 PM.png" alt="Screen Shot 2021-09-24 at 4.54.17 PM" style="zoom:33%;" />