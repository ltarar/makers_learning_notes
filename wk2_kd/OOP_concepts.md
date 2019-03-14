### Ruby Inheritance, Encapsulation and Polymorphism

**Reference:**
https://devblast.com/b/ruby-inheritance-encapsulation-polymorphism

### Inheritance

- Relation beween two classes
- Child class inherits all features of its parent class
- Methods from the parent can be overridden in the child and new logic can be added.

```
#Parent class
class Document
  def initialize; end

  # logic to deal with any document

  def print
    # logic to print any kind of document
  end
end

#Child class
class XmlDocument < Document
  # logic to deal with any document

  def print
    # logic to print a xml document
  end
end


```

- A class can only inherit from one class

- Possible to replicate multi-inheritance through use of modules e.g. mix-ins

```

module Presenter
  def to_html; end
end

class XmlDocument < Document
  include Presenter
  # can call the method to_html
end


```

### Encapsulation

> Encapsulation is the packing of data and functions into a single component.

- Internal resepntation of an object is hidden from the outside
i.e. only object can interact with its internal data

- Public methods: created to open a defined way to access the logic inside an object (i.e. opening up some holes to access logic)

Benefits of encapsulation:

1. Reduce system complexity
2. Increase robustness by decoupling its components

- Able to change value of instance variable without having to know about how the class is implemented

e.g. change value of document name of the Document class

```

class Document
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def set_name(name)
    @name = name
  end
end

```

```
d = Document.new('name1')
d.set_name('name1')

```

## Polymorphism


>In programming languages and type theory, polymorphism (from Greek πολύς, polys, “many, much” and μορφή, morphē, “form, shape”) is the provision of a single interface to entities of different types.

- Single interface for different forms/shapes

```

class Document
  def initialize
  end

  def print
    raise NotImplementedError, 'You must implement the print method'
  end
end


```

```
class XmlDocument < Document

  def print
    p 'Print from XmlDocument'
  end

end

```

```
class HtmlDocument < Document

  def print
    p 'Print from HtmlDocument'
  end

end

```

```
XmDocument.new.print # Print from XmlDocument
HtmlDocument.new.print # Print from HtmlDocument

```

- Same message sent to different objects and got different results
- `print` method: the single interface to different types of entities (XmlDocument, HtmlDocument)

### Encapsulation
Reference: https://en.wikipedia.org/wiki/Encapsulation_%28computer_programming%29

1. Language mechanism for restricting direct access to some of the object's components - MAIN DEFINITION

2. Language construct facilitating bundling of data with the methods (or functions) operating on that data (Information hiding)

>used to hide the values or state of a structured data object inside a class, preventing unauthorized parties' direct access to them. Publicly accessible methods are generally provided in the class (so-called getters and setters) to access the values, and other client classes call these methods to retrieve and modify the values within the object.

- Modules offers a similar form of encapsulation

- used to hide data members and member functions. 
- Under this definition, encapsulation means that the internal representation of an object is generally hidden from view outside of the object's definition. 
- Typically, only the object's own methods can directly inspect or manipulate its fields. 

Benefits of encapsulation:

- Hiding internals of the object to protect its integrity

- Avoids internal data of the component to be changes into an invalid/inconsistent state

- Limit inter-dependencies between software component

### Useful info:

- Encapsulation is possible in non-OOP languages
e.g. the structure can be declared in the public API (i.e. the header file) for a set of functions that operate on an item of data containing data members that are not accessible to clients of the API

Reference: https://en.wikipedia.org/wiki/Encapsulation_%28computer_programming%29


- Inheritance vs. encapsulation in design patterns; need to be aware of the balance of both

> Because inheritance exposes a subclass to details of its parent's implementation, it's often said that "inheritance breaks encapsulation"

**— Gang of Four, Design Patterns[9] (Chapter 1)**


## SOFTWARE DESIGN PATTERNS

### Dependency Injection

- A software design pattern that implements inversion of control for resolving dependencies.

- *What is a dependency?*
  An object that can be used (a service)

- *Injection*
  Passing of a dependency to a dependent object(a client that would use it)


Useful set of slides:
https://www.slideshare.net/BabakNaffas/dependency-injection-in-net-applications

Benefits of dependency injection:

- Inject dependencies
- Test production scenarios without breaking

**Why interfaces?**

