function square(x) {
  return x * x;
}
function expo(res, b, n) {
  if (n === 0) {
    return res;
  } else {
    if (n % 2 === 0) {
      return expo(res, square(b), n / 2);
    } else {
      return expo(res * b, square(b), (n - 1) / 2);
    }
  }
}

console.log(expo(1, 2, 5));
