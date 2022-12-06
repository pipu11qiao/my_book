# T 转换

a <- a + b
b <- a

有 p q 可以满足,Tpq 可以对 a 和 b 进行转换
Tpq(a,b) =
aq + bq + ap
bp + aq

求 Tp'q'中 p'q'和 p,q 的关系

Tp'q'(a,b) =

aq' + bq' + ap'
bp'+ aq'

= Tpq(a,b)^2 =
Tpq(A,B) 其中
A = aq + bq + ap
B = bp + aq

(aq + bq + ap)q + (bp+aq)q + (aq + bq + ap)p
(bp+aq)p + (aq + bq + ap)q

Tpq(a,b)^2 =  
2aq^2 + bq^2 + 2apq + 2bpq + ap^2
bp^2 + 2apq + aq^2 + bq^2

Tp'q'(a,b) =

aq' + bq' + ap'
bp'+ aq'
求 p' q'和 p q 的关系
根据第二个等式

bp' = bp^2+bq^2
p' = p^2+q^2

q' = 2pq + q^2

带入第一个等式求证：

2apq + aq^2 + 2bpq + bq^2 + ap^2+aq^2 = 2aq^2 + bq^2 + 2apq + 2bpq + ap^2



