(*Factorial of a given integer 𝑛, 𝑛 ≥ 0.*)
fun factorial n= 
  if n=0 then 1 
  else n*factorial(n-1);
(*The 𝑛𝑡ℎ power of a given real number x. *)  
fun power(x,n)=
  if n=1 then x
  else x*power(x,n-1);
  
(*The greatest common divisor of two positive integers a, b.*)  
fun gcd(a,b)=
  if a=b then a
  else if a>b then gcd(a-b,b)
  else gcd(a,b-a);
(*The 𝑛𝑡ℎ number in the Fibonacci sequence.*)
fun n_fib(n)=
  if n=0 then 0
  else if n=1 then 1
  else n_fib(n-1)+n_fib(n-2);    
