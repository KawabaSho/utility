function Qu = RR_b2e(q)
norm_q = q(1)^2 + q(2)^2 + q(3)^2 + q(4)^2;
Qu = [(q(1)^2 + q(2)^2 - q(3)^2 - q(4)^2), 2*(q(2)*q(3) - q(1)*q(4)), 2*(q(2)*q(4) + q(1)*q(3));...
      2*(q(2)*q(3) + q(1)*q(4)), (q(1)^2 - q(2)^2 + q(3)^2 - q(4)^2), 2*(q(3)*q(4) - q(1)*q(2));...
      2*(q(2)*q(4) - q(1)*q(3)), 2*(q(3)*q(4) + q(1)*q(2)), (q(1)^2 - q(2)^2 - q(3)^2 + q(4)^2)]./norm_q;

end