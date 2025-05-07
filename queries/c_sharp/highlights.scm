;; inherits: c_sharp
;; extends

((identifier) @keyword (#any-of? @keyword "nameof" "_"))
["base"] @keyword

((identifier) @type.builtin (#any-of? @type.builtin "dynamic"))

(
 (parameter (
    (modifier) @keyword (#any-of? @keyword "this" "ref" "in" "out")
    type: (_)
    name: (_)
  ))
 )

(
 (lambda_expression (
    (modifier) @keyword (#any-of? @keyword "static" "async")
    parameters: (_)
    body: (_)
  ))
 )

((comment) @comment
  (#lua-match? @comment "^/%*.*%*//$")
  (#set! priority "132")
)

[
 "?"
 "??"
 "??="
 ":"
 "="
 "=>"
 ".."
 "^"
 ] @punctuation.bracket

[
 "!"
 "!="
 ] @operator.error

