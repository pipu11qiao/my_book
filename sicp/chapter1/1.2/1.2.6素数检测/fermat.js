function test(a, n) {
  return Math.pow(a, n) % n === a;
}

function fermatTest(n) {
  for (let i = 2; i < n; i++) {
    let res = test(i, n);
    if (res) {
      console.log(`i,res`, i, res);
    }
  }
}

// fermatTest(5);
// fermatTest(6);

fermatTest(561);
