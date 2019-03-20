## Week 3
## w/c 18th March 2019

## Code Review Workshop - Reviewing the takeaway_challenge
## 18/03/19
## Coach: Katerina
 
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

## Process Modelling Workshop
## Coach: Alice
## 19/03/19

https://github.com/makersacademy/skills-workshops/tree/master/week-3/process_modelling

0. Goals Recap

- Building a simple web app
- Follow an effective debugging process for web applications
- Explain the basics of how the web works
- Explain the MVC pattern

Client - Request - Server - Response - Client

Client - e.g. Browsers

Server: It is a piece of software that runs on a computer that holds info

Data centers

Web Development:
- Web development happens in the server most of the time, but sometimes where are things that happen on the client-side and not the server-side
- If I get the request, what response do I give back?

Client or server-side?
JS is the only client-side programming language, but possible to compile another language into JS for use in client-side
JQuery is a JavaScript library

**Process Modelling**

- Define process modelling as a tool to describe and understand a process.
- Use process modelling to further your understanding of HTTP requests and responses.

## Homepage

```

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Req/Res</title>
  </head>
  <body>
    <ul>
      <a href="list.html">a list</a>
      <a href="cats.html">a cat pic</a>
    </ul>
  </body>
</html>

```

1. User enters URL - https://makers-cats.herokuapp.com/
2. GET request
3. Server looks for resource
4. Writes a response
  Header
  Response Headers
  The Body (HTML)
5. Browser reads the response
6. The user sees the site

Web:
  HTTPS
  HTML

  HTTP/1.1 200 OK
    1.1. is the version
    Status Code 200 - OK

https://www.restapitutorial.com/httpstatuscodes.html
The starred codes are the most common ones :)

The browser:

1. Parse - e.g. Finding HTML tags and what they mean
2. Render - creating some images / boxes / colours
3. Paint - putting it on the screen


There many be a queue of requests!


Some testing tools use Headless Browsers
- Where tests can run on the background

For example, Selenium testing tool:
Selenium Headless Browser Testing

Reference:
https://www.guru99.com/selenium-with-htmlunit-driver-phantomjs.html

Selenium Web driver is a web automation tool which enables you to run the tests against different browsers.

What Is Headless Browser?
A headless browser is a web-browser without a graphical user interface. This program will behave just like a browser but will not show any GUI.

Some of the examples of Headless Drivers include

- HtmlUnit
- Ghost
- PhantomJS
- ZombieJS
- Watir-webdriver

- Header and body in POST request, as well as GET request

- In the GET request, there is no body
- In the POST request, there is data in the body

---

## Coach Advice
## Alice

This morning we covered the *HTTP request/response cycle* in our workshop.
- We talked about what the *web* is and what what *servers* are (software running on computers that store resources)
- We talked about how to *use the network tab* in your navigator's dev tools to see what requests are sent on the network
- We created some *diagrams* and role played *browser <-> network <-> server* interactions
- We saw that *each resource needs one separate request*
- We learned that requests and responses have two parts (*header and body*)


Also, as a reminder, here are the goals for this week. Whenever you are working on something this week, try to think about which one you are progressing on.

- Build a simple web app
- Follow an effective debugging process for web applications
- Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
- Explain the MVC pattern

---

## Debugging Workshop 2 - Debugging Web Apps
## Coach: Alice
## 20/03/19

https://github.com/makersacademy/skills-workshops/tree/master/week-3/debugging_2

- Tightening the loop and getting visibility (on the web).

**Learning Objectives**
1. Define 'debugging' as the process of eliminating bugs from an expected program output
2. Explain the mantra 'Tighten the loop; Get visibility'
3. Use the mantra to resolve bugs across the web stack.

### Tighten the loop
### Get visibility

**Different components:**
- Client-side
- Server-side


**Server-Side:**

Assets/Static/Public e.g. images/CSS etc.
Model e.g. `.rb` files `/model/`
Views e.g. `.erb` files, HTML, Ruby
Controller e.g. `app.rb` it is in charge of the routing

Gems:
  - config.ru
  - Gemfile


**Naming Rules of Thumb:**

- Naming of classes should be singular rather than plural
- Noun
- Come from the domain


**How to tighten the loop:**

1. Understand the whole journey of the code execution (requests/responses)
2. Request > Controller (look at the controller for what is triggered by GET/POST requests)
3. Controller then goes to the view and processes it. The `erb` method is called (we pass the `.erb` file as the argument to `erb` method), processes and return it

e.g. 

```ruby

#get is the sinatra method
get '/' do
  erb(:index)
  #return erb(:index)
end

```

It is possible to go back and forth between the model and the controller and views e.g.

Request
Controller
Model
Controller
Views
Routing
Response
etc.

4. HTML is sent back to the user as a response


**Get visibility**

- Use `p`
- In the server logs

- Shotgun (works with a `config.ru` file): the logs might not be useful all the time so take caution when debugging
- When debugging use `ruby app.rb`

- Look at error
- Error code: 500 - Internal Server Error

Here are the status codes:

2xx OK
3xx Redirection
4xx bad request
5xx server problem

In Sinatra, you can see the `backtrace` on the website when you try it out to help you get visibility on the error

**Get visibility on the test files - Capybara**

It is also useful to get visibility without having to go through the whole app by using Capybara.

- Add `save_and_open_page` in the feature test file (use Capybara to have an idea of the user journey of what is happening at a certain point)

**Get visibility on requests from the server logs**















