%Programa para calcualar los polos y ceros de una funcion racional
%de sistemas IIR

clc;
clear;
syms Z;


b0= 4;
b1= 5;
b2= 6;
b3= 0;
b4= 0;
b5= 0;
b6= 0;
b7= 0;

a0= 1;
a1= 2;
a2= 3;
a3= 0;
a4= 0;
a5= 0;
a6= 0;
a7= 0;


 
H(Z)= (b0+(b1*(Z^-1))+(b2*(Z^-2))+(b3*(Z^-3))+(b4*(Z^-4))+(b5*Z^-5)+(b6*(Z^-6)))/(a0-(a1*(Z^-1))-(a2*(Z^-2))-(a3*(Z^-3))-(a4*(Z^-4))-(a5*(Z^-5))-(a6*(Z^-6)))
polos= poles(H,Z)
numerador= [b0 b1 b2 b3 b4 b5 b6 b7];
ceros= roots(numerador)
% pzmap(H)
zplane(polos,ceros)