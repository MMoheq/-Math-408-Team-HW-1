set X;

param b {X} >= 10;
param a1 {X} >= 10;
param a2 {X} >= 10;
param a3 {X} >= 10;
param a4 {X} >= 10;

var x {j in X} binary >= 0, <= 1;

maximize obj_fun: sum {j in X} b[j] * x[j];

subject to monem:  sum {j in X} a1[j] * x[j] <= sum {j in X} a1[j] / 2;
subject to sofie:  sum {j in X} a2[j] * x[j] <= sum {j in X} a2[j] / 2;
subject to sun:  sum {j in X} a3[j] * x[j] <= sum {j in X} a3[j] / 2;
subject to finley:  sum {j in X} a4[j] * x[j] <= sum {j in X} a4[j] / 2;