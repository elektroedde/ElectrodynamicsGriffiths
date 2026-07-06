#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) How do the components of a vector transform under a translation of coordinates ($x = x, y= y - a, z = z$, Fig. 1.16a)?

(b) How do the components of a vector transform under an inversion of coordinates
($x = - x, y= - y, z = - z$, Fig. 1.16b)?

(c) How do the components of a cross product (Eq. 1.13) transform under inversion? [The cross-product of two vectors is properly called a pseudovector because of this “anomalous” behavior.] Is the cross product of two pseudovectors a vector, or a pseudovector? Name two pseudovector quantities in classical mechanics.

(d) How does the scalar triple product of three vectors transform under inversions?
(Such an object is called a pseudoscalar.)

#solution[
  (a) It will still point in the same direction, with the same components. Therefore no change.

  (b) Simply inverse all the coordinates gives
  $
    v_x arrow -ol(v)_x\
    v_y arrow -ol(v)_y\
    v_z arrow -ol(v)_z\
    arrow.b\
    vb(v) = - ol(vb(v))
  $

  (c) 
  $
    vb(A) times vb(B) arrow (-vb(A)) times (-vb(B)) = vb(A) times vb(B)
  $
So nothing happens when inversion on cross product.

  (d) 
  $
    vb(A) dot (vb(B) times vb(C)) arrow (- vb(A)) dot ((-vb(B))times (-vb(C))) = (-vb(A)) dot (vb(B) times vb(C))
  $
  so a minus sign is introduced.
]