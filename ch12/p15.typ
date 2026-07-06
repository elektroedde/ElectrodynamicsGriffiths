#import "@local/elektroedde:0.1.0": *
#show: problem

=
You probably did Prob. 12.4 from the point of view of an observer on the _ground_. Now do it from the point of view of the police car, the outlaws, and the bullet. That is, fill in the gaps in the following table:
  #table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [], [*Ground*], [*Police*], [*Outlaws*],[*Bullet*],[*Do they escape?*],
  ),
  [*Ground*],[$0$],[$1/2 c$],[$3/4 c$],[],[],
  [*Police*],[],[$0$],[],[$1/3 c$],[],
  [*Outlaws*],[],[],[$0$],[],[],
  [*Bullet*],[],[],[],[$0$],[],


)

#solution[
  The speed of the bullet relative to the ground is obtained by using Einsteins rule.
  $
    v = (v_1 + v_2)/(1 + (v_1 v_2) / c^2) = (5/6)/(1 + 1/6) = (5/6)/(7/6) = 5/7 c
  $
  With this we can also directly fill in the full first column, the speed of the ground relative to everything else.


  #table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [], [*Ground*], [*Police*], [*Outlaws*],[*Bullet*],[*Do they escape?*],
  ),
  [*Ground*],[$0$],[$1/2 c$],[$3/4 c$],table.cell(
  fill: green,
)[$5/7 c$],[*No*],
  [*Police*],table.cell(
  fill: green,
)[$-1/2 c$],[$0$],[],[$1/3 c$],[*No*],
  [*Outlaws*],table.cell(
  fill: green,
)[$-3/4 c$],[],[$0$],[],[*No*],
  [*Bullet*],table.cell(
  fill: green,
)[$-5/7 c$],[],[],[$0$],[*No*],
)

  Speed of outlaws relative to police is Einstein rule on speed of outlaws relative to ground and speed of ground relative to police.
  $
    v = (3/4 c - 1/2 c)/(1 - 3/8) = (2/8)/(5/8)c = 2/5 c
  $

  With this we can also fill in the full column of the speed of the police relative to everything.

\
\
\
\

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [], [*Ground*], [*Police*], [*Outlaws*],[*Bullet*],[*Do they escape?*],
  ),
  [*Ground*],[$0$],[$1/2 c$],[$3/4 c$],[$5/7 c$],[*No*],
  [*Police*],[$-1/2 c$],[$0$],table.cell(
  fill: green,
)[$2/5 c$],[$1/3 c$],[*No*],
  [*Outlaws*],[$-3/4 c$],table.cell(
  fill: green)[$-2/5 c$],[$0$],[],[*No*],
  [*Bullet*],[$-5/7 c$],table.cell(
  fill: green)[$-1/3$],[],[$0$],[*No*],
)

Finally, the speed of the bullet relative to the outlaws is obtained by using Einstein rule on the bullet relative to the police and the police relative to the outlaws
$
  v = (1/3 - 2/5)/(1 - 2/15) c = (-1/15)/(13/15)c = -1/13 c
$
With this we can also directly fill in the speed of the outlaws relative to the bullet.

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [], [*Ground*], [*Police*], [*Outlaws*],[*Bullet*],[*Do they escape?*],
  ),
  [*Ground*],[$0$],[$1/2 c$],[$3/4 c$],[$5/7 c$],[*No*],
  [*Police*],[$-1/2 c$],[$0$],[$2/5 c$],[$1/3 c$],[*No*],
  [*Outlaws*],[$-3/4 c$],[$-2/5 c$],[$0$],table.cell(
  fill: green)[$-1/13 c$],[*No*],
  [*Bullet*],[$-5/7 c$],[$-1/3$],table.cell(
  fill: green)[$1/13 c$],[$0$],[*No*],
)

In all cases, the speed of the bullet is less than the speed of the outlaws, so the bullet does not reach the outlaws.
]