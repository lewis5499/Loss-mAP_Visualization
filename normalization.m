function [nMAT] = normalization(MAT)
s1=max(MAT);
s2=min(MAT);
MAT=MAT-s2;
nMAT=MAT/(s1-s2);
end

