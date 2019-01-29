function [evensums,oddsums] = gSums(SimpsonTable,subints)
    evensums = 0;
    oddsums = 0;
    
    % i=2 bc you are given two 'subintervals' by the bounds and that
    % doesn't count as total subintervals
    for i = 2:subints
        if mod(i,2)==0
           oddsums = oddsums + SimpsonTable(i,2); 
        end
        if mod(i,2)~=0
           evensums = evensums + SimpsonTable(i,2); 
        end
    end
    
    
end

