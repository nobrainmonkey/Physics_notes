#import "@preview/physica:0.7.5":*
#set math.equation(numbering: "(1)")

= Failure of QM with special relativity(cont.)
In the region of light cone $x = plus.minus c t$ on the $t$ v.s $x$ diagram centered at $x_0$, there are three types of trajectories:

+ light like- follow the $x - c t = 0$. Trajectory. This is exclusively for massless particles.
+ time like- intervals "inside" the light cone $-> x - c t < 0$. This is the trajectory for all massive particles.
+ space like- intervals where the end points are outside of the light cone $-> x - c t > 0$. This is not allowed in our universe.

Therefore, we can conclude two rules using the concept of events in the space time coordinates

+ The future lightcone contains all possible events(a point at a certain $(x,t)$) that could be influenced by event at $x_0$.

+ The past lightcone contains all possible events that could have influenced the event at $x_0$.

In one word: *information cannot travel past the speed of light.*

== Propergation of particle
Consider the following QM propergater:
$
mel(x, e^(-i hat(H) t), y)
$
where $hat(H) = E$, and $E^2 = va(p)^2 + m^2$. This gives $hat(H) = sqrt(va(p)^2 + m^2)$.

We insert a complete set of momentum states(using completeness) between the $bra(x)$:
$
1/(2pi)^3 integral dd(p, va(p)) braket(x, p) mel(va(p), e^(-i sqrt(va(p)^2+m^2)) t, y) \
=1/(2pi)^3 integral dd(va(p), 3) e^(i va(p) dprod (x-y)) e^(- i sqrt(va(p^2)+m^2)t) \
=1/(2pi)^3 1/abs(x-y) integral_0^(infinity) dd(p) p sin(p(x-y))e^(-i sqrt(p^2 + m^2)t)
$
To compute this integral, we have to countour integrate this with a countour closes at infinity. We will dive into this later, but note that the final integrand in euqation (2) is a finite number $N$. Consequently, the propergater becomes:
$
mel(x, e^(-i hat(H) t), y) = N/(2pi)^3 1/abs(x-y)
$
Therefore, no matter how seperated $va(x)$ and $va(y)$ are, the evaluation of this propergater is never zero. This is simply not possible whene $abs(x-y) > c t$

In QFT, there must be such a propergater with the following properties:
+ Goes from x to y if $t_x < t_y$
+ Goes from y to x if $t_y < t_x$

