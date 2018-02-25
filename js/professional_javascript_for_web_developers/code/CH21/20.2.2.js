//-->> Created by pipu on 2017/2/4.
// JSON ��һ�����ݸ�ʽ������һ�ֱ������
// ʵ���ϣ�JSON.stringify() ����Ҫ���л���JavaScript�����⣬�Ϳ��Խ�����������������
// ��һ�������Ǹ���������������һ������Ҳ������һ���������ڶ���������һ��ѡ���ʾ�Ƿ���JSON�ַ����б���������

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