#import "components.typ": body-font, variable-pagebreak

#let abstract(lang: str, body: content) = {
  set text(lang: lang)

  align(center, text(
    font: body-font,
    1em,
    weight: "semibold",
    if lang == "de" [Zusammenfassung] else [Abstract],
  ))
  linebreak()
  text(body)

  v(0.1fr)

}

#let tu-abstract(is-doublesided: bool, body-en: content, body-de: content) = {
  abstract(lang: "en", body: body-en)
  abstract(lang: "de", body: body-de)
  variable-pagebreak(is-doublesided)
}