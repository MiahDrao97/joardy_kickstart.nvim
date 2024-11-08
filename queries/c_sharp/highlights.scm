;; inherits: c_sharp
;; extends

((identifier) @keyword (#any-of? @keyword "nameof" "_" "dynamic"))
("base") @keyword

[
 "?"
 "??"
 "??="
 ":"
 "!"
 "="
 "=>"
 ] @operator.optional
