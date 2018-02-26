//-->> Created by pipu on 2017/8/9.
var mySingleton = (function () {
  // Instance stores a reference to the Singleton
  var instance;

  function init() {
    // Singleton

    // Private methods and variables
    function prevateMethod() {
      console.log('I am private');
    }

    var privateVriable = 'Im also private';

    var privateRandomNumber = Math.random();

    return {
      publicMethod: function () {
        console.log('The public can see me!');
      },
      publicProperty: 'I am also public',
      getRandomNumber: function () {
        return privateRandomNumber;
      }
    }
  }

  return {
    // Get the Singleton insstance if one exists
    // or create one if it doesn't

    getInstance: function () {
      if (!instance) {
        instance = init();
      }
      return instance;
    }

  }


})();

var myBadSingleton = (function () {
    // Instance stores a reference to the Singleton
  var instance;
  function init() {
    // Singleton
    var privateRanomNumber = Math.random();
    return {
      getRandomNumber: function () {
        return privateRanomNumber;
      }
    }
  }


  return {
    // Always create a new Singleton instance
    getInstance: function () {
      instance = init();
      return instance;
    }
  }
})();






















