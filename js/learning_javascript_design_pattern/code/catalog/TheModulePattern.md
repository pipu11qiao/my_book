#### The Module Pattern

Modules are an integral piece of any robust application's architecture and typically help in keeping the units of code for a project both cleanly separated and organized

* The Module pattern
* Object literal notation
* AMD modules
* CommonJS modules
* ECMAScript Harmony modules

##### Object Literals

Using object literals can assist in encapsulating and organizing your code and Rebecca Murphey has previously written about this topic in [depth](http://rmurphey.com/blog/2009/10/15/using-objects-to-organize-your-code) should you wish to read into object literals further;


##### The Module Pattern

The Module pattern was originally defined as a way to provide both private and public encapsulation for clsses in conventional software engineering

> Privacy

[IIFE](http://benalman.com/news/2010/11/immediately-invoked-function-expression/) 

It should be noted that there isn't really an explicitly true sense of "privacy" inside JavaScript because unlike some traditional languages, it doesn't have access modifiers, Variables can't technically be declared as being public nore private and o we use function scope to simulate this comcept. Within the Modules pattern, variables or methods declared are only available inside the module itself thanks to closure. Variables or methods defined within the returning object however are available to everyone.



