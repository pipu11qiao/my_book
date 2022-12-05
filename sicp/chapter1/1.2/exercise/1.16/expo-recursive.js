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
      return b * square(expo(b, (n - 1) / 2));
    }
  }
}

console.log(expo(2, 4));
