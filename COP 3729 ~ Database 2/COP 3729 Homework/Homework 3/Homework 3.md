# Homework 3

Gus Lipkin

## Code

```json
use blogger

function insertBlog(name, 
                     email, 
                     creationDate, 
                     url, 
                     title, 
                     text, 
                     comments) {
  db.articles.insertOne({ name: name, 
                         email: email, 
                         creationDate: ISODate(creationDate), 
                         url: url, 
                         title: title, 
                         text: text, 
                         comments: comments } ); }

insertBlog("Gus Lipkin", 
           "glipkin6737@floridapoly.edu", 
           "1997-08-01", 
           "gus.com", 
           "This is a title", 
           "Blogs are dumb.", 
           [])
insertBlog("Nate Fuller", 
           "nfuller7999@floridapoly.edu",	
           "1595-07-05",	
           "nfuller.com",	
           "Blogging in the 16th century",
           "Look at me! I'm blogging on sheepskin that's being read out in all the nearby towns by their town criers.", 
           [])
insertBlog("Luis Moraguez", 
           "lmoraguez6380@floridapoly.edu", 
           "1888-01-31",	
           "lmoraguez.com",	
           "Does blogging with a graph count as telework?",
           "I'm blogging with a telegraph. People just don't seem to understand when I ask them to like and subscribe.", 
           [])
insertBlog("Ahna Cecil",	
           "acecil7688@floridapoly.edu",	
           "1951-07-25",	
           "acecil.com",
           "Mike TeeVee's got nothing on me",
           "This new Television thing is super cool. I'm so hip that I decided to combine the words \"blog\" and \"video\" to create the first ever vlog.", 
           [])
insertBlog("Nicole Ely",	
           "nely7539@floridapoly.edu",	
           "2861-02-15",	
           "nely.com",	
           "Today is the tomorrow you were so worried about yesterday",
           "The future's cool and all but people still think they're hot shit because they have a blog and it is so annoying!", 
           [])

// I couldn't get this to run as a function. I'm not totally sure why.
/*
function insertComment(blogAuthor, cAuthor, cText) {
  db.articles.updateOne({name: blogAuthor}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: cAuthor, commentText: cText}
                     ]}}}, 
                      function(err, num) {});}

insertComment("Nate Fuller", 
              "Nicole Ely", 
              "omg. This is the best blog ever!")
insertComment("Nate Fuller", 
              "Luis Moraguez", 
              "How have I made it this far in life without your sage advice, oh wise one of the blog?")
*/

db.articles.updateOne({name: "Nate Fuller"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Nicole Ely", 
                        commentText: "omg. This is the best blog ever!"}
                     ]}}}, 
                      function(err, num) {});
db.articles.updateOne({name: "Nicole Ely"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Luis Moraguez", 
                        commentText: "How have I made it this far in life without your sage advice, oh wise one of the blog?"}
                     ]}}}, 
                      function(err, num) {});
db.articles.updateOne({name: "Ahna Cecil"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "Worst. Blog. Ever."}
                     ]}}}, 
                      function(err, num) {});
db.articles.updateOne({name: "Luis Moraguez"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "You probably think this is worth a Pulitzer, huh?"}
                     ]}}}, 
                      function(err, num) {});
db.articles.updateOne({name: "Nate Fuller"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "omg. This is the best blog ever! NOT!!"}
                     ]}}}, 
                      function(err, num) {});

db.articles.aggregate([
    {$match: {'comments.commentAuthor': 'Gus Lipkin'}},
    {$project: {
        articles: {$filter: {
            input: '$comments',
            as: 'comment',
            cond: {$eq: ['$$comment.commentAuthor', 'Gus Lipkin']}
        }},
        title: 1, creationDate: 1, _id: 0
    }}
])
```



## Code and Results

### Initial Setup

