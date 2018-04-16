ECMAScript 是javascript的核心，但如果是要在Web中使用JavaScript，那么BOM(浏览器对象模型)则无疑才是真正的核心。

8.1 window对象

8.1.1 全局作用域

8.1.2 窗口关系及框架

如果窗口中包含框架则每个框架对象都有有自己的window对象，并且保存在frames集合中。在frames集合中可以通过索引或者框架名称来访问相应的window对象。每个window对象都有个name属性，其中包含框架的名称。

top 始终指向最高(最外)层的框架，也就是浏览器窗口。
parent指向当前框架的直接上层结构。
self 指向window
除非最高层窗口是通过window.open 打开的，否则其window对象的name属性不会包含任何值。

8.1.3  窗口位置

```javascript

var leftPos = (typeof  window.screenLeft === 'number') ? window.screenLeft : window.screenX;

var topPos = (typeof  window.screenTop === 'number') ? window.screenTop : window.screenY;

```

* moveTo
* moveBy

8.1.4   窗口大小

取得页面视口的大小

 ```javascript

var pageWidth = window.innerWidth,
    pageHeight = window.innerHeight;

if(typeof pageWidth !== 'number') {
  if(document.compatMode === 'CSS1Compat') {
    pageWidth = document.documentElement.clientWidth;
    pageHeight = document.documentElement.clientHeight;
  }else {
    pageWidth = document.body.clientWidth;
    pageHeight = document.body.clientHeight;
  }
}

```
[移动端视口](http://t.cn/zOZs0Tz)

resizeTo
resizeBy

8.1.5 导航和打开窗口

window.open   4个参数

要加载的URL，窗口目标，一个特性字符串以及一个比噢是新一年是否取代浏览器历史记录中当亲加载页面的不二之。

如果传递了迪哥哥参数，而且该参数是已有窗口湖框架的名称，那么就会在具有该名称的窗口或框架中加载第一个擦数执行的URL。 ——self _parent _top _blank

8.1.6  间歇调用和超时调用

8.1.7 系统对话框

8.2 location 对象

hash
host
hostname
port
pathname
search
protocol
href

8.1.2 查询字符串参数

```javascript

    var href = 'http://www.baidu.com?i=3&m=4' ;

var getQueryStringArg = function(url){
  var res = {};
  var temp;
  if(url.indexOf('?') === -1){
    return res;
  }
  temp = decodeURIComponent(url.split('?')[1]);
  var reg = /[^&=]+=[^=&]+/g;
  var curMatch;
  while((curMatch = reg.exec(temp))) {
    curMatch = curMatch[0].split('=');
    res[curMatch[0]] = curMatch[1]
  }
  return res;
};

```
8.2.2 位置操作

location.assign

通过桑树任何一种方式修改UR之后，浏览器饿历史记录中就会设工程一条新纪录，因此用户通过单体后退按钮都会导航到前一个页面。 咬肌用这种行为可以使用replace方法。

结果虽然会导致浏览器位置改变，但不会在历史记录中设工程新纪录。

location.reload  参数 true

























