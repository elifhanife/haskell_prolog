food(apple).
food(broccoli).
food(carrot).
food(lettuce).
food(orange).
food(rice).

color(sky,blue).
color(dirt,brown).
color(grass,green).
color(broccoli,green).
color(lettuce,green).
color(apple,red).
color(carrot,orange).
color(rice,white).

likes(bob,carrot).
likes(bob,apple).
likes(joe,lettuce).
likes(mary,broccoli).
likes(mary,tomato).
likes(bob,mary).
likes(marry,joe).
likes(joe,baseball).
likes(mary,baseball).
likes(jim,baseball).

thing(apple,red,yes).
thing(broccoli,green,yes).
thing(carrot,orange,yes).
thing(dirt,brown,no).
thing(grass,green,no).
thing(lettuce,green,yes).
thing(orange,orange,yes).
thing(rice,white,yes).
thing(sky,blue,no).

x(just(testing,date(6,3,2022))).
x(10).
x(10,20).


/*RULES*/

increasing(A,B,C) :- A<B,B<C.
decreasing(A,B,C) :- increasing(C,B,A).
ordered(A,B,C) :- increasing(A,B,C).
ordered(A,B,C) :- decreasing(A,B,C).

v(10).
v(7).
v(12).
v(3).

p(A,lt,B) :- A<B.
p(A,eq,B) :- A==B.
p(A,gt,B) :- A>B.

around(P,S,N):- P is S-1,N is S+1.
area(circle(R),A):- A is pi*R**2.
area(rectangle(W,H),A):- A is W*H.
area(figure8(R1,R2),A):- area(circle(R1),A1),area(circle(R2),A2),A is A1+A2.


printN(0).
printN(N) :- 
    N>0,
    M is N-1,
    printN(M),
    writeln(N).
   
    
fac(0,1).
fac(N,F):-
    N>0,
    M is N-1,
    fac(M,F1),
    F is N*F1.
    
/*odd(N):- N mod 2 =:= 1.*/
/*odd(N):-
    M is N mod 2,
    M==1 ->  true.*/

odd(1).
odd(N):- odd(M), N is M+2.

empty([]).


erkek(aaa).
erkek(bbb).
erkek(ccc).
erkek(ddd).
erkek(eee).
erkek(fff).
erkek(hhh).

kadin(iii).
kadin(jjj).
kadin(kkk).
kadin(lll).
kadin(mmm).

/* ebeveyn (cocuk, ebeveyn). */
ebeveyn(bbb, aaa).
ebeveyn(jjj, aaa).
ebeveyn(ccc, bbb).
ebeveyn(iii, bbb).
ebeveyn(ddd, bbb).
ebeveyn(kkk, jjj).
ebeveyn(eee, kkk).
ebeveyn(eee, hhh).
ebeveyn(iii, mmm).
ebeveyn(ccc, mmm).
ebeveyn(ddd, mmm).
ebeveyn(kkk, fff).
ebeveyn(jjj, lll).
ebeveyn(bbb, lll).

/* evli (A,B) - A B ile evli */
evli(aaa, lll).
evli(lll, aaa).
evli(bbb, mmm).
evli(mmm, bbb).
evli(jjj, fff).
evli(fff, jjj).
evli(kkk, hhh).
evli(hhh, kkk).

baba(Cocuk, Kisi) :- ebeveyn(Cocuk,Kisi),evli(Kisi,_),erkek(Kisi).
anne(Cocuk,Kisi) :-  ebeveyn(Cocuk,Kisi),evli(Kisi,_),kadin(Kisi).
erkek_kardes(Kardes, Erkek) :- ebeveyn(Kardes,Kisi),ebeveyn(Erkek,Kisi),Kardes\==Erkek,erkek(Erkek).
kiz_kardes(Kardes, Kiz) :- ebeveyn(Kardes,Kisi),ebeveyn(Kiz,Kisi),erkek(Kisi),Kardes\==Kiz,kadin(Kiz).
dede(Torun, Bbaba) :- ebeveyn(Torun,Kisi),ebeveyn(Kisi,Bbaba),erkek(Bbaba).


ebob(0,0,1).
ebob(A,B,S):- 
    A>0, B>0,
    N is A mod B,
    N==0 -> S is B;ebob(A,B-1,S).