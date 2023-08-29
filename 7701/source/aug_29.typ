#import "@preview/physica:0.7.5":*

#let hline = line(length:100%)
= Physics 7701 August 29

= Linear Algebra with Einstein Notation 

Consider the matrix-vector multiplication 

$
vb(A)  va(B) = va(C)
$
Where the bold now is a matrix. $vb(A)$. We then have:
$
A_(i j) B_j = C_i
$

Additionally, we have matrix-matrix multiplication
$
vb(A) vb(B) &= vb(C) \ 
=> A_(i j) B_(j k) &= C_(i k)
$

This works with both squared and none squared matricies.


Assume $i = j = 3$
$
delta_(i j ) = imat(3)
$
We note that the aboive matrix is symmetric
$
epsilon_(1 j k) = mat(0, 0, 0; 0, 0, 1; 0, -1, 0)
$
We note that the above matrix is antisymmetric
if it satisfy $A_(i j) A_(i k) = delta_(j k)$?
We note that effcevtive we have $(A^T)_(i j) = A_(j i)$. therefore, we have 
$
A_(j i)^T A_(i k) = delta(j k) = imat(3)
$
This indicates that $vb(A)$ is an orthogonal matrix.

Additionally, $A_(a a)$ is $Tr(A)$, and 
$epsilon_(i j k) A_(1 i) A_(2 j) A_(3 k) = det(vb(A))$
#hline 
= Dirac Delta Function
In PS#1, problem 2, we found out that, in cylindrical coordinates:
$
grad^2 psi(rho, phi, z)= 1/rho pdv(,rho) (rho pdv(psi,rho)) + 1/rho^2 pdv(psi, phi,2) + pdv(psi,z,2)
$
For $rho > 0$, we figured out that $grad^2 ln(rho) = 0$. 
What happenes at $rho = 0$ when $ln(rho) -> - infinity$?

To uncover the $delta$ function by regulating the $ln(rho)$ term. To tis end, we can add a small $epsilon in bb(R)$. This gives:
$
ln(rho) -> &ln(sqrt(rho^2 + epsilon^2)) = 1/2 ln(rho^2 + epsilon^2) \
&= grad^2 ln(rho)-> 1/rho pdv(,rho)(rho^2/(rho^2 + epsilon^2)) \ 
&=  2 epsilon^2/(rho^2 + epsilon^2)^2
$
Note that if $rho = 0, epsilon->0$, then $grad^2 ln(rho) -> infinity$.
This is out first check that the function goes to an $delta$ function.

We then check if the integral is finite:
$ 
&integral_0^(infinity) 2 epsilon^2/(rho^2 + epsilon^2)^2 dd(rho) \ 
&"let " rho' = rho/epsilon \ 
&= 2 integral_0^(infinity) dd(rho') rho'/(1 + rho'^2)^2  = 1
$
which is finite this, combined with that the integrad itself diverges, indicates that $grad^2 ln(rho) prop delta(rho)$

Doing a similiar analysis gives:
$
vb(E) = q(4 pi epsilon_0) vu(r)/r^2 => div(vu(r)/r^2) = 4pi delta^3(vb(r))
$
and because $div vb(E) = rho(vb(r)) / epsilon_0$, 
this really make sense at the charge density of a point charge is inifinity where that charge is.

Chapter 6 by Lea titled "Generalized Functions", the $delta$ function is in that chapter. We will need to know how to:
+ Applying properties of delta/theta Functions.
+ Identiying of delta functions in physics contexts.
+ Fourier representation of the delta function.
+ Differential equations with impulse terms.

We note that the physical context of the delta function will be *idealizations*
of the physics. For instance, the function $f(vb(x)) = q delta^3(vb(x) - vb(x_0))= q delta(x) delta(y) delta(z)$
#hline 
= Delta Sequences:
There are sequences of functions $phi_n$ such that:
$
lim_(n -> infinity) phi_n (x) = delta(x)
$
Two examples that we will see and prove in PS02 of such sequence is: 
$
phi_n (x) = n/pi 1/(1+n^2x^2)
$
and 
$
phi_n (x) = (1-cos(n x))/(n pi x^2)
$
To prove those, we need to demonstrate the "sifting property":
$
integral_(- infinity)^(infinity) f(x) delta(x) dd(x) = f(0) -> integral_(- infinity) ^(infinity) f(x) delta(x-a) dd(x) = f(a)
$
The test function $f(x)$ will need to satisfy $integral_(-infinity)^(infinity) norm(f(x))^2 dd(x) < infinity$

One property of $delta$ function is:
$
delta(a x) = 1/abs(a) delta(x) \ 
integral_(- infinity)^(infinity) f(u) delta(a u) dd(u) &= integral_(- infinity) ^(infinity) f(x/a) delta(x) 1/a dd(x) \
&= 1/a f(0)
$
where the absolute value comes from the change of variable step. If $a < 0$, we will have to pick up a minus sign and fip the intergral.

The Derivative of $delta$ function:
$
integral_(-infinity)^(infinity) delta(x)' f(x) dd(x) = integral_(- infinity)^(infinity)  [dv(,x) delta(x)] f(x) dd(x) 
$
Doing integration by parts yields:
$
&=- integral_(-infinity)^(infinity) delta(x) dv(,x) f(x) dd(x) + delta(x) f(x) _(-infinity)^(infinity)  \
&= - f'(0) \ 
&=> integral_(-infinity)^(infinity) delta^((n))(x) f(x) dd(x) = (-1)^n f^((n))(x)
$

One more important identity is:
$
integral_(- infinity)^(infinity) delta(g(x))f(x) dd(x) = sum_i^N f(x_(0_i))/abs(g'(x_(0_i)))
$
where $x_(0_i)$ is the ith root of $g(x)$
== Example:
suppose $g(x) = (x-a) (x-b)$, consider:
$
integral_(-infinity)^(infinity) delta((x-a)(x-b)) f(x) dd(x)
$
near $x=a -> delta((x-a)(a-b)) = 1/abs(a-b) delta(x-a)$ because variation in $x-b$ is slow and using the identity above.
Similiarly, near $x=b -> delta((x-b)(b-a)) = 1/abs(b-a) delta(x-b)$

therefore, 
$
integral_(-infinity)^(infinity) delta((x-a)(x-b)) f(x) dd(x) = 1/abs(a-b) f(a) + 1/abs(b-a) f(b)
$
More generally, near $x= x_(0_i)$, $g(x) = g(x_(0_i)) + (x-x_(0_i))g'(x_(0_i))$


