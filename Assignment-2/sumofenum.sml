fun sumofenum(n)=
    if n=10 then 0  
    else if (n mod 2)=0 then n+sumofonum(n-2)
    else sumofonum(n-1);
