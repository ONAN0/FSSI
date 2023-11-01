function [k] = Ksize(peak,Pomega,A,B)
Dw = Awpoly(A,Pomega);
Up = Awpoly(B,Pomega);
Aw = peak - Dw + Up;
k = 10.^(Aw/20);
end