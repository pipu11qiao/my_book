//-->> Created by pipu on 2017/2/4.
//����һ���հ׵�XML�ĵ���
// param1 �����ռ� param2 ��ǩ�� param3 ����
var xmldom = document.implementation.createDocument('','root',null);//����һ���µġ��ĵ�Ԫ��Ϊ<root>��XMl�ĵ���
//alert(xmldom.documentElement.tagName);


var child = xmldom.createElement('child');
xmldom.documentElement.appendChild(child);
console.log(xmldom);

//��ʵ�ʿ����У�������Ҫ��ͷ��ʼ����һ��XML�ĵ���Ȼ����ʹ��DOM�ĵ�Ϊ�����Ԫ�ء�����������������ǽ�ĳ��XML�ĵ�����ΪDOM�ṹ���߷�֮��
var hasXmlDom = document.implementation.hasFeature('XML','2.0');
console.log(hasXmlDom);
