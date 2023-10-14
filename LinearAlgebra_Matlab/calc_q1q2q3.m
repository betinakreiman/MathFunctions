function [q1,q2,q3] = calc_q1q2q3(a,b,c)
  
  % a, b, c are vectors of size n
  % q1, q2, q3 are the outputs
  
  A = a;
  tmp1=A' * b;
  tmp2=A'*A;
  tmp3=tmp1/tmp2;
  tmp4=tmp3*A;
  printf('tmp1=%2f\m',tmp1);
  printf('tmp2=%.2f\m',tmp2);
  printf('tmp3=%.2f\n',tmp3);
  printf('tmp4=%.2f\n',tmp4);
  B = b - ((A' * b) / (A' * A)) * A;
  C = c - ((A' * c) / (A' * A)) * A - ((B' * c) / (B' * B)) * B;
  B
  C
  
  q1 = A / norm(A);
  q2 = B / norm(B);
  q3 = C / norm(C);
  
