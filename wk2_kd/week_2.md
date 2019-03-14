## Week 2
## w/c 11th March 2019

## Code Review Workshop - Reviewing the airport_challenge
## 11/03/19

 ## Coach Advice
 - Sophie Gill
 
**Why do code reviews?**

- Receiving feedback / ask questions to get feedback
- Giving feedback
- Looking at different ways of solving the problem
- Help each other learn
- Practise letting go of our code
- Sharing code with others
- For larger codebases, important to maintain code quality

**Code Review Checklist**

The checklist can be found here:
https://github.com/makersacademy/course/blob/master/pills/code_review_checklist.md

The how to do a code review guide can be found here:
https://github.com/makersacademy/course/blob/master/how-to/code-review.md

More advanced material for preparing for a code review:
https://github.com/makersacademy/course/blob/master/pills/code_reviews.md


**Code Review Workshop Format**

- 30 mins - code review
- 30 mins - feedback / implement changes based on feedback

**Reviewing the airport_challenge**

Code Rubric provides a guideline to review the airport_challenge code:
https://github.com/kimdiep/airport_challenge/blob/master/docs/review.md

- Code review can be done by adding comments against commits which can be viewed via the Makers' pull request

**Feedback Received**

From a peer, Masha(March 2019):

**What went well?**

- Good README.md file and user guide; shows good understanding of breaking down the problem from requirements

**What didn't go so well?**

- Code repetition and understanding of use of attribute reader / accessor
- Test file can be structured better with 'before' 'do' and use of 'contexts'

**Improvements for next time**

Feedback I want to implement to help me learn to do things better:

- Design patterns / Best practices : Familarise with these
- Learn about attribute readers & accessors and how to use them to simplify code
- Put my spec test files and structure them better into 'before 'do' and use 'contexts' to group 
test cases together for clarity
- Understand public / private methods

**To improve my project, next time I would like to:**

- Implement tests for edge cases outlined
- Get test coverage metric from 99.28% to 100%
- Put my spec test files and structure them better into 'before 'do' and use 'contexts' to group 
test cases together for clarity
- Refactor some code to use predicate methods
- Consider removing duplicate functionality of 'stormy?' method on both the airport and 
weather objects and delegate that responsibility to the weather object and amend the test
case to account for this change


## Group Discussion Questions & Notes

**Group questions raised**

- How to use doubles:
 -  Testing randomness
 -  Doubles vs. Object.new
 -  Different behaviour in different tests

 - Approach to modelling problems 


## Coach Advice
 - Sophie Gill
 
 - Keep it simple! Alway use the simplest solution to solve the problem first and then build on it

 - Start to think about having another interface to handle the user input (e.g. in the case of building a Ruby application), no need to use `gets` and `puts` as it is not a command-line impact

 - Check back at the requirements, in this exercise, keep the focus on logic

 - SRP: What is the responsibility of this class? What is the responsibility of this method?

 - Avoid methods / classes that only delegate, the code has to do something useful (it has a responsibility/job to do, e.g. 'checking'
 
 - Thinking from the user-perspective; go back to user-stories

 - Avoid the 'god' class that does everything

 - Find the balance of when to delegate jobs and when to encapsulate

 - Difference between testing state vs. testing behaviour
 
  Don't want to reach into the class to check capacity of airports, e.g. no need to check the capacity of airport, this `capacity` attribute shouldn't be accessible to external classes (keep the class properly encapsulated)

    - Don't want to make capacity airport

    - Want to check how many planes to land > you are checking the behaviour

- Be able to control/be careful about which attributes you allow an external application / class to change/influence, you want the behaviour of your class to be predictable (need to encapsulate the class) and allow holes where you need to test a behaviour

- Dependency injection to inject a double to isolate your tests!

- Stubbing randomness is useful to isolate tests

- Practise different approaches to modelling

```ruby

# The order of the arguments passed in if important
#Handling dependency injection

def initalize(capacity: , weather:)
  @capacity = capacity || 20
  @weather = weather || Weather.new
end

Airport.new(weather: double, capacity: 2)


```

- Stubbing randomness: learn how to do this

-------------------------

## Aim for this week

- Write code that is easy to chahnge
- Test-drive code
- Breaking classes into smaller objects (how to use encapsulation and delegation in design)

**By the end of the week all developers can:**

- Use all of week 1's skills (don't underestimate the importance of this)
- Break one class into two classes that work together, while maintaining test coverage
- Unit test classes in isolation using mocking
- Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
- Review another person's code and give them meaningful feedback

