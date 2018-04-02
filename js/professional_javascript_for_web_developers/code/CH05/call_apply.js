// 用个low的办法实现apply

Function.prototype.fakeApply = function (context,arguments) {
  // 拼接参数
  var arg;

  // 如果有参数将参数转换成数组
  if(arguments){
    arg = [].slice.call(arguments,0);
    // 将数组拼接成字符串格式 ->  arg1,arg2,arg3,...
    arg = arg.join(',');
  }

  var excuteStr  = 'this.call(context' + (arg ?',' + arg : '' ) + ')'; // this.call(context,2,3,4)

  console.log(eval('this.call(context' + (arguments ?',' +  [].slice.call(arguments,0).join(',') : '' ) + ')'));
  // { name: 44 }
  // { '0': 2, '1': 3, '2': 4 }
  // ok
};
var a = {
  name: 'aa',
  getName: function() {
    console.log(this);
    console.log(arguments);
    return 'ok';
  }
};
a.getName.fakeApply({name:44},[2,3,4]);
