#let bh(content) = $bold(hat(content))$

#let solution(body) = {
  block(
    width: 100%,
    fill: rgb("#e8f5e9"), //e8f5e9
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
