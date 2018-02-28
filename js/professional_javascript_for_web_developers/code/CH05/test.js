var arr1 = ['name','age'];

var arr2 = [arr1,'weight','height'];
console.log(arr1.toString()); //name,age
console.log(arr2.toString()); //name,age,weight,height

var obj = {
    name: 'lala'
};
var fun = new Function();

console.log(obj.toString());
console.log(fun.toString());
