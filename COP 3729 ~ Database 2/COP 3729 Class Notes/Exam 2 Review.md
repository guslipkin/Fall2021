# Exam 2 Review

- Might be some questions about specific numbers (i.e. item size limit)
- 10 each on Neo4J, Neo4J Data Science, Dynamo

## Neo4J

- Won’t ask too much about initial slides
- There aren’t any limits
  - They’re around the compute resources, not the software
- CAP theorem placement
- Server architecture is similar to RDBMS
  - Core servers function as synced cluster
  - Write operations are coordinated by a master node
  - Core servers guarantee that the data is safeguarded
  - Confirm with end user that operations are completed
  - Read replicas are for scaling query workloads (performance)
    - Can be thought of as data caches
    - Get data from core through a transaction log
      - Perform action > write log to disk > ship log to read replicas
    - Poll for the transaction log from the core
- You should have one more instance than you think you need
  - One instance is the master and coordinates writes among core servers
- Causal consistency means that things are linked together
  - When operations occur, they’re seen by all instances in the same order
- Discovery protocol is how core servers join the…
- Read replica membership
  - When a new one first connects to the core and announces itself, it gets added to a shared whiteboard
    - Whiteboard is used to keep track of the read-replica
    - Whiteboard is used for routing requests
- Traversal API is a way to manually walk from one node to another
- What can cypher queries be used for
- “One of the things that makes neo4j have the level of performance that it does when querying in depth across many layers is because it builds an index on every object”
  - From a memory perspective, memory is important
- Enriched model + property graph model
  - What does everything on it mean?
- What is it and how is it used? (From Neo4J algorithms link)
  - Page rank
  - What path/shortest path, how does it work?
  - Which of these types of algorithms is most appropriate?
- In Neo4J example: 
  - CQL borrows a lot from SQL
  - Matching on patterns between nodes and relationships
  - Wouldn’t expect able to write entire query from memory
    - Be able to identify CQL in a line-up
- Worst to ask, if I gave you CQL what does each part do?

## DynamoDB

- What is AWS? and What is Cloud? represent the same thing (low level and high level, respectively)
- What is AWS?  **READ THIS SLIDE VERY CAREFULLY** Top down:
  - Infrastructure
  - Platform
  - Software
- Cloud based and hosted on AWS
- Developed to be Amazon’s shopping cart
- They can give you as much scale as you can afford
- Features:
  - Key:Value architecture
  - Point in time backups
  - Encryption
- **STUDY “WHAT DO THEY USE IT FOR”**
  - High throughput
  - Performance aspects
  - Being able to handle millions and millions of transactions per second
- When you write to Dynamo, that data sacrifices consistency (usually <1s)
- Global Table SLA how AWS lets you manage data being replicated across regions 
  - 99.999 vs 99.99 for Standard Table SLA
- Multiple datacenters in each AWS region
  - Can increase uptime by spreading global tables across regions
- Auto-Scaling is a way for more resources to be automatically provisioned based on current load
- Adaptive capacity is not the same as auto scaling
  - You borrow capacity from one partition that is light on requests
- DAX In Memory Accelerator is essentially just a caching feature
- Only new tables can be encrypted
  - Both the underlying table and the index are encrypted