= Review on Lorentz Symmetry
== Lorentz Invariance in Classical Theory
To transfrom from rest frame into a moving frame with some velocity $va(v)$ (boost). This happenes through a 4-vector:
$
vec(x_0', x_1', x_2', x_3') = mat(
  gamma, -beta gamma, 0, 0;-beta gamma, gamma, 0, 0;0, 0, 1, 0;0, 0, 0, 1,
) vec(x_0, x_1, x_2, x_3)
$
We introduce a metric space time $g_(mu nu)$. In Flat space, we call this $eta_(mu,nu)$, which is the Minkowski metric:
$
eta_(mu,nu):= mat(1, 0, 0, 0;0, -1, 0, 0;0, 0, -1, 0;0, 0, 0, -1)
$
We have $A^(mu)$ which are countravariant, and $A_mu$ which is co variant. We can use $g_(mu,nu)$ to lower or rise indicies. For instance:
$
g_(mu,nu)X^nu = X_mu "and" X^mu = g_(mu,nu)X_(nu)
$
Additionally, we can use $g_(mu,nu)$ to represent dot products:
$
A_mu B_mu = A^mu g_(mu nu) B^nu
$
This metric defines the "distances" between two quantities. Therefore, it shows the "shape" of the space, and the "disstance" $dd(s^2)= dd(x^mu) dd(x^nu) g^(mu nu)$. In flatspace with $eta_(mu nu)$, we have:
$
dd(s^2) = dd(x^mu) dd(x^nu) eta_(mu nu) = dd(x_0^2 - sum_(i=1) dd(x_i^2))
$.
We also need to take derivatives:
$
diff_mu = pdv(, x^mu) "Gives covariant vector"
$
and
$
diff^mu = pdv(, x_mu) "Gives contravariant vector"
$
We have transformation laws for covariant and contravariant vectors:
$
pdv(x'^mu, x^nu) A^nu = A'^mu "For covariant"
$
$
pdv(x'_nu, x'_mu) A_nu = A'_mu "For covariant"
$
We can then prove that the innerproducts btween two vectors are the same:
$
A'_mu B'^mu = pdv(x'^alpha, x^beta)A_alpha pdv(x'^alpha, x^beta)B^alpha = delta_(alpha,beta) A_alpha B^beta
$
A more simple mathematical object than four vector is a scalar $phi$, where $diff_mu phi$ also transforms like a four vector:
$
diff_mu phi = pdv(phi, x^mu) -> pdv(x_nu, x'^mu)pdv(phi, x^nu) = pdv(phi, x'^mu)
$
and
$
(diff_mu phi) (d^mu phi) = "Lorentz scalar"
$
Similiarly, $phi^2, phi^3, phi^4$ are also Lorentz vector.

= Classical Field Theory
$S equiv$ action, which is a *functional* (function of function).

In CM, $S = integral dd(t) L(x(t), dot(x)(t),t)$
where $x(t)$ is the trajectory. In CM, $x(t)$ extremizes the action $S$.

To this end, we will need to get the extreme of functional that extremize $S$.

For field theory, instead of trajectories, we are considering fields. Therefore, for aciton, we have:

$
S = integral dd(x, 4) L(phi(x),diff_mu phi(x),t)
$
We hen seek to find the field $phi(x)$ that extremizes $S$. We first take some variation of the field:
$
phi(x) -> phi(x) + delta phi "and" diff_mu phi -> diff_mu phi + delta diff_mu phi
$
We then consider the variation of the action:
$
delta S = integral dd(x, 4) L(phi + delta phi, diff_mu phi + delta diff_mu phi ,t) - integral dd(x, 4) L(phi, diff_mu phi, t) = 0
$
Doing a first degree taylor expansion yields:
$
delta phi pdv(L, phi) + delta diff_mu phi pdv(L, diff_mu phi) = delta S = 0
$
We can see that the second term in (19) (omitting one term using same end point values) becomes:
$
integral dd(x, 4) delta phi pdv(L, phi)-integral dd(x, 4)diff_mu (pdv(L, diff_mu phi) delta phi)=0 \
integral dd(x, 4)[pdv(L, phi)- diff_mu pdv(L, diff_mu phi)] delta phi =0 \
pdv(L, phi)- diff_mu pdv(L, diff_mu phi) = 0 "(E-L euqation)"
$
One "trivial" example is the scalar field $phi$.
$ L = 1/2 diff_mu phi diff^mu phi$, using E-L euqation, this is trivially gives $diff_mu (diff^mu phi) = 0$. This gives: $diff_t^2 - grad^2 phi = 0$, which is nothing but the wave equation.

= Symmetry and Conservation Laws
Noether's Theorem: For each conserved quantity, there is a symmetry of $L$.
Consider $phi(x) -> phi(x) + alpha delta(x)$, the Lagrangian is then $L(phi + alpha delta(x), diff_mu phi + alpha delta diff_mu phi) <=> L(phi, diff_mu phi)$. While this is certainly true, but the transformation can also modify the surface term of the Lagrangian and it wouldn't matter in action minimization:
$
L -> L + alpha diff_mu J^mu
$
where $J$ is just some surface term quantity. For the transfoamrion of $phi -> phi + delta alpha, diff_mu phi -> diff_mu phi + delta alpha diff_mu phi $, we have $Delta L = alpha diff_mu (pdv(L, diff_mu phi) delta) + alpha (pdv(L, phi) - diff_mu pdv(L, diff_mu phi)delta)$. Howver, this second term is zero due to E-L equation. Therefroe, as long as our $J^mu$ satisfy:
$
alpha diff_mu (pdv(L, diff_mu phi)delta)- alpha diff_mu J^mu(x)= 0
$
will satisfy the conservation propety

