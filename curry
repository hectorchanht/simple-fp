const curry = (fn, ...a1) => a1.length >= fn.length ? fn(...a1) : (...a2) => curry(fn, ...a1, ...a2);

const add = (a, s, d) => a + s + d;

const curryAdd = curry(add);

console.log(curryAdd(1, 2, 3));
console.log(curryAdd(1)(2, 3));
console.log(curryAdd(1)(2)(3));
console.log(curryAdd()()()(1)(2)(3));
