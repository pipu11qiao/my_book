#### The Constructor Pattern

three common ways to create new objects in JavaScript

```javascript

var newObjcet = {};
var newObject = Object.create(Object.prototype);
var newObject = new Object();

```
four ways in which keys and values can then assigned to an object

```javascript

// 1. Dot syntax
newObject.somKey = 'Hello World';

// 2. square bracket syntac
newObject["someKey"] = 'Hello World';

// 3.Object.defineProperty
Object.defineProperty (newObject,"someKey",{
 value:"for more control of the property's behavior"
  writable: true,
  enumerable: true,
  configurable: true
 });

// 4. Object.defineProperties
Object.defineProperties(newObject,{
  "somekey": {
    value: "Hello World",
    writable: true
  },
  "anotherKey": {
    value: "Foo bar",
    writable: false
  }
})


```