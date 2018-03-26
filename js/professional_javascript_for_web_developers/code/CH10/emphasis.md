DOM  是针对HTML和XML文档的一个API。DOM描绘了一个层次化的节点数

DOM 1级规范 IE中的DOM都是以COM对象的形式实现的。

10.1 节点层次

文档节点是根节点

html -> 文档元素 是文档的最外层元素，每个文档只能有一个文档元素。

10.1.1 Node 类型

DOM1  级定义了一个Node接口，该接口将由DOM中的所有节点类型实现。除了IE，在其他所有浏览器都可以访问到这个类型

每个节点都有一个nodeType属性，用于表明节点的类型。一共有12个节点类型，任何节点类型必居其一：

```javascript
Node.ELEMENT_NODE(1)
Node.ATTRIBUTE_NODE(2)
Node.TEXT_NODE(3)
Node.CDATA_SECTION_NODE(4)
Node.ENTITY_REFERENCE_NODE(5)
Node.ELEMENT_NODE(6)
Node.PROCESSING_INSTRUCTION_NODE(7)
Node.COMMENT_NODE(8)
Node.DOCUMENT_NODE(9)
Node.DOCUMENT_TYPE_NODE(10)
Node.DOCUMENT_FRAGMENT_NODE(11)
Node.NOTATION_NODE(12)
```

```javascript
if(someNode.nodeType === Node.ELEMENT_NODE) { // IE无效
    alert("Node is an element");
}
```
所有浏览器兼容
```javascript

if(someNode.nodeType === 1) { // IE无效
    alert("Node is an element");
}
```

