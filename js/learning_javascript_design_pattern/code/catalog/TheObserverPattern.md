#### The Observer Pattern

The Observer is a design pattern where an object(known as a subject) maintains a list of objects depending on it(observers), automatically notifying them of any changes to state.

We can now expand on what we've learned to implement the Observer pattern with the following components:

* Subject: maintains a list of observers,facilitates adding or removing observers
* Observer: provides a update interface for objects that need to be notified of a Subject's changes of state
* ConcreteSubject: broadcasts notifications to observers on changes of state, stores the state of ConcreteObservers
* ConcreteObserver: stores a reference to the ConcreteSubject, implements an update interface for the Observer to ensure state is consistent with the Subject's


#### Difference Between The Observer And Publish/Subscribe Pattern

The Observer pattern requires that the observer  wishing to receive topic notifications must subscribe this interest to the object firing the event(the subject);

The Publish/Subscribe pattern however uses a topic/event channel which sits between the objects wishing to receive notifications(subcribers) and the object firing the event (the publisher). This event system allows code to define application specific events whick can pass custom arguments containin values needed by the subscriber. The idea here is to avoid dependencies between the subscriber and publisher.

This differs from the Observer pattern as it allows any subscriber implementing an appropriate event handler to register for and receive topic notifications broadcase by the publisher.

##### Advantages

The Observer and Publish/Subscribe patterns encourage us to think hard about the relationships between different parts of our application. They also help us identify what layers containing direct relationships whick could instead be replaced with sets of subjects and observers. This effectively could be used to break down an application into smaller, more loosely coupled blocks to improve code management and potentials for re-use.

The Observer pattern is useful for decoupling a number of different scenarios in application design and if you haven't been using it , I recommend picking up one of the pre-written implementations mentioned today and just giving a try out. It's on of the easier design pattern to get started with bug also one of the most powerful.














































