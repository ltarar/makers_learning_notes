## Week 3
## w/c 18th March 2019

## Code Review Workshop - Reviewing the takeaway_challenge
## 18/03/19

 ## Coach Advice
 - Katerina
 
**Why do code reviews?**

- How do you review code? Where do you start?

  - README - see the overview
  - Ran tests / look at test files
  - Commit / commit messages for approaches - it's a story of what you're doing

Questions to think about:

  - Is the behaviour of the class match what the class name is?

- How do you identify quick wins/what are these?

  - Cloned code and ran `rubocop`; use a linter
  - Check the test coverage
  - Naming of the classes / naming of the methods (this helps to make the code more readable)
  - Single Responsibility Principle: Methods only do one thing
  - Methods are short (refactoring is good, but not at the expense at being explicit e.g. clear 3 lines of code vs. really obscure 1 line of code)

- Has this person's repo aligned to a goal?

  - Put some description inside the pull request comments

  - Demonstrate TDD process in the code commits to show the stages of the process (commit before refactoring)
  Refactoring can be a separate commit

  - e.g. display good TDD process
    Feature Tests > Unit Tests

  - Have clear commit messages - be specific and concise
  - Your test name can be your commit message
  - Commit when test has passed; not good to commit failing code in a shared repo


**Test behaviour, not state :)**
  - State: is testing the attributes of something directly i.e. what it is
  - It is ok to test the attributes of the class initially, but then build on it by writing tests to test the behaviour of using the attributes e.g. on a method
  - Rule of thumb is to call a method and write the expectation of the test for output
  - Sometimes by calling a method, you are altering the state, so you would need to check that the attributes (state) has changed

  - When you're using dependency injection, you would use a double of the class you injected in and stub out it's behaviour by returning specific values for the purpose of testing your main class; you would trust that the unit tests of the injected class would have the job to check it's behaviour specifically in detail in a separate test suite

  - In testing, don't want to be coupled to the implementation; we want to focus on the behaviour
  e.g. In the airport challenge, DEFAULT_CAPACITY can be set as anything ; we can set the DEFAULT_CAPACITY as 2 for a specific test case. If this was hard-coded in as 100, then we can't simply land 100 planes just for a test case, this makes it difficult to test.

**Your code should be easy to change**
- Can the feature be extended for new functionality? Better not to hard code things in to make it easy to change
e.g. use dependency injection perhaps?
  e.g. the menu can be injected in, this enables menu to be in any data format, any cuisine etc.


**Reviewing the takeaway_challenge**

Code Rubric provides a guideline:
https://github.com/makersacademy/takeaway-challenge/blob/master/docs/review.md


- Code review can be done by adding comments against commits which can be viewed via the Makers' pull request

---

## Aim for this week

  https://github.com/makersacademy/course/blob/master/intro_to_the_web/README.md


  By the end of the week all developers can:

- Build a simple web app
- Follow an effective debugging process for web applications
- Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
- Explain the MVC pattern

### Primary goal**
By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

Can you build a web app?

### Concepts and skills for the week**

**Concepts**
The relationship between a client and a server.
How HTTP is used to send information over the web.
RESTful APIs.
The request/response cycle.
Web templating with HTML/CSS.

**Skills**
Debugging programs that use multiple languages.
Using a framework (Sinatra) in your code.
Structuring the code for apps that have user interaction and visual output.
Testing apps that have user interaction and visual output.
Tracing data between the browser and server.

**Structure of the challenges**
Some exercises to get you familiar with Requests, Responses, and HTTP
A project to get you familiar with Servers, params, sessions
Some exercises to get you familiar with Capybara
An extended project to wrap it all together

### Request/Response Cycle

**Client**
e.g. Browsers:
- Google Chrome

Make a request to a URL

**Server**
- Fulfils that request
- Sends back the response

---

I really like these comics:
https://howhttps.works/
https://howdns.works/ep1/

---

