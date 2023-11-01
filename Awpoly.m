function [x] = Awpoly(poly,Pomega)
i = sqrt(-1);
r = roots(poly)
x = 0;
   for c = 1 : size(r)
       number = Pomega*i - r(c);
       absolut = sqrt(real(number).^2 + imag(number).^2);
       x = x + 20*log10(absolut);
   end
end