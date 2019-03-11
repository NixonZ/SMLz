fun square(x)=x*x;

fun rec_factorial(n)=
    if n=0 then 1
    else n*factorial(n-1);


fun iter_fact(n)=
    let
      fun iter(f,m,i)=
          if m=i then f
          else iter(f*(i+1),m,i+1);
    in
      iter(1,n,0)
    end;

fun iter_pow(x,n)=
    let
      fun iter(f,m,i)=
          if m=i then f
          else iter(f*x,m,i+1);
    in
      iter(1,n,0)
    end;

fun iter_pow_logn(x,n)=
    let
      fun iter(res,new_x,m)=
          if m=0 then res
          else if (m mod 2)=1 then iter(res*new_x,square(new_x),m div 2)
          else iter(res,square(new_x),m div 2);
    in
      iter(1,x,n)
    end;

fun power(x,n)=
    if n=0 then 1
    else x*power(x,n);


fun power_logn(x,n)=
    if n=0 then 1
    else if n=1 then x
    else if (n mod 2)=1 then square(power(x,n div 2))*x
    else square(power(x,n div 2));

fun fib(n)=
    if n=1 then 1
    else if n=2 then 1
    else fib(n-1)+fib(n-2);

fun iter_fib(n)=
    let
      fun iter(f1,f2,m,i)=
          if m=i then f2
          else iter(f2,f1+f2,m,i+1);
    in
      iter(0,1,n,0)
    end;


fun intsqroot(n)=
    if n=0 then 0
    else if n<(square(2*intsqroot(n div 4)+1)) then 2*intsqroot(n div 4)
    else 2*intsqroot(n div 4)+1;

fun power(n)=
    let
      fun addfactors(n)=
        let
          fun factor(i)= if (n mod i)=0 then i else 0;
          fun sum(f,a,b)=
            if a>b then 0
            else f(a)+sum(f,a+1,b);
        in
          sum(factor,1,n div 2)
        end;
    in
      n=addfactors(n)
    end;
