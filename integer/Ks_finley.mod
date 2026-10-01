
set X;

param b {X} >= 10;
param a1 {X} >= 10;
param a2 {X} >= 10;
param a3 {X} >= 10;
param a4 {X} >= 10;

var x {j in X} binary >= 0, <= 1;

# this is the relaxation
# var x {j in X} >= 0, <= 1;

maximize Pi : sum {j in X} b[j] * x[j];
subject to student: sum {j in X} a4[j] * x[j] <= sum {j in X} a4[j] / 2;


