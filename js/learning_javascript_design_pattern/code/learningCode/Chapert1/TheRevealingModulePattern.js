//-->> Created by pipu on 2017/8/9.

/*
var myRevealingModule = (function () {
  var privateVar = 'Ben Cherry';
  var publicVar = 'Hey there!';

  function privateFunction() {
    console.log('Name:' + privateVar);
  }

  function publicSetName(strName) {
    privateVar = strName;
  }

  function publicGetName() {
    privateFunction();
  }

  return {
    setName: publicSetName,
    greeting: publicVar,
    getName: publicGetName
  };
})();
myRevealingModule.setName('Paul Kinlan');
  */

var myRevealingModule = (function () {
  var privateCounter = 0;

  function privateFunction() {
    privateCounter ++;
  }

  function publicFunction() {
    publicIncrement();
  }

  function publicIncrement() {
    privateFunction();
  }
  function publicGetCount() {
    return privateCouter;
  }
  return {
    start: publicFunction,
    increment: publicIncrement,
    count: publicGetCount
  }
})();

























