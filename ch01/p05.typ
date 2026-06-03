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
  bold(A) = A_x bh(x) + A_y bh(y) + A_z bh(z) \
  bold(B) = B_x bh(x) + B_y bh(y) + B_z bh(z) \
  bold(C) = C_x bh(x) + C_y bh(y) + C_z bh(z) \
$
starting with lhs
$
  bold(B) times bold(C) = mat(delim: "|", bh(x), bh(y), bh(z);B_x, B_y, B_z;C_x, C_y, C_z) = (B_y C_z - B_z C_y)bh(x) + (B_z C_x - B_x C_z)bh(y) + (B_x C_y - B_y C_x)bh(z)
$
rewriting with a new matrix $bold(D)$ where
$
D_x = B_y C_z - B_z C_y\
D_y = B_z C_x - B_x C_z\
D_z = B_x C_y - B_y C_x
$
gives
$
  bold(D) = bold(B) times bold(C) = D_x bh(x) + D_y bh(y) + D_z bh(z)
$
Now
$
  bold(A) times (bold(B) times bold(C)) = bold(A) times bold(D) = mat(delim: "|", bh(x), bh(y), bh(z); A_x, A_y, A_z; D_x, D_y, D_z) = \
  = (A_y D_z - A_z D_y)bh(x) + (A_z D_x - A_x D_z)bh(y) + (A_x D_y - A_y D_x)bh(z)
$

RHS:
$
  bold(A) dot bold(C) = A_x C_x + A_y C_y + A_z C_z = P\
  bold(A) dot bold(B) = A_x B_x + A_y B_y + A_z B_z = Q \
  bold(B)(bold(A) dot bold(C)) = B_x P bh(x) + B_y P bh(y) + B_z P bh(z) \
  bold(C)(bold(A) dot bold(B)) = C_x Q bh(x) + C_y Q bh(y) + C_z Q bh(z) \
  bold(B)(bold(A) dot bold(C)) - bold(C)(bold(A) dot bold(B)) = (B_x P - C_x Q)bh(x) + (B_y P - C_y Q)bh(y) + (B_z P - C_z Q)bh(z)
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
