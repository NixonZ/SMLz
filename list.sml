(*list operations*)
exception emptylist;
fun singleton([])=false
   |singleton([x])=true
   |singleton(x::ls)=false;

fun isempty([])=true
   |isempty(x::ls)=false;

fun head([])=raise emptylist
   |head(x::ls)=x;

fun tail([])=raise emptylist
   |tail(x::ls)=ls;

fun len([])=0
   |len(x::ls)=1+len(ls);

fun max([])=raise emptylist
   |max([x])=x
   |max(x::ls)=
      let
        val max=max(ls)
      in
        if (x>max) then x
        else max
      end;

fun len1(ls)=
  let
    fun iter([],i)=i
       |iter(x::ls,i)=iter(ls,i+1);
  in
    iter(ls,0)
  end;

fun append([],l2)=l2
   |append(x::l1,l2)=x::append(l1,l2);

fun rev([])=[]
   |rev(x::ls)=append(rev(ls),[x]);

fun rev1(ls)=
  let
    fun iter([],revlist)=revlist
       |iter(x::ls,revlist)=iter(ls,x::revlist);
  in
    iter(ls,[])
  end;

fun insert(x,[])=[x]
   |insert(x,y::ls)=
      if (x<y) then x::y::ls
      else y::insert(x,ls);
fun insort([])=[]
   |insort(x::ls)=insert(x,insort(ls));

fun split(ls)=
    let
      fun iter(a,b,[],i)=(a,b)
         |iter(a,b,x::ls,i)=
            if (i mod 2=0) then iter(x::a,b,ls,i+1)
            else iter(a,x::b,ls,i+1)
    in
      iter([],[],ls,0)
    end;
fun merge([],l2)=l2
   |merge(l1,[])=l1
   |merge(x::l1,y::l2)=
      if (x<y) then x::merge(l1,y::l2)
      else y::merge(x::l1,l2);

fun msort([])=[]
   |msort([x])=[x]
   |msort(ls)=
      let
        val (a,b)=split(ls);
      in
        merge(msort(a),msort(b))
      end;
