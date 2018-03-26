/**
 * Created by Administrator on 2018/3/26.
 */

// every

var FakeArray = function (arr) {
    this.name = 'fakeArray';
    this.arr = arr;
};
FakeArray.prototype = {
    constructor: FakeArray,
    // 迭代方法
    isArray: function () {
        return Object.prototype.toString.call(this.arr) === '[object Array]';
    },
    detection: function (fun) {
        if(!(typeof fun === 'function' || Object.prototype.toString.call(fun) !== '[object Function]')) {
            throw new Error('the parameter is function');
        }
    },
    every: function (fun) {
        this.detection(fun);
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            if(!fun(this.arr[i],i,this.arr)) {
                return false;
            }
        }
        return  true;
    },
    some: function (fun) {
        this.detection(fun);
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            if(fun(this.arr[i],i,this.arr)) {
                return true;
            }
        }
        return false;
    },
    forEach: function (fun) {
        this.detection(fun);
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            // debugger;
            this.arr[i] = fun(this.arr[i],i,this.arr);
        }
    },
    filter: function (fun) {
        this.detection(fun);
        var arr = [];
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            if(fun(this.arr[i],i,this.arr)) {
                arr.push(this.arr[i]);
            }
        }
        return arr;
    },
    map: function (fun) {
        this.detection(fun);
        var arr = [];
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            arr.push(fun(this.arr[i],i,this.arr))
        }
        return arr;
    },
    // 归并方法
    reduce: function (fun) {

        this.detection(fun);
        var sum = 0;
        for(var i = 0,len = this.arr.length; i < len; i ++ ){
            sum = fun(sum, this.arr[i],i,this.arr)
        }
        return sum;
    }
};
