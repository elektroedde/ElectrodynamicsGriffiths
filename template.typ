#import "@preview/physica:0.9.8": *
#import "@preview/mannot:0.3.3": *
#import "@preview/cetz:0.5.2": *
#let myfont = "New Computer Modern Math"
#let problem(body) = {
  show math.equation: set text(font: myfont)
  show math.epsilon: math.epsilon.alt
  show math.nabla: math.bold(math.nabla)
  body
}

#let bh(content) = $bold(hat(content))$
#let solution(body) = {
show math.equation: set text(font: myfont)
  block(
    width: 100%,
    fill: rgb("#c8ffad"), //e8f5e9
    radius: 4pt,
    inset: 12pt,
  )[
    #text(size: 14pt, weight: "bold")[Solution:]
    #v(0.3em)
    #body
    $square$
  ]
  v(0.3em)
  line(length: 60%, stroke: 0.6pt)
}

#let projection(a, b) = $
                          P_([#a])#b
                        $
#let innerp(a, b) = $
                      (#a | #b)
                    $
#let projectionfull(a, b) = $
                              innerp(#a, #b)/innerp(#a, #a)#a
                            $
#let cal(s) = text(font: "jsMath-cmsy10")[#math.upright(s)]
#let scrr = box(baseline: 20%, image("symbols/ScriptR.pdf", height: 0.7em))
#let bscrr = box(baseline: 20%, image("symbols/BoldR.pdf", height: 0.7em))
#let hscrr = $hat(#box(baseline: 20%, image("symbols/ScriptR.pdf", height: 0.65em)))$

#let infint = $
                integral_(-infinity)^infinity
              $
#let integr(a, b, c, d) = $limits(integral)_#a^#b #c dif #d$
#let integr2(a1, b1, a2, b2, c, d1, d2) = $limits(integral)_#a1^#b1 limits(integral)_#a2^#b2 #c dif #d1 dif #d2$

#let grad(A) = $
                 pdv(#A, x)bh(x) + pdv(#A, y)bh(y) + pdv(#A, z)bh(z)
               $

#let curldef(B) = $(pdv(#B _z, y)-pdv(#B _y,z))bh(x) + (pdv(#B _x, z)-pdv(#B _z,x))bh(y) + (pdv(#B _y, x)-pdv(#B _x,y))bh(z)$

#let curlc(x, y, z) = $(pdv(#z, y)-pdv(#y,z))bh(x) + (pdv(#x, z)-pdv(#z,x))bh(y) + (pdv(#y, x)-pdv(#x,y))bh(z)$

#let divergence(A) = $pdv(#A _x, x) + pdv(#A _y, y) + pdv(#A _z, z)$

#let cross(A, B) = $(#A _y #B _z - #A _z #B _y)bh(x) + (#A _z #B _x - #A _x #B _z)bh(y) + (#A _x #B _y - #A _y #B _x)bh(z)$

#let dotnabla(A, B) = $
  (#A _x pdv(#B _x, x) + #A _y pdv(#B _x, y) + #A _z pdv(#B _x, z))bh(x) \
  +(#A _x pdv(#B _y, x) + #A _y pdv(#B _y, y) + #A _z pdv(#B _y, z))bh(y) \
  "  "+(#A _x pdv(#B _z, x) + #A _y pdv(#B _z, y) + #A _z pdv(#B _z, z))bh(z)
$

#let volint(A) = $
                   integral_V #A dif tau
                 $
#let surfint(A) = $
                    integral_S #A dot dif bold(a)
                  $

#let surfintc(A) = $
              integral.cont_S #A dot dif bold(a)
            $
#let lineintc(A) = $
                     integral.cont_P #A dot dif bold(l)
                   $
#let ans(body) = box(
  baseline: 40%,
  fill: rgb("#fff9c4"),
  stroke: 0.8pt + rgb("#f9a825"),
  inset: (x: 5pt, y: 10pt),
  radius: 3pt,
  $display(#body)$
)

#let chapter(title: "", number: 1, body) = {
  
  set document(title: title, author: "Edvin")

  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 3cm),
    numbering: "1",
    header: context {
      if counter(page).get().first() > 1 {
        align(right, text(size: 9pt, fill: gray)[#title])
        line(length: 100%, stroke: 0.4pt + gray)
      }
    },
  )
  


  set text(font: "New Computer Modern", size: 11pt)

  

  set par(justify: true, leading: 0.65em)

  set heading(numbering: (..nums) => {
    let vals = nums.pos()
    "Problem " + numbering("1.1", number, ..vals)
  })



  show heading.where(level: 1): it => {
    v(1em)
    text(size: 14pt, weight: "bold", it)
    v(0.4em)
  }

  show heading.where(level: 2): it => {
    v(0.6em)
    text(size: 12pt, weight: "bold", it)
    v(0.2em)
  }


  // Title block
  align(center)[
    #v(1cm)
    #text(size: 10pt, fill: gray)[Chapter #number]
    #v(0.3cm)
    #text(size: 20pt, weight: "bold")[#title]
    #v(0.2cm)
    #line(length: 60%, stroke: 0.6pt)
    #v(1cm)
    
  ]

  show math.epsilon: math.epsilon.alt
  show math.nabla: math.bold(math.nabla)
  

  body
}

