;; inherits: zig
;; extends

[
 "defer"
 "errdefer"
 "try"
 "catch"
 ] @keyword.exception

[
 "if"
 "else"
 "orelse"
 "switch"
 ] @keyword.conditional

[
 "for"
 "while"
 "continue"
 "break"
 ] @keyword.repeat

[
 "and"
 "or"
 ] @keyword.operator

("return") @keyword.return
("fn") @keyword.function

[
 "true"
 "false"
 ] @boolean

[
 "struct"
 "enum"
 "union"
 "var"
 "const"
 "extern"
 "asm"
 "comptime"
 "addrspace"
 "align"
 "allowzero"
 "anyframe"
 "callconv"
 "error"
 "export"
 "inline"
 "linksection"
 "noalias"
 "noinline"
 "nosuspend"
 "packed"
 "pub"
 "resume"
 "suspend"
 "test"
 "threadlocal"
 "unreachable"
 "volatile"
 "null"
 "undefined"
 "opaque"
 ] @keyword

[
 "{"
 "}"
 "["
 "]"
 "("
 ")"
 "=>"
 "="
 ".."
 ] @punctuation.bracket

[
 ".*"
 "&"
 "=="
 "|"
 ] @operator.reference

("*") @punctuation.ptr

[
 "?"
 ".?"
 ] @operator.optional

[
 "!"
 "!="
 ] @operator.error

((identifier) @variable.builtin
  (#set! priority "128")
  (#eq? @variable.builtin "_")
)

(payload
  ((identifier) @variable.capture_group)
)

(call_expression
  function: (field_expression
    object: (_)+
    member: (identifier) @function.call (#set! priority "131")
  )
)

(call_expression
  function: (field_expression
    member: (identifier) @function.declaration_literal (#set! priority "130")
  )
)

(call_expression
  function: (identifier) @function.call (#set! priority "130")
)

(call_expression
  function: (error_union_type
    ok: (identifier) @function.call (#set! priority "130")
  )
)

; Constants - Redefining so their priority can be set higher than @variable.member
((identifier) @constant
  (#lua-match? @constant "^[A-Z][A-Z_0-9]+$"))

(field_expression
  .
  member: (identifier) @constant (#set! priority "126")
)
