var pinyinTool = (function() {
  // 首字母大写
  var ucfirst = function (char) {
    return char = char.replace(/./, function (match) {
      return match.toUpperCase();
    });
  };
  // 在对象中搜索
  var getPinYin = function (char) {
    for (var name in PinYin) {
      if (PinYin[name].indexOf(char) !== -1) {
        return name;
      }
    }
    return -1;
  };
  var getCharPriority = function (preNum) {
    return ('0000'+ preNum).substr(-4);
  };
  var getCharPriorityObj = function () {
    var obj = {};
    // 0-9 A-Z a-z 的权重
    for(var i =48; i < 123; i++ ) {
      if(i < 58 || (i > 64 && i < 91) || i > 96) {
        obj[String.fromCharCode(i)] = getCharPriority(i);
      }
    }
    // 拼音的权重
    i = 200;
    // 因为英文和汉字拼音有重复的需要区分开，将拼音前面加  '_'
    for(var key in PinYin) {
      obj['_' + key] = getCharPriority(i ++);
    }
    // 其它的权重
    obj._other = '0001';
    return obj;
  };
  var charPriorityObj = getCharPriorityObj();
  var maxStrLength = 6;
  var complimentStr = '';
  for(var i = 0;i < maxStrLength; i++) {
    complimentStr += '0000';
  }

  function pinyinCompare(arr) {
    var fakeArr = [];
    // 将原来的字符串转换成对象
    // 'aa' -> {'str': 'aa',priority: ''}
    for(var i = 0; i < arr.length; i++) {
      fakeArr.push({
        str: arr[i],
        priority: getCurStrPriority(arr[i])
      });
    }
    fakeArr.sort(function (item1,item2) {
      return ('1' + item1.priority) - ('1' + item2.priority);
    });
    var otherArr = [];
    for(var i = 0,len = fakeArr.length; i < len; i++) {
      otherArr.push(fakeArr[i].str);
    }
    return otherArr;
  }
  var getChar = function (char) {
    var reg = /[0-9a-zA-Z]/;
    var result;
    if (reg.test(char)) {
      result = char;
    } else if ((result = getPinYin(char)) === -1) {
      result = '_other';
    }
    return result
  };
  function getStrPriority(str) {
    return (str + complimentStr).substr(0,6 * 4);
  }
  function getCurStrPriority(str) {
    //遍历str 计算每个字符的权重
    var priority = '';
    for(var i = 0; i < str.length; i ++) {
      priority += charPriorityObj['_' + getChar(str[i])];
    }
    return getStrPriority(priority);
  }

  return {
    convertToPinYin: function (inputStr,isFirstUpper) {
      var len = inputStr.length;
      var result = '';
      var reg = /[a-zA-Z0-9\- ]/;
      var pinyin;
      for (var i = 0; i < len; i++) {
        var curChar = inputStr[i];
        result += reg.test(curChar)  || (pinyin = getPinYin(curChar)) === -1 ? curChar : isFirstUpper ?  ucfirst(pinyin) : pinyin;
      }
      return result;
    },
    sort: function (arr) {

    // 区分数字字母和拼音

    var collect = {
      normal: [],
      pinyin: []
    };
    var reg = /^[a-zA-Z0-9]+$/;

    for(var i = 0,len = arr.length; i < len; i ++) {
      var curstr = arr[i];
      if(reg.test(curstr)) {
        collect.normal.push(curstr);
      }else {
        collect.pinyin.push(curstr);
      }
    }
    // 对数字字母排序
    collect.normal.sort(function(str1,str2){
      return str1.localeCompare(str2);
    });

    collect.pinyin = pinyinCompare(collect.pinyin);

    // 排序

    return collect.normal.concat(collect.pinyin);
  }

};

})();
