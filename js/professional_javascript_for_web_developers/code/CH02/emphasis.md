script 标签上的属性

* async  
* defer 表示脚本可以延迟到文档完全被解析和显示之后在执行。
* type 
* src

在解析外部JavaScript文件(包括下载文件)时，页面的处理也会暂时停止

含有src的script标签之间的代码会被忽略

浏览器遇到 body 标签时才开始呈现内容

```html
<script defer="defer" src="example.js"></script>
```
给script加上defer属性，告诉浏览器立即下载，但延迟执行

script 的 async 不让页面等待下载和执行


文档模式
 * 混杂模式
 * 标准模式 
 
 ```html
<noscript>
<p>本页面需要浏览器支持（启用）JavaScript</p>
</noscript>
```