```json
use blogger
> 'switched to db blogger'

function insertBlog(name, 
                     email, 
                     creationDate, 
                     url, 
                     title, 
                     text, 
                     comments) {
  db.articles.insertOne({ name: name, 
                         email: email, 
                         creationDate: ISODate(creationDate), 
                         url: url, 
                         title: title, 
                         text: text, 
                         comments: comments } ); }
> [Function: insertBlog]

insertBlog("Gus Lipkin", 
           "glipkin6737@floridapoly.edu", 
           "1997-08-01", 
           "gus.com", 
           "This is a title", 
           "Blogs are dumb.", 
           [])
```

### Before Adding Comments

| _id                      | comments | creationDate             | email                         | name          | text                                                         | title                                                      | url           |
| ------------------------ | -------- | ------------------------ | ----------------------------- | ------------- | ------------------------------------------------------------ | ---------------------------------------------------------- | ------------- |
| 61576e2e25b679c792eb90c9 | []       | 1997-08-01T00:00:00.000Z | glipkin6737@floridapoly.edu   | Gus Lipkin    | Blogs are dumb.                                              | This is a title                                            | gus.com       |
| 61576e3d25b679c792eb90ca | []       | 1595-07-05T00:00:00.000Z | nfuller7999@floridapoly.edu   | Nate Fuller   | Look at me! I'm blogging on  sheepskin that's being read out in all the nearby towns by their town criers. | Blogging in the 16th century                               | nfuller.com   |
| 61576e4325b679c792eb90cb | []       | 1888-01-31T00:00:00.000Z | lmoraguez6380@floridapoly.edu | Luis Moraguez | I'm blogging with a telegraph.  People just don't seem to understand when I ask them to like and subscribe. | Does blogging with a graph count  as telework?             | lmoraguez.com |
| 61576e4a25b679c792eb90cc | []       | 1951-07-25T00:00:00.000Z | acecil7688@floridapoly.edu    | Ahna Cecil    | This new Television thing is  super cool. I'm so hip that I decided to combine the words "blog"  and "video" to create the first ever vlog. | Mike TeeVee's got nothing on me                            | acecil.com    |
| 61576e4f25b679c792eb90cd | []       | 2861-02-15T00:00:00.000Z | nely7539@floridapoly.edu      | Nicole Ely    | The future's cool and all but  people still think they're hot shit because they have a blog and it is so  annoying! | Today is the tomorrow you were  so worried about yesterday | nely.com      |

### Adding Comments

```json
db.articles.updateOne({name: "Nate Fuller"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Nicole Ely", 
                        commentText: "omg. This is the best blog ever!"}
                     ]}}}, 
                      function(err, num) {});
> { acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }
  
db.articles.updateOne({name: "Nicole Ely"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Luis Moraguez", 
                        commentText: "How have I made it this far in life without your sage advice, oh wise one of the blog?"}
                     ]}}}, 
                      function(err, num) {});
> { acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }

db.articles.updateOne({name: "Ahna Cecil"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "Worst. Blog. Ever."}
                     ]}}}, 
                      function(err, num) {});
> { acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }

db.articles.updateOne({name: "Luis Moraguez"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "You probably think this is worth a Pulitzer, huh?"}
                     ]}}}, 
                      function(err, num) {});
> { acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }

db.articles.updateOne({name: "Nate Fuller"}, 
                     {$addToSet: {comments: {$each: [
                       {commentAuthor: "Gus Lipkin", 
                        commentText: "omg. This is the best blog ever! NOT!!"}
                     ]}}}, 
                      function(err, num) {});
> { acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0 }
```

### After Adding Comments

