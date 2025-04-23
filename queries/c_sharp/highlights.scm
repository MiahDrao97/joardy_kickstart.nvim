;; inherits: c_sharp
;; extends

((identifier) @keyword (#any-of? @keyword "nameof" "_"))
("base") @keyword

((identifier) @type.builtin (#any-of? @type.builtin "dynamic"))

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

