//-->> Created by pipu on 2017/2/4.
var serializer = new XMLSerializer();
var listEl = document.getElementById('list');

var xml = serializer.serializeToString(listEl);// XMLÎÄµµ
console.log(xml);
console.log(typeof xml);