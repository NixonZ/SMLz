fun pow(x,n)=
  int n_temp:=n+1;
  if n=1 then x
  else pow(x, n_temp div 2)*pow(x, n_temp div 2);
