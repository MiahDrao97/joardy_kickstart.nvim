;; inherits: zig
;; extends

(if_statement
  (payload
    ((identifier) @local.definition.parameter (#set! definition.parameter.scope "parent"))
  )
)

((block) @local.scope)
