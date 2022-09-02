const opMap = {
  '+': 1,
  '-': 1,
  '*': 2,
  '/': 2,
};
// prvStr是前面处理好的str
function midToBack(expStr, prevStr) {
  let tmpStr = expStr;
  if (tmpStr.length === 0) {
    return prevStr;
  }
  let num1Str = '';
  let num2Str = '';
  let op1Str = '';
  let op2Str = '';
  if (prevStr) {
    num1Str = prevStr
  }else{
    num1Str= tmpStr[0];
  }
  op1Str = tmpStr[1];
  num2Str = tmpStr[2];
  op2Str = tmpStr[3];
  // 表达式结束了
  let baseExpStr = `${num1Str}${num2Str}${op1Str}`;
  if (!op2Str) {
    return baseExpStr
  } else {
    // 比较两个操作符的优先级
    const level1 = opMap[op1Str];
    const level2 = opMap[op2Str];
    if (level1 >= level2) {
      return midToBack(`t${tmpStr.slice(3)}`, baseExpStr)
    }else if(level1 < level2){
      return  `${num1Str}${midToBack(tmpStr.slice(2))}${op1Str}`
    }
  }
}



function test() {
  let startStr= '9-5+2*3';
  // let startStr= '9-5+2-3';
  console.log(`startStr`, startStr);
  const endStr = midToBack(startStr);
  console.log(`endStr`, endStr);
}

test()