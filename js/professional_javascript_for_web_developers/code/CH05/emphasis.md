使用Array构造函数可以省略 new操作符

Array.isArray() 浏览器支持 IE9+ Firefox 4+ Safari 5+ Opera 10.5 + 和 Chrome

调用数组的toString() 方法会返回有数组中每个值的字符串形式拼接而成的一个以逗号分隔的字符串。实际上为了创建这个字符串会调用数组每一项的toString方法

##### Array 的基本方法从ie6开始都被支持

* toString
* toLocalString
* push
* pop
* unshift
* shift
* reverse
* sort
* concat 不影响原数组
* slice  不影响原数组
* splice (删除，插入，替换) 返回从原始数组中删除的项

##### es5 添加的一些方法
1. 查找：
  * indexOf  es5添加
  * lastIndexOf es5添加
2. 迭代  函数参数  （item,index,array) 区别jQuery（index,item,array)
  * every
  * filter
  * forEach
  * map
  * some
