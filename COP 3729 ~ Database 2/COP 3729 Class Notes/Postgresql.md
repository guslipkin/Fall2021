# General Design

- Object oriented in three subsystems
  1. Client/Server (Front End)
  2. Server processes
  3. Database control



# CAP Theorem

- ![Screen Shot 2021-08-31 at 7.08.37 PM](Postgresql.assets/Screen Shot 2021-08-31 at 7.08.37 PM.png)



# System Architecture

```mermaid
graph LR
		subgraph l1[Legend]
    A-->|Depends On|B
    lt1[Component]
    lt2[Subsystem]
    end
		subgraph a[System Architecture]
    c2-->b1
    c2-->b2
    b2-->a2
    subgraph s1[Database Control]
    a1[Data Management]<-->a2[Data Storage]
    end
    subgraph s2[Server Processes]
    b1[Postmaster]<-->b2[Postgres Server]
    end
    subgraph s3[Client Processes]
    c1[Client Application]-->c2[Client Interface Library]
    end
    end
    
		style l1 fill:white,stroke:black
		style lt2 stroke-dasharray: 5 5
		style s1 stroke-dasharray:5 5
		style s2 stroke-dasharray:5 5
		style s3 stroke-dasharray:5 5
		style a fill:white,stroke:black
```

# Client Server

- Two main parts
  1. Client application
  2. Client interface library
- Many different applications
- Client Interface Library is how they talk to the server

# Postmaster

- Daemon thread that runs constantly
- Implicit invocation architecture to listen for any and all database calls
- When it receives client call, creates a back-end process (server) to match it with 1-to-1 correspondence

# Server Architecture

```mermaid
graph TD
	subgraph l1[Legend]
	c1[Component]
	A[ ]-->|Dependency|B[ ]
	end
	
	subgraph a[Postgres Server]
	ci[Client Input]-->st1
	subgraph s1[ ]
	st1[Parser]-->st2[Traffic Cop]
	st2-->|Complex Query Commands|st3[Rewriter]
	st3-->st4[Planner/Optimizer]
	st4-->st5[Executor]
	st2-->st5
	st1<-->st6[Symbol Tabels, Data Tables, Libraries, etc.]
	st1 & st2 & st3 & st4 & st5<--> st6
	end
	st5-->dro[Data Rows/Output]
	end

	style l1 fill:white,stroke:black
	style a fill:white, stroke:black
```

# Parser

-  Accepts an SQL query as ASCII text
- *lexar* does pattern matching
- *parser* then assembles into a parse tree (order of operations)
- *parser* then checks that query has valid syntax

# Rewriter

- Lookup rules
- Lookup view definitions

# Planner

- Creates optimal execution plan

# Executor

- Receives plan from planner in tree form
- Extracts necessary data tables
- Recursively goes through plan and executes
- Pipe and filter, *not* batch processing
- Return output

# Catalogs

- Postgres is catalog-driven, moreso than others
- Catalogs describe tables, their columns, indexes, etc
- Also use system catalogs to store info about datatypes, functions, operators, index access methods, etc

# Features

- Complex queries
- Foreign keys
- Triggers
- Updateable views
- Transactional integrity
- Multiversion concurrency control

# Extensibility

- Data Types
- Functions
- Operators
- Aggregate functions
- Index Methods
- Procedural Languages