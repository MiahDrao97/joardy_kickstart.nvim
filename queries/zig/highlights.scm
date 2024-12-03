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
 "inline"
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
 "usingnamespace"
 "struct"
 "enum"
 "union"
 "var"
 "const"
 "extern"
 "async"
 "asm"
 "comptime"
 "addrspace"
 "align"
 "allowzero"
 "anyframe"
 "await"
 "callconv"
 "error"
 "export"
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
 "|"
 "=>"
 "="
 ] @punctuation.bracket

[
 ".*"
 "&"
 ".."
 "=="
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
    object: (identifier)
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
