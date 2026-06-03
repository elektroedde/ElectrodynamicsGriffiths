#import "@local/elektroedde:0.1.0": *
#show: problem

=
Prove the $bold("BAC-CAB")$ rule,
$
  bold(A) times (bold(B) times bold(C)) = bold(B)(bold(A) dot bold(C)) - bold(C)(bold(A) dot bold(B))
$
 by writing out both sides in component form.
#solution[
  Writing out the vectors in component form
$
  bold(A) = A_x vu(x) + A_y vu(y) + A_z vu(z) \
  bold(B) = B_x vu(x) + B_y vu(y) + B_z vu(z) \
  bold(C) = C_x vu(x) + C_y vu(y) + C_z vu(z) \
$
starting with lhs
$
  bold(B) times bold(C) = mat(delim: "|", vu(x), vu(y), vu(z);B_x, B_y, B_z;C_x, C_y, C_z) = (B_y C_z - B_z C_y)vu(x) + (B_z C_x - B_x C_z)vu(y) + (B_x C_y - B_y C_x)vu(z)
$
rewriting with a new matrix $bold(D)$ where
$
D_x = B_y C_z - B_z C_y\
D_y = B_z C_x - B_x C_z\
D_z = B_x C_y - B_y C_x
$
gives
$
  bold(D) = bold(B) times bold(C) = D_x vu(x) + D_y vu(y) + D_z vu(z)
$
Now
$
  bold(A) times (bold(B) times bold(C)) = bold(A) times bold(D) = mat(delim: "|", vu(x), vu(y), vu(z); A_x, A_y, A_z; D_x, D_y, D_z) = \
  = (A_y D_z - A_z D_y)vu(x) + (A_z D_x - A_x D_z)vu(y) + (A_x D_y - A_y D_x)vu(z)
$

RHS:
$
  bold(A) dot bold(C) = A_x C_x + A_y C_y + A_z C_z = P\
  bold(A) dot bold(B) = A_x B_x + A_y B_y + A_z B_z = Q \
  bold(B)(bold(A) dot bold(C)) = B_x P vu(x) + B_y P vu(y) + B_z P vu(z) \
  bold(C)(bold(A) dot bold(B)) = C_x Q vu(x) + C_y Q vu(y) + C_z Q vu(z) \
  bold(B)(bold(A) dot bold(C)) - bold(C)(bold(A) dot bold(B)) = (B_x P - C_x Q)vu(x) + (B_y P - C_y Q)vu(y) + (B_z P - C_z Q)vu(z)
$
Now final step is checking if

$
bold("1:") A_y D_z - A_z D_y = B_x P - C_x Q\
bold("2:") A_z D_x - A_x D_z = B_y P - C_y Q\
bold("3:") A_x D_y - A_y D_x = B_z P - C_z Q
$

For $bold("1")$:
$
"LHS:" A_y (B_x C_y - B_y C_x) - A_z (B_z C_x - B_x C_z) \
= A_y B_x C_y - A_y B_y C_x - A_z B_z C_x + A_z B_x C_z \
= B_x (A_y C_y + A_z C_z) - C_x (A_y B_y + A_z B_z) \
\
"RHS:" B_x (A_x C_x + A_y C_y + A_z C_z) - C_x (A_x B_x + A_y B_y + A_z B_z) \
= B_x A_x C_x + B_x (A_y C_y + A_z C_z) - C_x A_x B_x - C_x (A_y B_y + A_z B_z) \
= B_x (A_y C_y + A_z C_z) - C_x (A_y B_y + A_z B_z) = "LHS" checkmark
$

For $bold("2")$:
$
"LHS:" A_z (B_y C_z - B_z C_y) - A_x (B_x C_y - B_y C_x) \
= A_z B_y C_z - A_z B_z C_y - A_x B_x C_y + A_x B_y C_x \
= B_y (A_z C_z + A_x C_x) - C_y (A_z B_z + A_x B_x) \
\
"RHS:" B_y (A_x C_x + A_y C_y + A_z C_z) - C_y (A_x B_x + A_y B_y + A_z B_z) \
= B_y A_y C_y + B_y (A_x C_x + A_z C_z) - C_y A_y B_y - C_y (A_x B_x + A_z B_z) \
= B_y (A_x C_x + A_z C_z) - C_y (A_x B_x + A_z B_z) = "LHS" checkmark
$

For $bold("3")$:
$
"LHS:" A_x (B_z C_x - B_x C_z) - A_y (B_y C_z - B_z C_y) \
= A_x B_z C_x - A_x B_x C_z - A_y B_y C_z + A_y B_z C_y \
= B_z (A_x C_x + A_y C_y) - C_z (A_x B_x + A_y B_y) \
\
"RHS:" B_z (A_x C_x + A_y C_y + A_z C_z) - C_z (A_x B_x + A_y B_y + A_z B_z) \
= B_z A_z C_z + B_z (A_x C_x + A_y C_y) - C_z A_z B_z - C_z (A_x B_x + A_y B_y) \
= B_z (A_x C_x + A_y C_y) - C_z (A_x B_x + A_y B_y) = "LHS" checkmark
$

Since all three components are equal, the BAC-CAB rule is proven.
]
