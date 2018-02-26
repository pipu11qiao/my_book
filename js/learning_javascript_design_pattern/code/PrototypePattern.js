/**
 * Created by pipu11qiao on 2017/8/21.
 */
var myCar = {
    name: 'Ford Escort',
    drive: function () {
        console.log('Weeee. I\'m driveing!');
    },
    panic: function () {
        console.log('Wait. How do you stop this thing?');
    }
};
// Use Object.create to instantiate a new car

var yourCar = Object.create(myCar);

// Now we can see that one is a prototype of the other.

console.log(yourCar.name);

var beget = (function () {
    var F = function () {};
    return function (proto) {
        F.prototype = proto;
        return new F();
    }
});