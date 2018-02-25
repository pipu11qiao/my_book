//-->> Created by pipu on 2017/2/4.
//创建一个空白的XML文档。
// param1 命名空间 param2 标签名 param3 类型
var xmldom = document.implementation.createDocument('','root',null);//创建一个新的、文档元素为<root>的XMl文档。
//alert(xmldom.documentElement.tagName);


var child = xmldom.createElement('child');
xmldom.documentElement.appendChild(child);
console.log(xmldom);

//在实际开发中，很少需要从头开始创建一个XML文档，然后在使用DOM文档为其添加元素。更常见的情况往往是讲某个XML文档解析为DOM结构或者反之。
var hasXmlDom = document.implementation.hasFeature('XML','2.0');
console.log(hasXmlDom);
