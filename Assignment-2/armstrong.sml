(* Finding if number is armstrong*)
fun cube(x)=x*x*x;
fun cube_of_digits(n)=
    if n=0 then 0
    else cube(n mod 10)+cube_of_digits(n div 10);
fun armstrong(n)=
    if n=cube_of_digits(n) then true else false;
    
