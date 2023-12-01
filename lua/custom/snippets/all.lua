local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node

return {
    -- A snippet that expands the trigger "hi" into the string "Hello, world!".
    require("luasnip").snippet(
        {
            trig = "hi",
            dscr = "An autotriggering snippet that expands 'hi' into 'Hello, world!'",
            regTrip = false,
            priority = 100,
            snipetType = "autosnippet"
        },
        { t("Hello, world!") }
    ),

    -- To return multiple snippets, use one `return` statement per snippet file
    -- and return a table of Lua snippets.
    require("luasnip").snippet(
        { trig = "foo" },
        { t("Another snippet.") }
    ),
}
