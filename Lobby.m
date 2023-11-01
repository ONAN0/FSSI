% In hope there is only one komplex number
% Rules : play only where %% is !!!
% Real roots
nulls = [1.875];     %% [s1 s2 ... sn] or empty
pools = [-0.6];      %% [s1 s2 ... sn] or empty (- for stability)

% Komplex roots
Knulls = Kpoly(0.65, 1.875, 1);   %% (psi,omega,1 = true)
Kpools = Kpoly(0.3, -0.7, 0);   %% (psi,(-)omega,0 = false) (- for stability)

% Creating polynoms from real and komplex roots
A = conv(poly(nulls),Knulls);
B = conv(poly(pools),Kpools);

% Getting k size
k = Ksize(59.9, 10,A,B)      %% (Aw,omega,A,B)

% Graf
Hs = tf(A,B)
bode(k * Hs)

grid on