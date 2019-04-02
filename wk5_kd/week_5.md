## Week 5
## w/c 1st April 2019


## Code Review Workshop - Reviewing the Chitter Challenge
## 01/04/19
## Coach: Katerina

**Coach Advice**

- Your feature tests may be failing for a while, until you address the unit tests, this is ok :) - don't worry!
- Development process:
  - Incorporate planning time to break down the requirements and process, diagram it out :)
- Apply debugging process and taking a step back for fresh thoughts;
- Think about your model of the data flow :)
  Diagram and model - model / view / controller data flow :) - validate your model with a coach :)
  Use an approach that works for you :) - sketch it out, draw it out, use a wireframe if you need to;

- Plan and validate with a coach :)

WHere do I setup database for continous integration tools e.g. Travis:

- Travis:
  - Rake:
    Task manager - set up a database
      - Abstract the logic into tasks e.g. we don't want to manually setup the db, we want to script it up (into tasks), so that we maintain the state of the db in different environments for consistency and time efficiency;

- Environments:
  - Local
  - Github (stores code); GIT is the version control technology
  - Continous Integration: This is a separate environment, needs a db too;
  - `travis.yaml`

Travis CI is not ultra important right now...phew! But worth looking into :)
  
  Need to manage environments

----

## Week 5 Kick Off!

### Goals for the week:

By the end of the week all developers can:

- Test drive a simple front-end web app with Javascript
- Follow an effective process for learning a new language

https://github.com/makersacademy/course/blob/master/thermostat/README.md


Challenges:
Afternoons - Thermostat
https://github.com/makersacademy/course/blob/master/thermostat/README.md
Weekend - Bowling

Practicals:
Learning a new language by translation
JS Objects & Prototypes
Closures

Skills workshops:
Encapsulation with the constructor & prototype pattern
Following the flow and getting visibility
Following the Ajax request/response cycle
Callbacks and following the flow of control

Resources:
Count app: A tiny JavaScript/Sinatra app that mimics the architecture of the Thermostat app. A useful guide for developers to use for concepts and idioms.

