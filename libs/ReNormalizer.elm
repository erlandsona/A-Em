module ReNormalizer exposing (css, snippets)
-- Copy Pasta from https://github.com/scottcorgan/elm-css-reset/blob/1.0.2/src/Css/Reset.elm#L96
-- until the version of elm-css get's updated

import Css exposing (..)
import Css.Elements exposing (..)

css : Stylesheet
css = stylesheet snippets

snippets : List Snippet
snippets =
  [ each
    [ html, body, div, span, selector "object", selector "iframe"
    , h1, h2, h3, h4, h5, h6, p, selector "blockquote", pre
    , a, selector "abbr", selector "acronym", selector "address", selector "big", selector "cite", selector "code"
    , selector "del", selector "dfn", selector "em", img, selector "ins", selector "kbd", selector "q", selector "s", selector "samp"
    , selector "small", selector "strike", strong, selector "sub", selector "sup", selector "tt", selector "var"
    , selector "b", selector "u", selector "i", selector "center"
    , selector "dl", selector "dt", selector "dd", ol, ul, li
    , fieldset, form, label, legend
    , table, caption, tbody, tfoot, thead, tr, th, td
    , article, selector "aside", canvas, selector "details", selector "embed"
    , selector "figure", selector "figcaption", footer, header
    , selector "menu", nav, selector "output", selector "ruby", section, selector "summary"
    , selector "time", selector "mark", audio, video
    ]
    [ margin zero
    , padding zero
    , border zero
    , fontSize (pct 100)
    -- , property "font" "inherit"
    -- , fontFamilies [ "sans-serif" ]
    , property "line-height" "1.15" -- lineHeight doesn't accept floats
    , property "-ms-text-size-adjust" "100%"
    , property "-webkit-text-size-adjust" "100%"
    , verticalAlign baseline
    ]
  , each
    [ article, selector "aside", selector "details", selector "figcaption", selector "figure"
    , footer, header, selector "menu", nav, section
    ]
    [ display block ]
  -- , body [ property "line-height" "1" ]
  -- , h1
  --   [ fontSize (em 2)
  --   -- , margin2 (em 0.67) zero
  --   ]
  -- , each
  --   [ ol, ul ]
  --   [ property "list-style" "none" ]
  , a
    [ backgroundColor transparent
    , property "-webkit-text-decoration-skip" "objects"
    , active
      [ property "outline-width" "0"
      ]
    , hover
      [ property "outline-width" "0"
      ]
    ]
  , img [ borderStyle none ]
  , each [ button, input, optgroup, select, selector "textarea" ]
    [ fontFamilies [ "sans-serif" ]
    , fontSize (pct 100)
    , property "line-height" "1.15" -- lineHeight doesn't allow floats
    , margin zero
    ]
  , each [ button, input ] [ overflow visible ]
  , each [ button, select ] [ property "text-transform" "none" ]
  , each
    [ button
    , selector "html [type=\"button\"]"
    , selector "[type=\"reset\"]"
    , selector "[type=\"submit\"]"
    ]
    [ property "-webkit-appearance" "button" ]
  , each
    [ selector "button::-moz-focus-inner"
    , selector "[type=\"button\"]::-moz-focus-inner"
    , selector "[type=\"reset\"]::-moz-focus-inner"
    , selector "[type=\"submit\"]::-moz-focus-inner"
    ]
    [ borderStyle none
    , padding zero
    ]
  , each
    [ selector "button::-moz-focusring"
    , selector "[type=\"button\"]::-moz-focusring"
    , selector "[type=\"reset\"]::-moz-focusring"
    , selector "[type=\"submit\"]::-moz-focusring"
    ]
    [ property "outline" "1px dotted ButtonText" ]
  , fieldset
    [ border3 (px 1) solid (hex "c0c0c0")
    , margin2 zero (px 2)
    , padding3 (em 0.35) (em 0.625) (em 0.75)
    ]
  , legend
    [ boxSizing borderBox
    , property "color" "inherit"
    , property "display" "table"
    , maxWidth (pct 100)
    , padding zero
    , property "white-space" "normal"
    ]
  , selector "progress"
    [ display inlineBlock
    , verticalAlign baseline
    ]
  , selector "textarea" [ overflow auto ]
  , each
    [ selector "[type=\"checkbox\"]"
    , selector "[type=\"radio\"]"
    ]
    [ boxSizing borderBox
    , padding zero
    ]
  , each
    [ selector "[type=\"number\"]::-webkit-inner-spin-button"
    , selector "[type=\"number\"]::-webkit-outer-spin-button"
    ]
    [ height auto ]
  , selector "[type=\"search\"]"
    [ property "-webkit-appearance" "textfield"
    , property "outline-offset" "-2px"
    ]
  , each
    [ selector "[type=\"search\"]::-webkit-search-cancel-button"
    , selector "[type=\"search\"]::-webkit-search-decoration"
    ]
    [ property "-webkit-appearance" "none" ]
  , selector "::-webkit-file-upload-button"
    [ property "-webkit-appearance" "button"
    , property "font" "inherit"
    ]
  , each [ selector "details", selector "menu" ] [ display block ]
  , selector "summary" [ property "display" "list-item" ]
  , canvas [ display inlineBlock ]
  , selector "template" [ display none ]
  , selector "[hidden]" [ display none ]
  , selector "figcaption figure, main" [ display block ]
  , selector "figure" [ margin2 (em 1) (px 40) ]
  , hr
    [ boxSizing contentBox
    , height zero
    , overflow visible
    ]
  , pre
    [ fontFamilies [ "monospace", "monospace" ]
    , fontSize (em 1)
    ]
  , each [ selector "b", strong ] [ fontWeight inherit ]
  , selector "abbr[title]"
    [ property "border-bottom" "none" -- borderBottom doesn't accept none
    , textDecoration underline
    , textDecoration2 underline dotted
    ]
  , each [ code, selector "kbd", selector "samp" ]
    [ fontFamilies [ "monospace", "monospace" ]
    , fontSize (em 1)
    ]
  , selector "dfn" [ fontStyle italic ]
  , selector "mark"
    [ backgroundColor (hex "ff0")
    , color (hex "000")
    ]
  , selector "small" [ fontSize (pct 80) ]
  , each [ selector "sub", selector "sup" ]
    [ fontSize (pct 75)
    , lineHeight zero
    , position relative
    , verticalAlign baseline
    ]
  , selector "sub" [ bottom (em -0.25) ]
  , selector "sup" [ top (em -0.5) ]
  , each [ audio, video ] [ display inlineBlock ]
  , selector "audio:not([controls])"
    [ display none
    , height zero
    ]
  , selector "svg:not(:root)" [ overflow hidden ]
  , each
    [ selector "blockquote" , selector "q" ]
    [ property "quotes" "none" ]
  , selector "blockquote:before, blockquote:after, q:before, q:after"
    [ property "content" ""
    , property "content" "none"
    ]
  , table
    [ property "border-collapse" "collapse"
    , property "border-spacing" "0"
    ]
  , selector
    """ [role="button"]
    , input[type="submit"]
    , input[type="reset"]
    , input[type="button"]
    , button
    """
    [ prop "-webkit-box-sizing" "content-box"
    , prop    "-moz-box-sizing" "content-box"
    ,               boxSizing    contentBox
    , prop "background" "none"
    , border zero
    , color inherit
    , cursor default
    , prop "line-height" "normal"
    , overflow visible
    , padding zero
    , textAlign center
    , textDecoration none
    , prop "white-space" "pre"
    , prop "-webkit-appearance" "button"
    , prop "-webkit-user-select" "none"
    , prop    "-moz-user-select" "none"
    , prop     "-ms-user-select" "none"
    ]
  ]

prop : String -> String -> Mixin
prop = property
