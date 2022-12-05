function expo(res, b, n) {
  if (n === 0) {
    return res;
  } else {
    if (n % 2 === 0) {
      res = expo(expo(1, b, n / 2), b, n / 2);
    } else {
      half = expo(1, b, (n - 1) / 2);
    }
  }
}

console.log(expo(1, 2, 4));
