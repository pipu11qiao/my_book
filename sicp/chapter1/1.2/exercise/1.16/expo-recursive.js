function square(x) {
  return x * x;
}
function expo(b, n) {
  if (n === 0) {
    return 1;
  } else {
    if (n % 2 === 0) {
      return square(expo(b, n / 2));
    } else {
      return b * expo(b, n - 1);
    }
  }
}

console.log(expo(2, 4));