Some developers may notice they are completing the work easier than their peers and ease off the effort here. They should be identified and pushed to have their code reviewed to a professional standard to make best use of the time available.

https://github.com/makersacademy/course/blob/master/week_outlines.md

**Polymorphism** - Not a priority for this week, but useful to look at

Understand and apply stubbing in test cases

-------------------------

## Dependency Injection
## 12/03/19

*Dependency Injection*
This morning's suggested resource covers dependency injection. You'll need to get comfortable applying this technique in order to make sure your classes, and therefore your tests, are isolated.
Here is the practical exercise: https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/dependency_injection.md


Notes:

- Instead of hard coding the dependency, we 'inject' it into the class via the initializer.

------

## Pair Programming Feedback


**Feedback Received**
**11/03/19**

From a peer, Masha(March 2019):

Hi Kim! Thank you for the wonderful session yesterday - it's been really fun!

What went well: 
- You are great in reading instructions and do research before doing any work - makes overall process much smoother
- You know how to explain things 
- You appreciate breaks
- You check on your pair's wellbeing, I personally keep forgetting that
- Great TDD skills

What did not go so well:
- Actually, can't think of a single thing but I feel like both of us need to improve our understanding of doubles etc
- Theoretically, if were slightly more serious we could've finished the whole thing but I'd rather have fun tbh!

Overall - one of the best pairing experiences I've had so far!

--------

**Feedback Received**
**12/03/19**

From a peer, Alex (March 2019):

+ good to help me when im stuck
+ careful thinking solves some errors which i miss out
+ quick to point out the issues i had which were my bottleneck 

- abit lost at times, maybe have some direction 
- have a moment to try to think of right approach and implement rather than trying everything

---------

## Domain Model Diagramming Workshop
## 13/03/19

### Questions:

Q. UML has lots of models: should we know about all these different types?
Are there most commonly used ones?
 How complex should a model be?

 **Coach Advice:**

Link to resources: https://www.ibm.com/developerworks/rational/library/769.html

A diagram should be useful for communicating ideas. The diagram can be very detailed, but if it's not communicating effectively, then there is no point going to the nth degree.

- Depends on the domain and concept / depends who you're presenting the diagram too

- Keep it simple! Break it down


- Process diagram is pretty cool

Sequence Diagram
- Actors / classes for OOP (also can represent modules in other languages)
- Messages (Methods)
- No need to think about the user interface (the user is outside the scope of the domain)

- *Testing behaviour over state* v useful


- Are there any useful tools for diagramming?

Choose the most appropriate tool for the problem you're trying to solve

https://www.draw.io
> UML template

**Coach Advice:**

- Don't use diagramming in place of TDD; diagramming is a useful way of fleshing out the user stories etc.

*Key points from the session:*
- Class diagrams capture the messages a class can receive
- Sequence diagrams the messages sent from one class to another, and the value returned
- Messages are verbs, classes are nouns
- The diagrams capture different things - neither by themselves gives a complete picture of the application

*Going further*
- Try turning your diagram into a working application, integrate TDD into this process if you have time.
- Create a diagram of your Boris Bikes, Airport Challenge or Oystercard application

------

## Makers - Feedback Workshop 
## 13/03/19
## Dana

**What is feedback?**

>Information used as basis for improvement

1. Shift your perspective
  It is just feedback
  Trust
  Feedback is kind
2. Empowered receiver
  - help us undestand ourselves
  - practice assertiveness, boundaries etc
  - flexibility
3. Know thyself
Truth triggers
relationship triggers
identity triggers

