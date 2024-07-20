function [ o ] = ObjectiveFunction (x)
o = sum ( abs(x.^2) ) + prod( abs(x.^2) );
end