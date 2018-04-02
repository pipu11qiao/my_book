Function.prototype.fakeBind = function () {
  // bind 有可能会传入绑定的参数
  var prevFun = this;
  var context = arguments[0];
  var prevArg = arguments.length > 1 ? [].slice.call(arguments,1) : [] ;

  return function () {
    var curArg = [].concat.apply(prevArg,arguments);
    return prevFun.apply(context,curArg);
  };
};
var fun1 = function () {
  console.log(this);
  console.log(arguments);
};

var fun2 = fun1.fakeBind({name: 'aaa'},2,3);
fun2(4,5);

// { name: 'aaa' }
// { '0': 2, '1': 3, '2': 4, '3': 5 }