wrong-spotting

we all have blind spots

**Building resilience**
- understand your profile
- what's your happiness set point?
- way to increase your happiness baseline (mindfulness!!!!)

**Swing**

- How deeply you emote (high swing LOL)

**Recovery/sustain**

- How long does it take you to return to your baseline happiness?

- empathy to others who are different to you

4. Understand feedback

Appreciation
Evaluation
Coaching

5. Use a framework

A - Actionable
S - Specific
K - Kind


-----------

**Feedback Received**
**13/03/19**

From a peer, Tome (March 2019):

"You were really engaged and open to trying different approaches. You were also enthusiastic even though you had already done all the exercises, it felt like we were learning together and on the same page the entire time."

----------

## Delegation Workshop
## 14/03/19
## Sophie Gill

https://github.com/makersacademy/skills-workshops/tree/master/week-2/oop_3


**Learning objectives**
1. Describe "delegation" as "one class telling another class to do something and the other class encapsulating how to do it."
2. Explain what is meant by the advice "delegate, delegate, delegate".
3. Implement OOP delegation.

- Public interface enables control to access certain methods of a class

**Encapsulation**
  - Private (encapsulates) characteristics of the class ; we don't want to change these characteristics from outside of the class


  ```

  class Ceo
  ## Coo is injected as a dependency
  def initialize(coo = Coo.new)
    @coo = coo
  end

  def make_company_efficient
  ##Ceo calls the .find_company_savingsof the coo class
    @coo.find_company_savings
  end
end

class Coo
## hr_manager is injected as a dependency
  def initialize(hr_manager)
    @entertainment_budget = 1000
    @hr_manager = hr_manager
  end

  def find_company_savings
    reduce_entertainment_budget
    ##COO calls the .reduce_payroll method of the hr_manager class
    @hr_manager.reduce_payroll
  end

  private

  def reduce_entertainment_budget
    @entertainment_budget -= 200
  end
end

class HrManager
  def initialize(employees)
    @employees = employees
  end

  def reduce_payroll
    @employees
      .select { |employee| employee.performance < 7 }
      .each(&:fire)
  end
end

class Employee
  def fire
    @fired = true
  end

  def performance
    rand(1..10)
  end
end

employees = [Employee.new, Employee.new]
hr_manager = HrManager.new(employees)
coo = Coo.new(hr_manager)
ceo = Ceo.new(coo)
ceo.make_company_efficient

```

**Questions**


**Why pass dependencies all the way down the code?**

Dependency injection opens up the ability for polymorphism:
- Enables different types of objects that respond to the same object


**Why did we inject hr_manager into the COO without `HrManager.new?` Is this a new instance we are passing in?**

- It is just another way of writing the dependency injection like so: 

`lydia = HrManager.new(employees)`
`brad = Coo.new([:table, :chair], 1200, lydia)`


**Coach Advice**
- We should try and keep our classes isolated to make it easy to change

- Set a default for the dependency injection where possible in case you forget to instanstiate the class which is being injected into the class you are creating (it will default to the default value)



-----

Notes:
- Delegation - one class instructing another class to do something
- Encapsulation - a class includes the state and behaviour to do something
- Aim to extract the `terrible` example into classes, for `great`
- Keep your feature tests passing as much as possible
- Dependency Injection enables delegation, while keeping classes isolated
See you back at the second floor at 11:30am. I'll be upstairs for questions during the exercise.

## Plenary

**Questions**

**Coach Advice**

- If we inject the class itself, we can work with as many instances as we would like

Example:

```ruby
def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
end

```

- Can wrap instance variables into methods

Here's an example:

```ruby

def all
  @todos
end

```

- You can interact with the class itself by the dependency injection
- Notice in the example below, `TodoListPrinter` is not instantiated

Rule: If there is no state, there is no need for instances; in this example, `TodoListPrinter` just has behaviours we want to utilise

- `TodoListPrinter` is not a class, it is a module.

Here's the example: 

