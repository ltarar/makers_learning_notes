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

-----

## Encapsulation with the Constructor and Prototype Pattern Workshop
## 02/04/19
## Coach: Katerina

https://github.com/makersacademy/skills-workshops/tree/master/week-5/encapsulation_with_constructor_and_prototype_pattern

- Learn new language and its patterns;
- Getting visibility to understand a pattern;
- Encapsulating code with constructors and prototypes; 
- Using this pattern to encapsulate code;

**Encapsulation**

Definition: Hide implementation from the outside world! Protective barrier for the code

Grouping behaviour with the data (state) it operates on.
Hiding the details of data and implementation from other units.

**Ruby Implementation**
In Ruby, we can make methods of classes `private` to hide it from other classes (external objects).
We don't want too many relationships between classes, as too many dependencies etc.
Usually, you'll have one manager to manage the objects to abstract the code.

If you are finding yourself using a lot of methods from another class, it's a sign that those methods may belong to the original class.

**Console**

JS console is just like Ruby's `irb` - REPL.

```javascript

//using constructor pattern to create object and add state to object

function Adult() {}
adult = new Adult()

//Adult {}
//Every object in JS inherits from prototype object
//Adult {}__proto__: Object - JS automatically adds a proto property onto the object


function Adult(age) { 
  this.age = age; 
  }
adult = new Adult
//Adult {age: undefined}
//age: undefined
//__proto__: Object


adultTwo = new Adult(30)
//Adult {age: 30}


//using prototype pattern - now we will encapsulate behaviour to an object

Adult.prototype.increaseAge = function() {
  this.age += 10;
}

//If you call the function without the argument, the function is still available for the object
adultTwo.increaseAge

/* ƒ () {
  this.age += 10;
} */

adultTwo.increaseAge()
//undefined - as we are not returning anything

adultTwo.age
//40

//JS - important to do explicit return
//If we are changing the state, we may not need to be explicit in the return


```

- Functions need to be named consistently
- Underscore convention

- In JS, we can wrap functions inside other functions
- Use capital letter to define the object
- Other functions will be in lowercase


- JS - Property-Value pairs
- Objects have properties/attributes








