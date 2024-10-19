local M = {}
---@alias TextStyle 'none'|'italic'|'bold'

---@class UnderworldZOpts.style
---@field boolean? TextStyle -- boolean literal
---@field integer? TextStyle -- integer literal
---@field float? TextStyle -- float literal
---@field error? TextStyle -- depeding on the language, whether that be an error tag or exception
---@field comment? TextStyle
---@field function? TextStyle
---@field operator? TextStyle -- e.g. '+' or '-' or '&&'
---@field string? TextStyle -- string literal
---@field variable? TextStyle
---@field parameter? TextStyle
---@field capture? TextStyle -- identifier in a closure/lambda or a capture group
---@field m_property? TextStyle
---@field m_function? TextStyle -- i.e. a method
---@field keyword? TextStyle -- e.g. 'pub', 'fn', 'static', etc.
---@field keyword_ctrl_flow? TextStyle -- e.g. 'for', 'while', 'if', 'defer', 'try', 'catch', 'await', etc.
---@field builtin_constant? TextStyle -- e.g. 'null', 'undefined', or 'nil'
---@field builtin_variable? TextStyle -- e.g. 'this'
---@field builtin_function? TextStyle -- e.g. '@import()'
---@field preprocessor? TextStyle -- e.g. '#include' or '#pragma' or '#if'
---@field annotation? TextStyle -- e.g. '[Serializable]' or '@override'
---@field type? TextStyle -- e.g. 'int' or 'void' or 'IEnumerable<>'
---@field type_parameter? TextStyle

---@class UnderworldZOpts.colors
---@field bg? string
---@field fg? string
---@field boolean? string
---@field integer? string -- integer literal
---@field float? string -- float literal
---@field error? string -- depeding on the language, whether that be an error tag or exception
---@field comment? string
---@field function? string
---@field operator? string -- e.g. '+' or '-' or '&&'
---@field string? string -- string literal
---@field variable? string
---@field parameter? string
---@field capture? string -- identifier in a closure/lambda or a capture group
---@field m_property? string
---@field m_function? string -- i.e. a method
---@field keyword? string -- e.g. 'pub', 'fn', 'static', etc.
---@field keyword_ctrl_flow? string -- e.g. 'for', 'while', 'if', 'defer', 'try', 'catch', 'await', etc.
---@field builtin_constant? string -- e.g. 'null', 'undefined', or 'nil'
---@field builtin_variable? string -- e.g. 'this'
---@field builtin_function? string -- e.g. '@import()'
---@field preprocessor? string -- e.g. '#include' or '#pragma' or '#if'
---@field annotation? string -- e.g. '[Serializable]' or '@override'
---@field type? string -- e.g. 'int' or 'void' or 'IEnumerable<>'
---@field type_parameter? string

---@class UnderworldZOpts
---@field style? UnderworldZOpts.style
---@field colors? UnderworldZOpts.colors

---@type UnderworldZOpts
local DEFAULT = {}
return M
