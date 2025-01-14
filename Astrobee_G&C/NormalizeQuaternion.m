function [q] = NormalizeQuaternion(q)
%% Normalizes and ensures q(4) is positive

norm = sqrt(q(1)^2 + q(2)^2 + q(3)^2 + q(4)^2);
q = q /norm; 

if q(4)<0
    q = -q;
end



end

