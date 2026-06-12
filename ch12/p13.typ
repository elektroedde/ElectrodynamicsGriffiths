#import "@local/elektroedde:0.1.0": *
#show: problem

=
Sophie Zabar, clairvoyante, cried out in pain at precisely the instant her twin brother, $500$ km away, hit his thumb with a hammer. A skeptical scientist observed both events (brother's accident, Sophie's cry) from an airplane traveling at $12/13 c$ to the right. Which event occurred first, according to the scientist?
How much earlier was it, in seconds?

#solution[
  Using the Lorentz transformations
  $
    ol(x) = gamma(x - v t)\
    ol(t) = gamma(t - v/c^2 x)
  $
  and setting Sophie's position to $x=500"km"$, and her brothers position to $x = 0"km"$.
  The time of the brothers event according to the scientist is
  $
    ol(t)_1 = 1/sqrt(1-12^2/13^2)(0 - 12/(13 c) 0) = 0"s"
  $
  The time of Sophie's event is
  $
    ol(t)_2 =1/sqrt(1-12^2/13^2)(0 - 12/(13 c) 500 "km") = 1/sqrt(25/169) (-12/(13c)500"km") =\
    = -13/5 12/(13c) 500"km" = -1200000/c "m" = -0.004 "s" = -4"ms" 
  $
  The twin brothers event happened $4$ms earlier according to the scientist.
]