#import "../deps.typ": radishom
#import radishom: *

#import "background.typ"
#import "components.typ": *
#import "config.typ"
#import "fonts.typ"
#import "legend.typ": *
#import "radish.typ": nj-radish


#set page(width: auto, height: auto, margin: 0pt)

#let fg = {
  if config.show-title { (title,) }
  if config.show-legend { (legend,) }
}

#radishom(
  nj-radish,
  backend: "std",
  unit-length: 2.0cm,
  grid: none,
  foreground: fg,
  background-color: background.land-fill,
  background: background.all,
  line-stroker: line-stroke,
  label-renderer: if config.show-labels { label-renderer },
  station-plugins: (draw-line-logo,),
  draw-disabled: config.show-disabled,
)

#place(bottom + right)[
  #set text(font: fonts.zh)
  #show: block.with(inset: 1em)
  #set par(spacing: 0.5em)
  #text(gray)[
    Made with Typst #sys.version

    For learning only, do not use without permission

    https://github.com/QuadnucYard/radish-metro
  ]
]
