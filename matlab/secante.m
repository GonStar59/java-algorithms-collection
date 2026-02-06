function s=secante(f,x0,x1,tol) 
    f0=f(x0);
    f1=f(x1);
    for iter=1:10 
      fp1=(f1-f0)/(x1-x0);
      x2 = x1 - (f1/fp1);
      if f1==0, break; end  % He tenido suerte (me salgo)        
      fprintf('%2d -> %19.16f\n',iter,x2);  % Vuelco ultima iteracion   
      if abs(x2-x1)<tol, break; end
      x0=x1; 
      f0=f1;
      x1=x2;
      f1=f(x1);
    end 

    s=x2;
end