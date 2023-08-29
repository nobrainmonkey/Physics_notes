#import "@preview/physica:0.7.5":*
#set math.equation(numbering: "(1)")
= Recap on Levi Epsilons：
Consider the following notation $epsilon_(a b c) epsilon_(d e f)$, we can write the result using cross prodduct:
$
epsilon_(a b c) epsilon_(d e f) = mdet(
  delta_(a d), delta_(a e), delta_(a f);delta_(b d), delta_(b e), delta_(b f);delta_(c d), delta_(c e), delta_(c f),,
) \
= delta_(a d) (delta_(b e) delta_(c f)- delta_(c e) delta_(b f)) - delta_(a e) (delta_(b d) delta_(c f)- delta_(b f) delta_(c d)) + delta_(a f) (delta_(b d) delta_(c e) - delta_(b e) delta_(c d))
$

== $epsilon - delta$ warmup:
Consider the following expressions:
+ $curl (vb(phi) grad vb(phi)) = 0$
+ $div (vb(V) cprod vb(W)) = vb(W) dprod (curl vb(V) ) - vb(V) dprod (curl vb(W))$
+ $curl(vb(V) cprod vb(W)) = vb(V)(div vb(W)) - vb(W)(div vb(V)) + (vb(W) dprod grad)vb(V) - (vb(V) dot grad)vb(W)$
=== General strategy:
- Assign component labels (from outside in):
$
[curl (phi grad phi)] = epsilon_(a b c) diff_b (phi diff_c phi) = epsilon_(a b c) (diff_b phi diff_c phi + phi diff_b diff_c phi)
$
Using the argument is symmetry, we note that $epsilon_(a b c)$ is symmetric, where $diff_b phi diff_c phi$ is symmetric. Therefore, the expression of equation (2) simply becomes *0*. For this specific problem, we are done.

- Use $epsilon_(a b c)$ for cross products
To explain this step, we now shift to considering cross products, which is the expression $curl (curl vb(a))$:
$
curl (curl vb(a)) &= epsilon_(a b c) delta_b (curl vb(a))_c \
&= epsilon_(a b c) diff_b epsilon_(c d e) diff_d a_e \
&= epsilon_(c a b) epsilon_(c d e) diff_(b) diff_d a_e \
$
- Now, we eliminate two $epsilon$
$
= (delta_(a d) delta_(b e) - delta_(b d) delta_(a e)) diff_b diff_d a_e
$
- Now, we ust $delta_(i j)$ to eliminate indices
$
= diff_a diff_b a_b - diff_b diff_b a_a
$
- Lastly, we identify the dot products:
$
= grad (div vb(a)) - div grad vb(a)
$
= Vector Calculus Review
Div ($div vb(A)$), Gradient ($grad vb(A)$), Curl ($curl vb(A)$) and all that ...

== Gradient
$grad := vu(x) diff_x + vu(y) diff_y + vu(z) diff_z $ in Cartesian coordinates.

For a scalar field $Phi(vb(x)) = Phi(x, y, z)$, we have
$
grad Phi = vu(x) pdv(Phi, x) + vu(y) pdv(Phi, y) + vu(z) pdv(Phi, z)
$
To the first degree Taylor expansion, we have $Delta Phi = grad Phi dprod Delta vb(r)$
This indicates that the gradient tells us the vector poiting to the direction with most infinitesimal change in $Phi$.

== Divergence
Consider $vb(V) = v_1 vu(x) + v_2 vu(y) + v_3 vu(z)$, then the divergence:
$ div vb(V) = pdv(v_1, x) + pdv(v_2, y) + pdv(v_3, z) = diff_i v_i $
Divergence measaures the spreading out of vectors fields about a point.

If $div vb(V) = 0$, we call $vb(V)$ to be "solenoidal".

== Curl
For curl, we have
$
curl vb(V) = vu(x) (diff_y V_z - diff_z V_y) + vu(y) ( diff_z V_x - diff_x V_z) + vu(z) (diff_x V_y - diff_y V_x)
$
The curl, physically, is associated with circulation (integral of a vector around a closed curve).

If $curl vb(V) = 0$, then the field is named "irrotational"
#line(length: 100%)

== Using Jackson Cover's Equations:
- For Cartesian coordinates, this is trivial.

- For curvelinear coordinates (cylindrical and spherical), we have:
$
grad Phi = sum_i vu(q)_i 1/h_i pdv(Phi, q_i)
$
where $h_i$ are called scaling factors, and
$
div vu(A) = 1/(h_1 h_2 h_3) [pdv(, q_1)(A_1 h_2 h_3) + pdv(, q_2)(A_2 h_1 h_3) + pdv(, q_3)(A_3 h_1 h_2)]
$
Note in Jackosn, the $q_i$ are called $e_i$. We can then use the table of $q_i$ and their corresponding $h_i$ to calculate curls, div, and grad in different coordinates.

=== Example:
We figured that $div vu(x) = 3$ in cartesian coordinates, but let's try this in cylindrical coordinates:
$
vb(x) = vu(rho) rho + vu(z) z => A_1 = rho, A_2 = 0, A_3 = z.
$
Using formula in Jackson, you will see the divergence in this coordinate is also 3.
#line(length: 100%)
== Vector Calculus Theorems:
=== Divergence Theorem
$
integral_V div vb(A) dd(x, 3) = integral_S vb(A) dprod vu(n) dd(a)
$
Where $vb(A) dprod vu(n)$ is the flux of $vb(A)$ through surface $S$

$
integral_V grad psi dd(x, 3) = integral_S psi vu(n) dd(a)
$

$
integral (curl vb(A)) dd(x, 3) = integral_S vu(n) times vb(A)
$

=== Stoke's Theorem
$
integral_S (curl vb(A)) dprod vu(n) dd(a) = integral.cont_C vb(A) dot dd(vb(r))
$
$
integral_S (vu(n) times grad psi) dd(a)= integral.cont_C psi dd(l)
$
need to know:
+ intuitive ideas
+ how to interpret
+ how to apply

Common features:
- relate sums of local quantities to global quantities
- sum of derivatives in the interior is related to the value on the boundary.