```ruby
def to_string(todo_list_printer = TodoListPrinter)
  todo_list_printer.to_string(all)
end

```

Here's the example:

In the example below, `TodoListPrinter` is delgating the part of the activity to `todo_printer` which is why it requires the `./todo_printer` on the first line of the code.

```ruby
require_relative "./todo_printer"

module TodoListPrinter
  def self.to_string(todos, todo_printer = TodoPrinter)
    todos.each_with_index.map { |todo, index|
      todo_printer.to_string(todo, index + 1)
    }.join("\n")
  end
end
```

- Modules can have private methods

```ruby
module TodoPrinter
  def self.to_string(todo, index)
    description = todo.description
    complete = todo_completion_to_s(todo)
    "#{index}. #{description} #{complete}"
  end

  private

  def self.todo_completion_to_s(todo)
    todo.complete? ? "complete" : "not complete"
  end
end
```

**using a similar names in related delegation activities can help to trace more complex code delegation**

No need to be fixed to one way chaining, objects can be passed around


Advice: Use `puts` or `p` to check what each component is to see how they're connected


**Q.
How do we manage the RSpec testing at the same time as migrating functionality and delegation?**

A.
```ruby
#Here, we are handling the todo dependency by creating a todo double and a todo_class double, with a mock of `new` todo

describe TodoList do
  let(:todo) { double(:todo) }
  let(:todo_class) { double(:todo_class, new: todo) }
```

- Ordering is important in mocks on RSpec files

```ruby
 describe "setting a todo to be complete" do
    it "sets a todo to be complete", focus: true do
      subject.add("say hi", todo_class)
#Set the expectation on the mock in the line below, before you can test the behaviour of the delegation
#The double needs to know that something needs to happen before you conduct the action (ToDoList.set_complete(0))
      expect(todo).to receive(:set_complete)
#action is conducted to trigger set_complete. testing that the `todo` is receiving the delegation that we are expecting when we do `ToDoList.set_complete(0)`
      subject.set_complete(0)
    end
  end
  ```

  In the example below, it looks as if we are testing state rather than the behaviour. This is not ideal. It is actually better to test the behaviour. 


  ```ruby
  describe "adding a todo" do
    it "stores a todo with a description" do
      expect(todo_class).to receive(:new)
      subject.add("say hi", todo_class)
      #On the line below, we are refering to .to eq (todo) which is testing the state
      expect(subject.get(0)).to eq(todo)
    end

  ```

**Top tips:**
  - Always better think about testing what the method returns and test that result
  - Testing behaviour is preferred over testing the state
  - Question to think about: What is the most useful thing a method can return from action?



**Conclusion:**

 - Of course, there are different approaches to testing - there are many approaches and strategies in the industry

 - The sort of pattern that we did in the exercise gets us closer to the Single Responsibility Principle (SRP)

 - Useful to get to reusable pieces of code

 - Can delegate through different levels of the chain, doesn't have to be a top-down approach

 - Think about: What is the result of calling a method? What is the result of calling the method in different circumstances? 
 
 e.g. adding a single 'todo', adding more than one 'todo

-------

##Pair Programming Feedback

**Feedback Received**
**14/03/19**


to do:
Directory structure:

wk_x:

Folder: Overview:
  `week_overview.md`
  `workshop1_notes.md`
  `workshop2_notes.md`

Folder: Practicals:

- Sub-folder
`pratical_write_up.md`

- Sub-folder
`pair_programming_notes.md`

Folder: Skills_workshops:

- Sub-folder
`skills_workshop.md`
- Sub-folder
`skills_workshop.md`

It { is_expected.to respond_to(:bike) } is the short way of writing 
it “accepts the method bike” do

expect(DockingStation).to respond_to(:bike) 
end

It gets rid of description(accepts the method bike) and replaces do end with {}

And when we expecting an error we use {} because we running a block of code and expecting the message in the console. If you use () for this the error will also be raised but rspec would not expect it

{} is the block (or do...end) while () has argument inside

Run this {block of code} and expect something
Vs 
Use this (argument) and expect something