| _id                      | comments                                                     | creationDate             | email                         | name          | text                                                         | title                                                      | url           |
| ------------------------ | ------------------------------------------------------------ | ------------------------ | ----------------------------- | ------------- | ------------------------------------------------------------ | ---------------------------------------------------------- | ------------- |
| 61576e2e25b679c792eb90c9 | []                                                           | 1997-08-01T00:00:00.000Z | glipkin6737@floridapoly.edu   | Gus Lipkin    | Blogs are dumb.                                              | This is a title                                            | gus.com       |
| 61576e3d25b679c792eb90ca | [{"commentAuthor":"Nicole  Ely",     "commentText":"omg. This is the best blog  ever!"},     {"commentAuthor":"Gus Lipkin",     "commentText":"omg. This is the best blog ever!  NOT!!"}] | 1595-07-05T00:00:00.000Z | nfuller7999@floridapoly.edu   | Nate Fuller   | Look at me! I'm blogging on  sheepskin that's being read out in all the nearby towns by their town criers. | Blogging in the 16th century                               | nfuller.com   |
| 61576e4325b679c792eb90cb | [{"commentAuthor":"Gus  Lipkin",     "commentText":"You probably think this is worth a Pulitzer,  huh?"}] | 1888-01-31T00:00:00.000Z | lmoraguez6380@floridapoly.edu | Luis Moraguez | I'm blogging with a telegraph.  People just don't seem to understand when I ask them to like and subscribe. | Does blogging with a graph count  as telework?             | lmoraguez.com |
| 61576e4a25b679c792eb90cc | [{"commentAuthor":"Gus  Lipkin",     "commentText":"Worst. Blog. Ever."}] | 1951-07-25T00:00:00.000Z | acecil7688@floridapoly.edu    | Ahna Cecil    | This new Television thing is super  cool. I'm so hip that I decided to combine the words "blog" and  "video" to create the first ever vlog. | Mike TeeVee's got nothing on me                            | acecil.com    |
| 61576e4f25b679c792eb90cd | [{"commentAuthor":"Luis  Moraguez",     "commentText":"How have I made it this far in life without  your sage advice, oh wise one of the blog?"}] | 2861-02-15T00:00:00.000Z | nely7539@floridapoly.edu      | Nicole Ely    | The future's cool and all but  people still think they're hot shit because they have a blog and it is so  annoying! | Today is the tomorrow you were so  worried about yesterday | nely.com      |

### Querying for Comments

```json
db.articles.aggregate([
    {$match: {'comments.commentAuthor': 'Gus Lipkin'}},
    {$project: {
        articles: {$filter: {
            input: '$comments',
            as: 'comment',
            cond: {$eq: ['$$comment.commentAuthor', 'Gus Lipkin']}
        }},
        title: 1, creationDate: 1, _id: 0
    }}
])
> { creationDate: 1595-07-05T00:00:00.000Z,
  title: 'Blogging in the 16th century',
  articles: 
   [ { commentAuthor: 'Gus Lipkin',
       commentText: 'omg. This is the best blog ever! NOT!!' } ] }
{ creationDate: 1888-01-31T00:00:00.000Z,
  title: 'Does blogging with a graph count as telework?',
  articles: 
   [ { commentAuthor: 'Gus Lipkin',
       commentText: 'You probably think this is worth a Pulitzer, huh?' } ] }
{ creationDate: 1951-07-25T00:00:00.000Z,
  title: 'Mike TeeVee\'s got nothing on me',
  articles: 
   [ { commentAuthor: 'Gus Lipkin',
       commentText: 'Worst. Blog. Ever.' } ] }
```

## Screenshots

### Collections

<img src="Homework 3.assets/Screen Shot 2021-10-01 at 5.06.12 PM-3122400.png" alt="Screen Shot 2021-10-01 at 5.06.12 PM" style="zoom:33%;" />

### Documents

<img src="Homework 3.assets/Screen Shot 2021-10-01 at 5.04.52 PM.png" alt="Screen Shot 2021-10-01 at 5.04.52 PM" style="zoom:33%;" />

<img src="Homework 3.assets/Screen Shot 2021-10-01 at 5.05.25 PM.png" alt="Screen Shot 2021-10-01 at 5.05.25 PM" style="zoom:33%;" />

<img src="Homework 3.assets/Screen Shot 2021-10-01 at 5.07.18 PM.png" alt="Screen Shot 2021-10-01 at 5.07.18 PM" style="zoom:33%;" />

<img src="Homework 3.assets/Screen Shot 2021-10-01 at 5.07.40 PM.png" alt="Screen Shot 2021-10-01 at 5.07.40 PM" style="zoom: 33%;" />