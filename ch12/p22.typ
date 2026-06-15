#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Draw a space-time diagram representing a game of catch (or a conversation) between two people at rest, 10 ft apart. How is it possible for them to communicate, given that their separation is spacelike?

(b) There's an old limerick that runs as follows:

#par(
  first-line-indent: 2em,
  hanging-indent: 2em,
)[
There once was a girl named Ms. Bright,\
Who could travel much faster than light.\
She departed one day,\
The Einsteinian way,\
And returned on the previous night.\
]

What do you think? Even if she could travel faster than light, could she return before
she set out? Could she arrive at some intermediate destination before she set out?
Draw a space-time diagram representing this trip.
#solution[

  (a) #align(center)[
    #canvas(length: 3cm, {
      import draw: *
      line((-0.25,0),(-0.25,2), stroke: (dash: "dashed"))
      line((0.25,0),(0.25,2), stroke: (dash: "dashed"))

      line((-0.25,0),(0.25,0.5), mark: (end: "stealth"))
      line((0.25,1),(-0.25,1.5), mark: (end: "stealth"))

    }
    
    )
  ]

  You don't communicate with the person at the insant, but a future version of the person.
 
(b) No, travelling faster than light still makes you advance upwards in time.
  #align(center)[
    #canvas(length: 3cm, {
    import draw: *
    let plus-color = rgb("#b6b6b6").transparentize(70%)
    line((-1.5,0),(1.5,0), mark: (end: "stealth"))
    content((),$x$, anchor: "west")
    line((0,-1.5),(0,1.5), mark: (end: "stealth"))
    content((),$c t$, anchor: "south")

    merge-path(fill: plus-color, {
    line((-1, -1), (1, 1),(-1,1),(1,-1),(-1,-1))
    })
    line((0,0),(0.7,0.3),mark:(end:"stealth"), stroke: (paint: red))
    line(color: red, (0.7,0.3),(0,0.6),mark:(end:"stealth"), stroke: (paint: red))


    })]

    (Unless it's possible to travel downwards?)




  
  
]