- Develop against a contract (business logic isn't changed as new implementations introduced)

- Units tests: requires interfaces / virtual methods

- Wiring for dependencies can be performed in a centralised location


**Why mocking?**

- Allows testing any use case without the need for test data
  Enables:
    Mock a response that returns the use case you are testing (as opposed to having test data in the db)
    Null return values
    Timeout (web service clients)


**When? Architecture boundaries**

- i.e. any time the app reaches out for data is a good candidate for dependency injection

- clients used to wrap the 2 dbs
- services would each implement an interface mocked for unit tests

**Strategies for unit testing**

- New projects:
  Apply TDD to work with QA to identify good test cases before writing code

- Legacy projects
  - No need to test something which is working in production for years
  - Create units tests to reproduce bugs / allows immediate ROI
  - Introduce tests for new features


## Quick Intro to Dependency Injection

  https://medium.freecodecamp.org/a-quick-intro-to-dependency-injection-what-it-is-and-when-to-use-it-7578c84fa88f

  > In software engineering, dependency injection is a technique whereby one object (or static method) supplies the dependencies of another object. A dependency is an object that can be used (a service).


- Dependency or dependent means relying on something for support.

**What is a dependency in programming?**

- e.g. when class A uses some functionality of class B; class A has a dependency of class B


###Important

- Before we can use methods of other classes, we first need to create the object of that class (i.e. class A needs to create an instance of class B).

**So, transferring the task of creating the object to someone else and directly using the dependency is called dependency injection.**

Why dependency injection?

Let’s say we have a car class which contains various objects such as wheels, engine, etc.


Without dependency injection(DI)
Here the car class is responsible for creating all the dependency objects. Now, what if we decide to ditch MRFWheels in the future and want to use Yokohama Wheels?

```
class Car{
  private Wheels wheel = new MRFWheels();
  private Battery battery = new ExcideBattery();
  ...
  ...
}
```

We will need to recreate the car object with a new Yokohama dependency. 
**But when using dependency injection (DI), we can change the Wheels at runtime (because dependencies can be injected at runtime rather than at compile time).**

**You can think of DI as the middleman in our code who does all the work of creating the preferred wheels object and providing it to the Car class.**

**It makes our Car class independent from creating the objects of Wheels, Battery, etc.**

There are basically three types of dependency injection:

1. constructor injection: the dependencies are provided through a class constructor.
2. setter injection: the client exposes a setter method that the injector uses to inject the dependency.
3. interface injection: the dependency provides an injector method that will inject the dependency into any client passed to it. Clients must implement an interface that exposes a setter method that accepts the dependency.

```

class Car{
  private Wheels wheel;
  private Battery battery;
  
  /*Somewhere in our codebase we instatiate the objects required by this class.
    There are two methods for implementing DI:
    1. Constructor based
    2. Setter based
  */
  
  // Constructor Based
  Car(Wheel wh, Battery bt) {
    this.wh = wh;
    this.bt = bt;
  }
  
  // Setter Based
  void setWheel(Wheel wh){
    this.wh = wh;
  }
  ...  
  ...
  // Rest of code  
}

```

**So now its the dependency injection’s responsibility to:**

1. Create the objects
2. Know which classes require those objects
3. And provide them all those objects


Note: If there is any change in objects, then DI looks into it and it should not concern the class using those objects. This way if the objects change in the future, then its DI’s responsibility to provide the appropriate objects to the class.


**Inversion of control —the concept behind DI**

- This states that a class should not configure its dependencies statically but should be configured by some other class from outside.

According to the principles, a class should concentrate on fulfilling its responsibilities and not on creating objects that it requires to fulfill those responsibilities. And that’s where dependency injection comes into play: it provides the class with the required objects.


Benefits of using DI
Helps in Unit testing.
Boiler plate code is reduced, as initializing of dependencies is done by the injector component.
Extending the application becomes easier.
Helps to enable loose coupling, which is important in application programming.

Disadvantages of DI
It’s a bit complex to learn, and if overused can lead to management issues and other problems.
Many compile time errors are pushed to run-time.
Dependency injection frameworks are implemented with reflection or dynamic programming. This can hinder use of IDE automation, such as “find references”, “show call hierarchy” and safe refactoring.
You can implement dependency injection on your own (Pure Vanilla) or use third-party libraries or frameworks.




























