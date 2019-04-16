## Week 7
## w/c 15th April 2019

## Kick Off (Ed)
## 15/04/19

By the end of the week all developers can:

- **Build a front-end app in Javascript**
- Work competently in Javascript
- Reason about asynchronous behaviour in Javascript

**Afternoons - Notes app** - pair programming

**Practicals**
- JS Objects & Prototypes
- Closures
- Reading beyond your level
- Reasoning about JS using frames

**Skills workshops**
- Javascript module pattern

**Goals for the week**

**Primary goal**
By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

**Can you write a frontend, single page app using only pure JavaScript?**

**Secondary goal**
- To help you towards your primary goal, your secondary goal will be to produce a diagram of how all the parts of your notes app interact.

- Draw the diagram on Tuesday.
- Each morning, update the diagram with your latest understanding.
- Your diagram might include: model, view, controller, external API, browser page, unit tests, feature tests, static server, node, XMLHttpRequest, the DOM.

**Concepts**
- Frontend, single page web apps.
- Events and event handlers.
- Manipulating the Document Object Model (DOM).
- Ajax.
- Frontend templating.
- Frontend routing.

- **Writing a frontend, single page app using only pure JavaScript (further JS)**

## Code Review - Bowling Challenge / Testing tips
## 15/04/19

**Testng**
- Think about the inputs and things you can control e.g Math.random
- Inject things you can't control, so that you can control it in your test
- Hard-coded dependency is hard to test - so better to pass in Math.random as a dependency injection into a function in order to stub its behaviour for testing purposes

**Outside-In Approach**

**Definition of Done:**
- Feature test - fail, pass, refactor;
- From this feature test, we spin up some unit tests with assertions we need for it to meet the DoD for feature test
feature test - it is good to spend some time on the feature test so you can reach the DoD quickly

- Only commit when feature test passes

Uncle Bob - TDD bowling challenge walkthrough

Behaviour-driven development / test-driven development

-----

## MVC Pattern Paradigm
## 15/04/19

Model - View - Controller:
- How this applies to a single page JavaScript app
- Request-Response Cycle

**Single page app/JS:**
- Think about events - e.g. on these things do certain things
- Controller listens to events

It has the:
- HTML (events), 
- Models - connect to the database through the model (can request data from another server via HTTP or database via the cloud)
- Views
- Controller (event listening) all happening in the browser

>Here is a useful diagram :)

- Test framework - writing your own assertion library
- Use node.js to build a single page app

- Different MVC patterns and where they apply?
  e.g.
  - single-page JS front-end apps;
  - Servers (API endpoints pointing to resources);
  - MVC pattern is backend (server-side)
  - MVC pattern in frontend(client-side)
  - Many MVCs linking to MVCs, linking to MVCs etc.

- `app.js` file is the controller

- every application needs a runner or app.run to run it (MVC framework)