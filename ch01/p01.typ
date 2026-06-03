#import "@local/elektroedde:0.1.0": *
#show: problem

=
Show that the dot product and cross product is distributive

#solution[
  Let the three vectors be
  $
    bold(v)_1 = [a, b, c]\
    bold(v)_2 = [d, e, f]\
    bold(v)_3 = [g, h, i]
  $
  dot product:

  Show
  $
    bold(v)_1 dot (bold(v)_2 + bold(v)_3) = bold(v_1) dot bold(v)_2 + bold(v_1) dot bold(v)_3
  $
  Using
  $
    bold(v)_2 + bold(v)_3 = [d+g, e+h, f+i]\
    bold(v)_1 dot bold(v)_2 = a d + b e + c f\
    bold(v)_1 dot bold(v)_3 = a g + b h + c i
  $

  LHS:
  $
    bold(v)_1 dot (bold(v)_2 + bold(v)_3) = [a, b, c] dot [d+g, e+h, f+i] =\
    = a(d+g) + b(e+h) + c(f+i)
  $

  RHS:
  $
    bold(v)_1 dot bold(v)_2 + bold(v)_1 + bold(v)_3 = a d + b e + c f + a g + b h + c i = \
    = a(d+g) + b(e+h)+c(f+i)
  $

  cross product:
  Show 
  $
    bold(v)_1 times (bold(v)_2 + bold(v)_3) = (bold(v)_1 times bold(v)_2) + (bold(v)_1 times bold(v)_3)
  $

  Using
  $
    bold(v)_2 + bold(v)_3 = [d+g, e+h, f+i]\
    bold(v)_1 times bold(v)_2 = b f - c e + c d - a f + a e - b d\
    bold(v)_1 times bold(v)_3 = b i - c h + c g - a i + a h - b g \
  $
  which gives
  $
    (bold(v)_1 times bold(v)_2) + (bold(v)_1 times bold(v)_3) = a(e + h - f - i) + b(f+i-d-g) + c(d + g - e - h)
  $
  and LHS:
  $
      bold(v)_1 times (bold(v)_2 + bold(v)_3) = b(f+i)-c(e+h)+c(d+g)-a(f+i)+a(e+h)-b(d+g) =\
    = b f + b i - c e - c h + c d + c g - a f - a i + a e + a h - b d - b g = \
    = a(e + h - f - i) + b(f+i-d-g) + c(d + g - e - h)
  $

]