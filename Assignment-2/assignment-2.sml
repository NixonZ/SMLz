(* Finding if number is armstrong*)
fun cube(x)=x*x*x;
fun cube_of_digits(n)=
    if n=0 then 0
    else cube(n mod 10)+cube_of_digits(n div 10);
fun armstrong(n)=
    if n=cube_of_digits(n) then true else false;
(*sum of numbers till n*)
fun sumofnum(n)=
    if n=1 then 1
    else n+sumofnum(n-1);
(*Sum of odd numbers till n*)
fun sumofonum(n)=
    if n=1 then 1  
    else if (n mod 2)=1 then n+sumofonum(n-2)
    else sumofonum(n-1);
(*Sum of even numbers till n*)
fun sumofenum(n)=
    if n=0 then 0  
    else if (n mod 2)=0 then n+sumofonum(n-2)
    else sumofonum(n-1);
        
