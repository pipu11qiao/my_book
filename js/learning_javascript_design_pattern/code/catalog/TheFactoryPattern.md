#### The Factory Pattern

The Factory pattern is another creational pattern concerned with the notion of creating objects. Where it differs from the other patterns in its category is that it doesn't expicity require us use a constructor. Instead, a Factory can provide a generic interface for creating objects, Where we can specify the type of factory object we wish to be created.

###### When to use the factory pattern

* When our object or component setup involves a high level of complixity
* When we need to easily generate different instances of objects depending on the enviroment we are in 
* When we're working with many small objects or component that share the same properties
* When composing objects with instances of other objects that need only satisfy an API contract to work. This is useful for decoupling.

####### When not ot use the factory pattern

