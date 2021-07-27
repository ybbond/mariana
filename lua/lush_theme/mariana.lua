--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

vim.o.background = 'dark'
vim.o.termguicolors = true

local lush = require('lush')
local hsl = lush.hsl

local s_bold       = 'bold'
local s_italic     = 'italic'
local s_underlined = 'underline'
local s_undercurl  = 'undercurl'

local s_base00 = hsl('#303841') -- oceanic-next originally #1b2b34
local s_base01 = hsl('#343d46')
local s_base02 = hsl('#4f5b66')
local s_base03 = hsl('#65737e')
local s_base04 = hsl('#a7adba')
local s_base05 = hsl('#c0c5ce')
local s_base06 = hsl('#cdd3de')
local s_base07 = hsl('#d8dee9')
local s_red    = hsl('#ec5f67')
local s_orange = hsl('#f99157')
local s_yellow = hsl('#fac863')
local s_green  = hsl('#99c794')
local s_cyan   = hsl('#62b3b2')
local s_blue   = hsl('#6699cc')
local s_purple = hsl('#c594c5')
local s_brown  = hsl('#ab7967')
local s_white  = hsl('#ffffff')
local s_none   = ''


local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.


    Bold                                {                               gui = s_bold,                    },
    Debug                               { fg = s_red,                                                    }, --    debugging statements
    Directory                           { fg = s_blue,                                                   }, -- directory names (and other special names in listings)
    ErrorMsg                            { fg = s_red,    bg = s_base00,                                  }, -- error messages on the command line
    Exception                           { fg = s_red,                                                    }, --  try, catch, throw
    FoldColumn                          { fg = s_blue,   bg = s_base00,                                  }, -- 'foldcolumn'
    Folded                              { fg = s_base03, bg = s_base01, gui = s_italic,                  }, -- line used for closed folds
    IncSearch                           { fg = s_base01, bg = s_orange, gui = '',                        }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Italic                              {                               gui = s_italic,                  },

    Macro                               { fg = s_red,                                                    }, --    same as Define
    MatchParen                          { fg = s_base05, bg = s_base03,                                  }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                             { fg = s_green,                                                  }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg                             { fg = s_green,                                                  }, -- |more-prompt|
    Question                            { fg = s_blue,                                                   }, -- |hit-enter| prompt and yes/no questions
    Search                              { fg = s_base03, bg = s_yellow,                                  }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey                          { fg = s_base03,                                                 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    TooLong                             { fg = s_red,                                                    },
    Underlined                          { fg = s_red,                   gui = s_underlined               }, -- (preferred) text that stands out, HTML links
    Visual                              {                bg = s_base02,                                  }, -- Visual mode selection
    VisualNOS                           { fg = s_red,                                                    }, -- Visual mode selection when vim is "Not Owning the Selection".  Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                          { fg = s_red,                                                    }, -- warning messages
    WildMenu                            { fg = s_base07, bg = s_blue,                                    }, -- current match in 'wildmenu' completion
    Title                               { fg = s_blue,                                                   }, -- titles for output from ":set all", ":autocmd" etc.
    Conceal                             { fg = s_blue,   bg = s_base00,                                  }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                              { fg = s_base00, bg = s_base05,                                  }, -- character under the cursor
    NonText                             { fg = s_base03,                                                 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    Normal                              { fg = s_base07, bg = s_base00,                                  }, -- normal text
    EndOfBuffer                         { fg = s_base05, bg = s_base00,                                  }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    LineNr                              { fg = s_base03, bg = s_base00,                                  }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    SignColumn                          { fg = s_base00, bg = s_base00,                                  }, -- column where |signs| are displayed
    StatusLine                          { fg = s_base01, bg = s_base03,                                  }, -- status line of current window
    StatusLineNC                        { fg = s_base03, bg = s_base01,                                  }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    VertSplit                           { fg = s_base00, bg = s_base02,                                  }, -- the column separating vertically split windows
    ColorColumn                         {                bg = s_base01,                                  }, -- used for the columns set with 'colorcolumn'
    CursorColumn                        {                bg = s_base01,                                  }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                          {                bg = s_base01, gui = '',                        }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNR                        { fg = s_base00, bg = s_base00,                                  },
    CursorLineNr                        { fg = s_base03, bg = s_base01,                                  }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    PMenu                               { fg = s_base04, bg = s_base01,                                  },
    PMenuSel                            { fg = s_base07, bg = s_blue,                                    },
    PmenuSbar                           {                bg = s_base02,                                  }, -- Popup menu: scrollbar.
    PmenuThumb                          {                bg = s_base07,                                  }, -- Popup menu: Thumb of the scrollbar.
    TabLine                             { fg = s_base03, bg = s_base01,                                  }, -- tab pages line, not active tab page label
    TabLineFill                         { fg = s_base03, bg = s_base01,                                  }, -- tab pages line, where there are no labels
    TabLineSel                          { fg = s_green,  bg = s_base01,                                  }, -- tab pages line, active tab page label
    helpExample                         { fg = s_yellow,                                                 },
    helpCommand                         { fg = s_yellow,                                                 },

    -- Standard syntax highlighting
    Boolean                             { fg = s_orange,                                                 }, --  a boolean constant: TRUE, false
    Character                           { fg = s_red,                                                    }, --  a character constant: 'c', '\n'
    Comment                             { fg = s_base03,                gui = s_italic,                  }, -- any comment
    Conditional                         { fg = s_purple,                                                 }, --  if, then, else, endif, switch, etc.
    Constant                            { fg = s_orange,                                                 }, -- (preferred) any constant
    Define                              { fg = s_purple,                                                 }, --   preprocessor #define
    Delimiter                           { fg = s_brown,                                                  }, --  character that needs attention
    Float                               { fg = s_orange,                                                 }, --    a floating point constant: 2.3e10
    Function                            { fg = s_blue,                                                   }, -- function name (also: methods for classes)

    Identifier                          { fg = s_cyan,                                                   }, -- (preferred) any variable name
    Include                             { fg = s_blue,                                                   }, --  preprocessor #include
    Keyword                             { fg = s_purple,                                                 }, --  any other keyword

    Label                               { fg = s_yellow,                                                 }, --    case, default, etc.
    Number                              { fg = s_orange,                                                 }, --   a number constant: 234, 0xff
    Operator                            { fg = s_base05,                                                 }, -- "sizeof", "+", "*", etc.
    PreProc                             { fg = s_yellow,                                                 }, -- (preferred) generic Preprocessor
    Repeat                              { fg = s_yellow,                                                 }, --   for, do, while, etc.
    Special                             { fg = s_cyan,                                                   }, -- (preferred) any special symbol
    SpecialChar                         { fg = s_brown,                                                  }, --  special character in a constant
    Statement                           { fg = s_red,                                                    }, -- (preferred) any statement
    StorageClass                        { fg = s_yellow,                                                 }, -- static, register, volatile, etc.
    String                              { fg = s_green,                                                  }, --   a string constant: "this is a string"
    Structure                           { fg = s_purple,                                                 }, --  struct, union, enum, etc.
    Tag                                 { fg = s_yellow,                                                 }, --    you can use CTRL-] on this
    Todo                                { fg = s_yellow, bg = s_base01,                                  }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                                { fg = s_yellow,                                                 }, -- (preferred) int, long, char, etc.
    Typedef                             { fg = s_yellow,                                                 }, --  A typedef

    -- LSP
    LspDiagnosticsDefaultError          {                                                                }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsSignError             { fg = s_red,                                                    }, -- Used for "Error" signs in sign column
    LspDiagnosticsUnderlineError        {                               gui = s_undercurl,               }, -- Used to underline "Error" diagnostics

    LspDiagnosticsDefaultWarning        {                                                                }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsSignWarning           { fg = s_yellow,                                                 }, -- Used for "Warning" signs in sign column
    LspDiagnosticsUnderlineWarning      {                               gui = s_undercurl,               }, -- Used to underline "Warning" diagnostics

    LspDiagnosticsDefaultInformation    {                                                                }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsSignInformation       { fg = s_blue,                                                   }, -- Used for "Information" signs in sign column
    LspDiagnosticsUnderlineInformation  {                               gui = s_undercurl,               }, -- Used to underline "Information" diagnostics

    LspDiagnosticsDefaultHint           {                                                                }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsSignHint              { fg = s_cyan,                                                   }, -- Used for "Hint" signs in sign column
    LspDiagnosticsUnderlineHint         {                               gui = s_undercurl,               }, -- Used to underline "Hint" diagnostics


    -- TreeSitter stuff
    TSInclude                           { fg = s_cyan,                                                   },
    TSPunctBracket                      { fg = s_cyan,                                                   },
    TSPunctDelimiter                    { fg = s_base07,                                                 },
    -- TSParameter                         { fg = s_base07,                                                 }, -- duplicated in oceanic-next
    TSType                              { fg = s_blue,                                                   },
    TSFunction                          { fg = s_cyan,                                                   },

    TSTagDelimiter                      { fg = s_cyan,                                                   },
    TSProperty                          { fg = s_yellow,                                                 },
    TSMethod                            { fg = s_blue,                                                   },
    TSParameter                         { fg = s_yellow,                                                 },
    TSConstructor                       { fg = s_base07,                                                 },
    TSVariable                          { fg = s_base07,                                                 },
    TSOperator                          { fg = s_base07,                                                 },
    TSTag                               { fg = s_base07,                                                 },
    TSKeyword                           { fg = s_purple,                                                 },
    TSKeywordOperator                   { fg = s_purple,                                                 },
    TSVariableBuiltin                   { fg = s_red,                                                    },
    TSLabel                             { fg = s_cyan,                                                   },

    SpellBad                            {                               gui = s_undercurl,               }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellLocal                          {                               gui = s_undercurl,               }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellCap                            {                               gui = s_undercurl,               }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellRare                           {                               gui = s_undercurl,               }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    csClass                             { fg = s_yellow,                                                 },
    csAttribute                         { fg = s_yellow,                                                 },
    csModifier                          { fg = s_purple,                                                 },
    csType                              { fg = s_red,                                                    },
    csUnspecifiedStatement              { fg = s_blue,                                                   },
    csContextualStatement               { fg = s_purple,                                                 },
    csNewDecleration                    { fg = s_red,                                                    },
    cOperator                           { fg = s_cyan,                                                   },
    cPreCondit                          { fg = s_purple,                                                 },

    cssColor                            { fg = s_cyan,                                                   },
    cssBraces                           { fg = s_base05,                                                 },
    cssClassName                        { fg = s_purple,                                                 },


    DiffAdd                             { fg = s_green,  bg = s_base01, gui = s_bold,                    }, -- diff mode: Added line |diff.txt|
    DiffChange                          { fg = s_base03, bg = s_base01,                                  }, -- diff mode: Changed line |diff.txt|
    DiffDelete                          { fg = s_red,    bg = s_base01,                                  }, -- diff mode: Deleted line |diff.txt|
    DiffText                            { fg = s_blue,   bg = s_base01,                                  }, -- diff mode: Changed text within a changed line |diff.txt|
    DiffAdded                           { fg = s_base07, bg = s_green,  gui = s_bold,                    },
    DiffFile                            { fg = s_red,    bg = s_base00,                                  },
    DiffNewFile                         { fg = s_green,  bg = s_base00,                                  },
    DiffLine                            { fg = s_blue,   bg = s_base00,                                  },
    DiffRemoved                         { fg = s_base07, bg = s_red,    gui = s_bold,                    },

    gitCommitOverflow                   { fg = s_red,                                                    },
    gitCommitSummary                    { fg = s_green,                                                  },

    htmlBold                            { fg = s_yellow,                                                 },
    htmlItalic                          { fg = s_purple,                                                 },
    htmlTag                             { fg = s_cyan,                                                   },
    htmlEndTag                          { fg = s_cyan,                                                   },
    htmlArg                             { fg = s_yellow,                                                 },
    htmlTagName                         { fg = s_base07,                                                 },

    javaScript                          { fg = s_base05,                                                 },
    javaScriptNumber                    { fg = s_orange,                                                 },
    javaScriptBraces                    { fg = s_base05,                                                 },

    jsonKeyword                         { fg = s_green,                                                  },
    jsonQuote                           { fg = s_green,                                                  },

    markdownCode                        { fg = s_green,                                                  },
    markdownCodeBlock                   { fg = s_green,                                                  },
    markdownHeadingDelimiter            { fg = s_blue,                                                   },
    markdownItalic                      { fg = s_purple,                gui = s_italic,                  },
    markdownBold                        { fg = s_yellow,                gui = s_bold,                    },
    markdownCodeDelimiter               { fg = s_brown,                 gui = s_italic,                  },
    markdownError                       { fg = s_base05, bg = s_base00,                                  },

    typescriptParens                    { fg = s_base05, bg = s_none,                                    },

    NeomakeErrorSign                    { fg = s_red,    bg = s_base00,                                  },
    NeomakeWarningSign                  { fg = s_yellow, bg = s_base00,                                  },
    NeomakeInfoSign                     { fg = s_white,  bg = s_base00,                                  },
    NeomakeError                        { fg = s_red,                   gui = 'underline', sp = s_red    },
    NeomakeWarning                      { fg = s_red,                   gui = 'underline', sp = s_red    },

    ALEErrorSign                        { fg = s_red,    bg = s_base00, gui = s_bold,                    },
    ALEWarningSign                      { fg = s_yellow, bg = s_base00, gui = s_bold,                    },
    ALEInfoSign                         { fg = s_white,  bg = s_base00, gui = s_bold,                    },

    NERDTreeExecFile                    { fg = s_base05,                                                 },
    NERDTreeDirSlash                    { fg = s_blue,                                                   },
    NERDTreeOpenable                    { fg = s_blue,                                                   },
    NERDTreeFile                        {                bg = s_none,                                    },
    NERDTreeFlags                       { fg = s_blue,                                                   },

    phpComparison                       { fg = s_base05,                                                 },
    phpParent                           { fg = s_base05,                                                 },
    phpMemberSelector                   { fg = s_base05,                                                 },

    pythonRepeat                        { fg = s_purple,                                                 },
    pythonOperator                      { fg = s_purple,                                                 },

    rubyConstant                        { fg = s_yellow,                                                 },
    rubySymbol                          { fg = s_green,                                                  },
    rubyAttribute                       { fg = s_blue,                                                   },
    rubyInterpolation                   { fg = s_green,                                                  },
    rubyInterpolationDelimiter          { fg = s_brown,                                                  },
    rubyStringDelimiter                 { fg = s_green,                                                  },
    rubyRegexp                          { fg = s_cyan,                                                   },

    sassidChar                          { fg = s_red,                                                    },
    sassClassChar                       { fg = s_orange,                                                 },
    sassInclude                         { fg = s_purple,                                                 },
    sassMixing                          { fg = s_purple,                                                 },
    sassMixinName                       { fg = s_blue,                                                   },

    vimfilerLeaf                        { fg = s_base05,                                                 },
    vimfilerNormalFile                  { fg = s_base05, bg = s_base00,                                  },
    vimfilerOpenedFile                  { fg = s_blue,                                                   },
    vimfilerClosedFile                  { fg = s_blue,                                                   },

    GitGutterAdd                        { fg = s_green,  bg = s_base00, gui = s_bold,                    },
    GitGutterChange                     { fg = s_blue,   bg = s_base00, gui = s_bold,                    },
    GitGutterDelete                     { fg = s_red,    bg = s_base00, gui = s_bold,                    },
    GitGutterChangeDelete               { fg = s_purple, bg = s_base00, gui = s_bold,                    },

    SignifySignAdd                      { fg = s_green,  bg = s_base00, gui = s_bold,                    },
    SignifySignChange                   { fg = s_blue,   bg = s_base00, gui = s_bold,                    },
    SignifySignDelete                   { fg = s_red,    bg = s_base00, gui = s_bold,                    },
    SignifySignChangeDelete             { fg = s_purple, bg = s_base00, gui = s_bold,                    },
    SignifySignDeleteFirstLine          { fg = s_red,    bg = s_base00, gui = s_bold,                    },

    xmlTag                              { fg = s_cyan,                                                   },
    xmlTagName                          { fg = s_base05,                                                 },
    xmlEndTag                           { fg = s_cyan,                                                   },
    Defx_filename_directory             { fg = s_blue,                                                   },

    CocErrorSign                        { fg = s_red,                                                    },
    CocWarningSign                      { fg = s_yellow,                                                 },
    CocInfoSign                         { fg = s_blue,                                                   },
    CocHintSign                         { fg = s_cyan,                                                   },
    CocErrorFloat                       { fg = s_red,                                                    },
    CocWarningFloat                     { fg = s_yellow,                                                 },
    CocInfoFloat                        { fg = s_blue,                                                   },
    CocHintFloat                        { fg = s_cyan,                                                   },
    CocDiagnosticsError                 { fg = s_red,                                                    },
    CocDiagnosticsWarning               { fg = s_yellow,                                                 },
    CocDiagnosticsInfo                  { fg = s_blue,                                                   },
    CocDiagnosticsHint                  { fg = s_cyan,                                                   },
    CocSelectedText                     { fg = s_purple,                                                 },
    CocCodeLens                         { fg = s_base04,                                                 },



    -- Comment      { }, -- any comment
    -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- ErrorMsg     { }, -- error messages on the command line
    -- VertSplit    { }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: normal item.
    -- PmenuSel     { }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Constant       { }, -- (preferred) any constant
    -- String         { }, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    -- Identifier     { }, -- (preferred) any variable name
    -- Function       { }, -- function name (also: methods for classes)

    -- Statement      { }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    -- PreProc        { }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- Error          { }, -- (preferred) any erroneous construct

    -- Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
