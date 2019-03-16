fun sum(a,b,f,succ)=
    if (a>b) then 0
    else f(a)+sum(succ(a),b,f,succ);
fun acc(a,b,f,succ,oper,iden,comp)=
    if comp(a,b) then iden
    else oper(f(a),acc(succ(a),b,f,succ,oper,iden,comp));
fun fact(n)=acc(1,n,fn x=>x,fn x=>x+1,op*,1,op>);
fun sum2(n)=acc(1,n,fn x=>x,fn x=>x+1,op+,0,op>);
fun pisum(n) = acc(1,n,fn x=>1.0/real(x*(x+2)),fn x=>x+4,op+,0.0,op>)*(8.0);
fun integral(a,b,f,dx)=acc((a+dx)/2.0,b,fn x=>x,fn x=>x+dx,op+,0.0,op>)*dx;

(*currying*)

val mult= fn x =>(fn y=>x*y);
fun mult2 x y =x*y;

fun deriv f dx x=(f(x+dx)-f(x))/dx

fun compose f g x=f(g(x));

fun repeat f n =
    if n=0 then fn x=>x
    else compose f repeat f (n-1);
    
