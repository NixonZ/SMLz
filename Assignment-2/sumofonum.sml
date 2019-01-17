fun sumofonum(n)=
    if n=1 then 1  
    else if (n mod 2)=1 then n+sumofonum(n-2)
    else sumofonum(n-1);
