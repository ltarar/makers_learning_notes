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

```

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







