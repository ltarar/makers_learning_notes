## Week 4
## w/c 25th March 2019


## Code Review Workshop - Reviewing the RPS Challenge
## 25/03/19
## Coach: Katerina

**Coach Advice**

- Breaking down feature tests to make it into bitesize chunks is a helpful starting point for TDD process
 e.g. different things the user can do

 Not just playing a game of RPS, think about the steps of all the things that need to happen for the users to achieve something to break down the features a lot more

- Global state is bad! :( as issues can crop up - don't use global variables - need to encapsulate the classes
- You can use 'Sessions' to capture the information you need to persist in your app

- Taking a step back to **plan** your approach, maybe draw wireframes to prototype how the app might look like, this can guide your feature tests

- You can also do a **'Spike'** which is where you write the code first, delete the code/put it somewhere and then write the tests to drive the code

- Instead of deleting the code, you can do a `git stash` to stash the code in it's current state (but be careful), alternatively, you can use a `branch` to brainstorm some of the code to be used later if you want

- Aim for Slimmer controllers, rather than Fat Controller: Having too much in the controller is a sign there is too much going on. You can refactor this logic out into the model layer (classes) to handle this heavy logic. It's a good idea to check if behaviours can be put elsewhere.

- Refactoring: Look at your code for quick wins:

Here are some quick wins:

- SRP
- Naming
- Method length

But it is a balance, as it is easy to over-refactor. It depends on what you want to achieve.

RED - GREEN - REFACTOR process :)

**Build refactoring into the workflow is useful :)**

- Code quality and time estimation in project management

- Look and feel is not a priority at the moment, but it is a great skill if you want to focus on it

## Week 4 Kick Off!

Goals for the week:

1. Build a simple web app with a database
2. Follow an effective debugging process for database applications
3. Explain the basics of how databases work (e.g. tables, SQL, basic relationships)


Challenges:
Afternoons - Bookmark Manager
Weekend - Chitter

Practicals:
Entity Relationship Diagrams
SQLZoo

Skills workshops:
CRC Cards
REST

This week, you will build a web app that stores web bookmarks in a database.

**Primary goal**
By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

**Can you build a web app that uses a database?**

**Main focuses for this week:**

- Agile and TDD
- Engineering and 'Dev Recipes'
- Databases
- Tooling

Here are the priorities:
https://github.com/makersacademy/course/blob/master/bookmark_manager/learning_objectives.md


Pair Programming this week:
https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md

- Dynamically managing data in a database
- Make sure you understand what the dependencies are doing e.g. read about the RubyGem - what is the benefit of bringing in the 3rd party code

- Relational models in database (tables related to each other)

- Group the data (id)
- Understand what the data is doing


- Class responsibility: modelling the class and it's method and who it collaborates with
- Associations: how two objects are related

RSpec - a Domain Specific Language (DSL)

- **Postgres**
- Management system for your database

**We will use an interactive shell to interact with database server**
- The interactive shell is: PS-SQL
- SQL: is also a domain specific language 

**Connecting Ruby to the Postgres database**
- PG Gem allows you to establish the connection between your Ruby code and your Postgres database
- Enables you to write SQL in your Ruby code - awesome stuff!! :)
