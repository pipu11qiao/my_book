//-->> Created by pipu on 2017/2/4.
//����XML��param Ҫ������XML�ַ������������ͣ�'text/xml'��
//dpi dots per inch
//document.body -> ��ȡDocument�����е�body�ڵ�
//document.documentElement -> ��ȡDocument�����html�ڵ�
var parser = new DOMParser();
var xmldom = parser.parseFromString('<root><child/></root>','text/xml');//���XML����
console.log(xmldom);

var anotherChild = xmldom.createElement('child');
xmldom.documentElement.appendChild(anotherChild);

var children = xmldom.getElementsByTagName('child');
console.log(children.length);