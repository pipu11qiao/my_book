//-->> Created by pipu on 2017/2/4.
//解析XML，param 要解析的XML字符串和内容类型（'text/xml'）
//dpi dots per inch
//document.body -> 获取Document对象中的body节点
//document.documentElement -> 获取Document对象的html节点
var parser = new DOMParser();
var xmldom = parser.parseFromString('<root><child/></root>','text/xml');//获得XML对象
console.log(xmldom);

var anotherChild = xmldom.createElement('child');
xmldom.documentElement.appendChild(anotherChild);

var children = xmldom.getElementsByTagName('child');
console.log(children.length);