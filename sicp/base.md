process
technique to controlling complexity


构建处理问题的指令，是一项简单的任务。最重要的是随着程序的增长，如何控制复杂性，构建高性能稳健的系统。这是我们的技艺和工作。这是计算机科学的关键所在。
机场的工程控制系统和计算机的控制系统有区别？？
现实中的系统需要考虑公差，噪音，摩擦力等等显示中的约束
因为计算机不是真实的，都是抽象的可以随心所欲的组合



## 加载文件

使用(#%provide (all-defined))来声明要输出的函数

```rkt
;base.rkt
#lang sicp

(define (square x) (* x x))
(define (add x y )(+ x y))

(#%provide (all-defined))
```


使用(#%require )来加载函数
```rkt
#lang sicp
(#%require "./base.rkt")

(add 1 3)
(square 3)
```