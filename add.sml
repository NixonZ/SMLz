(*[2,4]  [3,4]*)
fun breakdown(x)=
     if x=0 then []
     else (x mod 10)::breakdown(x div 10);

fun add(a,b)=
    let
        val A=breakdown(a)
        val B=breakdown(b)
    in
