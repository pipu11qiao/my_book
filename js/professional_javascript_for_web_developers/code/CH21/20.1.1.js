//-->> Created by pipu on 2017/2/4.
// JSON ��һ�����ݸ�ʽ������һ�ֱ������

function createXHR() {
    if(typeof XMLHttpRequest !== 'undefined') {
        return new XMLHttpRequest();
    } else if(typeof ActiveXObject !== 'undefined'){
        if (typeof arguments.callee.activeXString != 'string') {
            var versions = ['MSXML2.XMLHttp.6.0', 'MSXML2.XMLHttp.3.0', 'MSXML2.XMLHttp'], i, len;
            for (i = 0, len = versions.length; i < len; i++) {
                try {
                    new ActiveXObject(versions[i]);
                    arguments.callee.activeString = versions[i];
                    break;
                } catch (ex) {

                }
            }
        }
        return new ActiveXObject(arguments.callee.activeString)
    } else {
        throw new Error('No XHR object available.');
    }
}
for (var i = 0,n = 4; i < 8 ; i ++ ) {
    n ++;
}
console.log(n);