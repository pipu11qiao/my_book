//-->> Created by pipu on 2017/8/10.
function ObserverList() {
  this.observerList = [];
}
ObserverList.prototype = {
  constructor: ObserverList,
  add: function (obj) {
    return this.observerList.push(obj);
  },
  count: function () {
    return this.observerList.length;
  },
  get: function (index) {
    if(index > -1 && index < this.observerList.length) {
      return this.observerList[index];
    }
  },
  indexOf: function (obj,startIndex) {
    var i = startIndex;
    while(i < this.observerList.length) {
      if(this.observerList[i] === obj) {
        return i;
      }
      i ++;
    }
    return -1;
  },
  removeAt: function (index) {
    this.observerList.splice(index,1);
  }
};

function Subject() {
  this.observers = new ObserverList();
}
Subject.prototype = {
  constructor: Subject,
  addObserver: function (observer) {
    this.observers.add(observer);
  },
  removeObserver: function (observer) {
    this.observers.removeAt(this.observers.indexOf(observer));
  },
  notify: function (context) {
    var observerCount = this.observers.count();
    for(var i = 0; i < observerCount; i ++) {
      this.observers.get(i).update(context);
    }
  }
};

// The Observer
function Observer() {
  this.update = function () {
    //...
  }
}