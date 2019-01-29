function approx = sApprox(SimpsonTable,h,evensums,oddsums,subints)

%algo in the lecture notes

    fx0 = SimpsonTable(1,2);
    fxn = SimpsonTable(subints+1,2);
    Evens = 2 * evensums;
    Odds = 4 * oddsums;
    
    approx = (h/3)*(fx0 + fxn + Evens + Odds);
    
end