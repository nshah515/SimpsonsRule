function SimpsonTable = populateSimpsons(a,b,h,subints,func)
   
    
    SimpsonTable = zeros(2);
    
    %diff columns for x and y vals to make sure there are no erros
    
    for i = 1:(subints+1)
       SimpsonTable(i,1) = a + ((i-1)*h);
       SimpsonTable(i,2) = func(SimpsonTable(i,1));
    end
end

