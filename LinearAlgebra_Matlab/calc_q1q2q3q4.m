function [q1,q2,q3,q4] = calc_q1q2q3q4(a,b,c,d)
  
  % a, b, c are vectors of size n
  % q1, q2, q3 are the outputs
  
  A = a;
  tmp1=A' * b;
  tmp2=A'*A;
  tmp3=tmp1/tmp2;
  tmp4=tmp3*A;
  %printf('tmp1=%2f\n',tmp1);
  %printf('tmp2=%.2f\n',tmp2);
  %printf('tmp3=%.2f\n',tmp3);
  %printf('tmp4=%.2f\n',tmp4);
  B = b - ((A' * b) / (A' * A)) * A;
  C = c - ((A' * c) / (A' * A)) * A - ((B' * c) / (B' * B)) * B;
  D = d - ((A' * d) / (A' * A)) * A - ((B' * d) / (B' * B)) * B - ((C' * d) / (C' * C)) * C;
  %B
  %C
  printf('A=%2f\n',A);
  printf('B=%.2f\n',B);
  printf('C=%.2f\n',B);
  printf('D=%.2f\n',C);
  
  q1 = A / norm(A);
  q2 = B / norm(B);
  q3 = C / norm(C);
  q4 = D / norm(D);
  