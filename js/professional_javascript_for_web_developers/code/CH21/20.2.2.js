//-->> Created by pipu on 2017/2/4.
// JSON 是一种数据格式，不是一种编程语言
// 实际上，JSON.stringify() 除了要序列化的JavaScript对象外，和可以接收另外两个参数。
// 第一个参数是个过滤器，可以是一个数组也可以是一个函数；第二个参数是一个选项，表示是否在JSON字符串中保留缩进。

// param1
var book = {
    title: 'Professional JavaScript',
    authors: [
        'Nicholas C. Zakas'
    ],
    edition: 3,
    year: 2011
};

var jsonText = JSON.stringify(book,['title','edition']);
console.log(jsonText); // result --> {"title":"Professional JavaScript","edition":3}
var jsonText2 = JSON.stringify(book,function(key,value) {
    switch(key) {
        case 'author':
            return value.join(',');
        case 'year':
            return 5000;
        case 'edition':
            return undefined;
        default :
            return value;
    }
});
console.log(jsonText2);

// param2 options control retract


var jsonText3 = JSON.stringify(book,null,3);
console.log(jsonText3);

var jsonText4 = JSON.stringify(book,null,'---');
console.log(jsonText4);

//var obj = JSON.parse(jsonText4);
var obj = JSON.parse(jsonText4);
console.log(obj);