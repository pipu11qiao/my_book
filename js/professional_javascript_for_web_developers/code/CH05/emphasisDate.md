
##### Date 对象

Date.parse
Date.UTC

Date.now  ES5 新增的方法
在不支持的浏览器中添加 + 的方法可以实现获取时间戳

var start = +new Data();

Date 对象的 valueOf 方法不返回字符串，而是返回日期的毫秒数值。
因此可以直接比较两个日期对象。

