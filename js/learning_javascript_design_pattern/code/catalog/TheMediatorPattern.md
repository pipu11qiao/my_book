#### The Mediator Pattern

In the section on the Observer pattern, we were introduced to a way of channeling multiple event sources through a single object. This is also known as Publish/Subscribe or Event Aggregation. It's common for developers to think of Mediators when faced with this problem, so let's explore how they differ.

The dictionary refers to a mediator as a neutral party that assists in negotiations and conflict resolution. In our world, a mediator is a behavioral design patter that allows us to expose a unified interface throug whick the different parts of a system may communicate.

A real-world analogy could be a typical airport traffic control system. A tower (Mediator) handles what planes can take off and land because all communications (notifications being listened out for or broadcast) are done from the planes to the control tower, rather than from plane-to-plane. A centrolized controller is key to the success of this system and that's really the role a Mediator plays in software design.

Another analogy would be DOM event bubbling and event delegation. If all subscriptions in a system are made against the document rather than individual nodes, the document effectively serves as a Mediator. Instead of binding to the events of the individual nodes, a higher level object is given the responsibility of notifying subscribers about interactions events.

##### A Simple Mediator

A Mediator is an object that coordinates interactions(logic and behavior) between multiple objects. It makes desisions on when to call whick objects, based on the actions(or inaction)of other objects an input.


##### Advantage & Disadvantage

The largest benefit of the Mediator pattern is that it reduces the communication channels needed between objects or components in a system form many to many to just many to one. Adding new publishers and subscribers is relatively easy due to the level of decoupling present; 





























