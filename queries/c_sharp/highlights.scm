;; inherits: c_sharp
;; extends

((identifier) @keyword (#any-of? @keyword "nameof" "_" "dynamic"))
("base") @keyword

((comment) @comment (#set! priority "132"))

[
 "?"
 "??"
 "??="
 ":"
 "!"
 "="
 "=>"
 ] @operator.optional
