local function hi(fg, bg, special, specialcol)
  return { fg = fg, bg = bg, special = special, specialcol = specialcol }
end

local pal = {
  bg = {
    alt0 = '#35180e',
    alt1 = '#502c18',
    alt2 = '#552c33'
  },

  fg = {
    alt0 = '#e0da9a',
    alt1 = '#d09a8a',
  },

  attention = {
    error = { 
      fg = '#c01111',
      bg = '#ffdddd'
    },

    warn = {
      fg = '#b06000',
      bg = '#f8f080'
    },

    info =  {
      fg = '#1144d0',
      bg = '#77d0d9'
    },

    search = {
      fg = '#35180e',
      bg = '#90ff40'
    }
  },

  dialog = {
    bg1 = '#e0d890',
    fg1 = '#201010',
    hibg = '#402020',
  },

  vars = {
    alt0 = '#99e194',
    alt1 = '#94e1a5',
    alt2 = '#bee194',
  },

  funcs = {
    alt0 = '#e1ca94',
    alt1 = '#e1df94',
    alt2 = '#e1c294'
  },

  comment = {
    alt0 = '#777777',
    alt1 = '#997777' 
  },

  literals = {
    alt0 = '#e8d0d0',
    alt1 = '#ebcdcd',
    alt2 = '#ebd8cd'
  },

  types = {
    alt0 = '#94e1c9',
    alt1 = '#94d5e1',
    alt2 = '#94e1ce'
  },


  punc = {
    alt0 = '#e0e0e0',
    alt1 = '#e0e0f0'
  },

  keyword = {
    alt0 = '#d394e1',
    alt1 = '#c794e1',
    alt2 = '#e194da'
  },

  macro = {
    alt0 = '#e194ab',
    alt1 = '#e19495',
    alt2 = '#e1a494'
  },

  metadata = {
    alt0 = '#a4bcb0',
    alt1 = '#bbbca4',
    alt2 = '#bca4b5'
  },

  scope = {
    alt0 = '#9c94e1',
    alt0 = '#a841e1',
    alt0 = '#94b0e1'
  },
}

local scheme = {

-- ================== UI =========================

          Normal = hi(pal.fg.alt0, pal.bg.alt0, nil, nil), 
        NormalNC = hi(pal.fg.alt1, '#2a1a10', nil, nil),   -- Normal text in non-current windows

          Cursor = hi(nil, '#ffc040', nil, nil),  -- for the cursor highlights to work, 
         nCursor = hi(nil, '#55c0c9', nil, nil),  -- the highlight group will need to be set for
         vCursor = hi(nil, '#44dd44', nil, nil),  -- the cursor, e.g.
         iCursor = hi(nil, '#f0c080', nil, nil),  -- set guicursor=n:block-nCursor
         rCursor = hi(nil, '#e04444', nil, nil), 
         cCursor = hi(nil, '#d0d000', nil, nil),
         oCursor = hi(nil, '#ffc000', nil, nil),

        CursorIM = hi(nil, nil, 'bold', nil),      -- for IME mode (inputing multibyte characters)
    CursorColumn = hi(nil, pal.bg.alt1, nil, nil),   -- for when cursorcolumn is set
      CursorLine = hi(nil, pal.bg.alt1, nil, nil),     -- for when cursorline is set

          LineNr = hi(pal.fg.alt1, pal.bg.alt1, 'italic', nil),
    CursorLineNr = hi(pal.fg.alt0, pal.bg.alt0, 'bold,italic', nil),
      SignColumn = hi(pal.fg.alt1, pal.bg.alt2, nil, nil),
  CursorLineSign = hi(nil, pal.bg.alt1, nil, nil), 

      StatusLine = hi(pal.fg.alt0, '#7f5107', nil, nil),
    StatusLineNC = hi(pal.fg.alt1, '#2a1a10', nil, nil),
    QuickFixLine = hi(pal.fg.alt0, pal.bg.alt1, nil, nil),

          WinBar = hi(pal.fg.alt2, pal.bg.alt2, nil, nil),
        WinBarNC = hi(pal.fg.alt1, pal.bg.alt1, nil),
    WinSeparator = hi(pal.fg.alt1, pal.bg.alt1, nil, nil),

         Tabline = hi(pal.bg.alt0, '#9f8f4f', 'italic', nil),
     TabLineFill = hi(nil, '#908040', nil, nil),
      TabLineSel = hi(pal.fg.alt0, pal.bg.alt1, 'bold,italic', nil),

      MatchParen = hi(pal.bg.alt0, '#80e080', nil, nil),

     EndOfBuffer = hi(nil, '#381a12', nil, nil),    -- Bottom of screen when scrolled up
         NonText = hi(nil, '#382018', nil, nil), 
      Whitespace = hi(nil, pal.bg.alt1, nil, nil),

          Visual = hi(nil, '#583020', nil, nil),
       VisualNOS = hi(nil, '#584030', nil, nil),  -- for when window does not have focus (X11 only)

         Conceal = hi(pal.fg.alt2, pal.bg.alt2, nil, nil), 

        ErrorMsg = hi(pal.attention.error.fg, pal.attention.error.bg, 'bold', nil),   -- error messages displayed on the command line
         MoreMsg = hi(pal.attention.info.fg, pal.attention.info.bg, nil, nil),
      WarningMsg = hi(pal.attention.warn.fg, pal.attention.warn.bg, nil, nil),
         ModeMsg = hi(pal.attention.info.fg, pal.attention.info.bg, nil, nil),

          Folded = hi(pal.fg.alt1, pal.bg.alt1, nil, nil),
      FoldColumn = hi(pal.fg.alt1, pal.bg.alt1, 'bold', nil),

          Search = hi(pal.attention.search.fg, pal.attention.search.bg, nil, nil),
       CurSearch = hi(pal.attention.search.fg, pal.attention.search.bg, 'bold', nil),
       IncSearch = hi(pal.attention.search.fg, pal.attention.search.bg, 'bold', nil),

        SpellBad = hi('#f02020', pal.bg.alt0, 'bold,undercurl', '#f02020'),
        SpellCap = hi(nil, nil, 'undercurl', pal.funcs.alt0),
       SpellRare = hi(nil, nil, 'undercurl', pal.types.alt1),
      SpellLocal = hi(nil, nil, 'undercurl', pal.literals.alt2),

       Directory = hi('#8080ff', nil, nil, nil),

         DiffAdd = hi('#00e000', pal.bg.alt2, nil, nil),
      DiffDelete = hi('#e00000', pal.bg.alt2, nil, nil),
      DiffChange = hi('#e0e000', pal.bg.alt2, nil, nil),
        DiffText = hi(pal.fg.alt0, pal.bg.alt2, 'underline', pal.fg.alt0),

      SpecialKey = hi('#88ff88', nil, nil, nil),

           Pmenu = hi(pal.dialog.fg1, pal.dialog.bg1, nil, nil),
        PmenuSel = hi(pal.dialog.bg1, pal.dialog.hibg, nil, nil),

        Question = hi(pal.attention.info.fg, pal.attention.info.bg, nil, nil),
    MsgSeparator = hi(pal.fg.alt1, pal.bg.alt1, nil, nil),
           Title = hi(pal.fg.alt1, nil, nil, nil),
        WildMenu = hi(pal.fg.alt1, pal.bg.alt1, nil, nil),

            Todo = hi(pal.bg.alt0, pal.attention.warn.bg, 'bold', nil),

-- ================== Telescope =========================

          TelescopeBorder = hi(pal.fg.alt0, pal.bg.alt1, nil, nil), 
          TelescopeNormal = hi(pal.fg.alt0, pal.bg.alt1, nil, nil),
       TelescopeSelection = hi(pal.fg.alt1, pal.bg.alt0, nil, nil),
  TelescopeSelectionCaret = hi(pal.attention.search.bg, nil, nil, nil),
  TelescopeMultiSelection = hi(pal.attention.search.fg, pal.attention.search.bg, nil, nil),
        TelescopeMatching = hi(pal.attention.search.fg, pal.attention.search.bg, nil, nil),

-- ================== VIM Syntax =========================

         Comment = hi(pal.comment.alt0, nil, 'italic', nil),
  SpecialComment = hi(pal.comment.alt1, nil, nil, nil),
        Operator = hi(pal.punc.alt1, nil, nil, nil),

        Constant = hi(pal.literals.alt1, nil, nil, nil),
          String = hi(pal.literals.alt0, nil, nil, nil),
       Character = hi(pal.literals.alt1, nil, nil, nil),
          Number = hi(pal.literals.alt0, nil, nil, nil),
         Boolean = hi(pal.literals.alt0, nil, nil, nil),
           Float = hi(pal.literals.alt0, nil, nil, nil),

      Identifier = hi(pal.vars.alt0, nil, nil, nil),
        Function = hi(pal.funcs.alt0, nil, nil, nil),

       Statement = hi(pal.fg.alt0, nil, nil, nil),
     Conditional = hi(pal.keyword.alt0, nil, 'italic', nil),
          Repeat = hi(pal.keyword.alt1, nil, 'italic', nil),
           Label = hi(pal.keyword.alt0, nil, 'bold,underline', nil),
         Keyword = hi(pal.keyword.alt0, nil, 'italic', nil),
       Exception = hi(pal.keyword.alt2, nil, 'italic', nil),

         PreProc = hi(pal.macro.alt1, nil, nil, nil),
         Include = hi(pal.macro.alt0, nil, nil, nil),
          Define = hi(pal.macro.alt1, nil, nil, nil),
           Macro = hi(pal.macro.alt1, nil, nil, nil),
       PreCondit = hi(pal.macro.alt1, nil, nil, nil),

            Type = hi(pal.types.alt0, nil, nil, nil),
    StorageClass = hi(pal.types.alt1, nil, nil, nil),
       Structure = hi(pal.types.alt2, nil, nil, nil),
         Typedef = hi(pal.types.alt1, nil, nil, nil),

         Special = hi(pal.literals.alt1, nil, nil, nil),
     SpecialChar = hi(pal.literals.alt1, nil, 'bold', nil),
       Delimiter = hi(pal.punc.alt0, nil, nil, nil),
           Debug = hi(pal.bg.alt0, pal.funcs.alt0, 'bold', nil),            -- Debugging statements

      Underlined = hi(nil, nil, 'underline', nil),

          Ignore = hi(nil, nil, nil, nil),

           Error = hi(pal.attention.error.fg, pal.attention.error.bg, 'bold,underline', nil),  -- any erroneous construct

-- ================== Diagnostic =========================

         DiagnosticSignError = hi('#c01111', '#e03030', nil, nil),
          DiagnosticSignWarn = hi('#402a0e', '#e0e020', nil, nil),
          DiagnosticSignInfo = hi('#322124', '#e070d0', nil, nil),
          DiagnosticSignHint = hi('#352416', '#20e0e0', nil, nil),
  DiagnosticVirtualTextError = hi('#ffa0a0', '#581803', nil, nil), 
   DiagnosticVirtualTextWarn = hi('#f0f060', '#402a0e', nil, nil),
   DiagnosticVirtualTextInfo = hi('#f080f0', '#322a24', nil, nil),
   DiagnosticVirtualTextHint = hi('#00f0f0', '#352416', nil, nil),
    DiagnosticUnderlineError = hi(nil, nil, 'undercurl', '#ff3030'),
     DiagnosticUnderlineWarn = hi(nil, nil, 'undercurl', '#f0f060'),
     DiagnosticUnderlineInfo = hi(nil, nil, 'undercurl', '#f080f0'),
     DiagnosticUnderlineHint = hi(nil, nil, 'undercurl', '#00f0f0'),

-- ================== DAP =========================

                      DapSign = hi('#f0b033', pal.bg.alt1, nil, nil),
              DapRejectedSign = hi('#ff2222', pal.bg.alt1, nil, nil),
               DapStoppedSign = hi(pal.bg.alt1, '#f0b000', nil, nil),

                DapUIVariable = hi(pal.vars.alt0, nil, nil, nil), 
                   DapUIScope = hi(pal.scope.alt0, nil, nil, nil),
                    DapUIType = hi(pal.types.alt0, nil, nil, nil),
                   DapUIValue = hi(pal.literals.alt0, nil, nil, nil), 
           DapUIModifiedValue = hi(pal.attention.info.fg, pal.attention.info.bg, nil, nil), 
              DapUIDecoration = hi(pal.fg.alt0, nil, nil, nil),
                  DapUIThread = hi(pal.bg.alt0, pal.funcs.alt0, nil, nil),
           DapUIStoppedThread = hi(pal.funcs.alt1, nil, 'bold', nil),
               DapUIFrameName = hi(pal.funcs.alt0, nil, nil, nil),
                  DapUISource = hi(pal.fg.alt0, nil, nil, nil),
              DapUILineNumber = hi(pal.fg.alt1, nil, 'italic', nil), 
             DapUIFloatNormal = hi(nil, pal.bg.alt2, nil, nil),
             DapUIFloatBorder = hi(nil, pal.bg.alt2, nil, nil),
            DapUIWatchesEmpty = hi(pal.fg.alt0, nil, nil, nil),
            DapUIWatchesValue = hi(pal.fg.alt1, nil, nil, nil),
            DapUIWatchesError = hi(pal.attention.error.fg, pal.attention.error.bg, nil, nil),
         DapUIBreakpointsPath = 'DapUISource',
         DapUIBreakpointsInfo = hi(pal.fg.alt1, pal.bg.alt0, nil, nil),
  DapUIBreakpointsCurrentLine = hi(pal.fg.alt1, pal.bg.alt0, nil, nil),
         DapUIBreakpointsLine = 'DapUILineNumber',
  DapUIBreakpointsDisableLine = hi(pal.fg.alt0, pal.bg.alt0, nil, nil, nil),
        DapUICurrentFrameName = hi(pal.funcs.alt2, nil, nil, nil),
                DapUIStepOver = hi('#f09000', nil, nil, nil),
                DapUIStepInto = hi('#f09000', nil, nil, nil),
                DapUIStepBack = hi(pal.fg.alt0, nil, nil, nil),
                 DapUIStepOut = hi('#f09000', nil, nil, nil),
                    DapUIStop = hi('#ff7777', nil, nil, nil, nil),
               DapUIPlayPause = hi('#44aa55', nil, nil, nil), 
                 DapUIRestart = hi('#44aa55', nil, nil, nil),
             DapUIUnavailable = hi(pal.fg.alt1, nil, nil, nil),

-- Treesitter  ===============================================================================

              ['@todo'] = 'Todo',

               ['@text.title'] =  hi(pal.keyword.alt0, nil, 'bold', nil),
             ['@text.literal'] = hi(pal.literals.alt0, nil, nil, nil),
           ['@text.reference'] = hi(pal.funcs.alt1, nil, 'italic', nil), 
                 ['@text.uri'] = hi(pal.funcs.alt0, nil, 'underline', nil),
           ['@text.underline'] = hi(nil, nil, 'underline', nil),
                ['@text.todo'] = 'Todo',
            ['@text.emphasis'] = hi(pal.fg.alt1, nil, 'underline', nil),
              ['@text.strike'] = hi(nil, nil, 'strikethrough', nil),
              ['@text.strong'] = hi(pal.fg.alt2, nil, 'underline,bold', nil),
                ['@text.warn'] = hi(pal.attention.warn.fg, pal.attention.warn.bg, nil, nil),
              ['@text.danger'] = hi(pal.attention.error.fg, pal.attention.error.bg, nil, nil),
                ['@text.note'] = hi(pal.vars.alt0, nil, nil, nil),
                ['@text.math'] = hi(nil, nil, 'italic', nil),
         ['@text.environment'] = hi(nil, nil, 'italic', nil),

                  ['@comment'] = hi(pal.comment.alt0, nil, 'italic', nil), 

              ['@punctuation'] = hi(pal.punc.alt0, nil, nil, nil),
    ['@punctuation.delimiter'] = hi(pal.punc.alt0, nil, nil, nil),
      ['@punctuation.bracket'] = hi(pal.punc.alt0, nil, nil, nil),
      ['@punctuation.special'] = hi(pal.punc.alt0, nil, nil, nil),
                 ['@operator'] = hi(pal.punc.alt0, nil, nil, nil),

                 ['@constant'] = hi(pal.literals.alt0, nil, nil, nil), 
         ['@constant.builtin'] = hi(pal.literals.alt2, nil, nil, nil),
                   ['@string'] = hi(pal.literals.alt0, nil, nil, nil),
            ['@string.escape'] = hi(pal.literals.alt2, nil, "bold", nil),
           ['@string.special'] = hi(pal.literals.alt2, nil, "bold", nil),
                ['@character'] = hi(pal.literals.alt1, nil, nil, nil),
        ['@character.special'] = hi(pal.literals.alt1, nil, "bold", nil),
                   ['@number'] = hi(pal.literals.alt1, nil, nil, nil),
                  ['@boolean'] = hi(pal.literals.alt1, nil, nil, nil),
                    ['@float'] = hi(pal.literals.alt1, nil, nil, nil), 

                   ['@method'] = hi(pal.funcs.alt0, nil, nil, nil),
              ['@method.call'] = hi(pal.funcs.alt0, nil, nil, nil),
                 ['@function'] = hi(pal.funcs.alt1, nil, nil, nil),
            ['@function.call'] = hi(pal.funcs.alt1, nil, nil, nil),
         ['@function.builtin'] = hi(pal.funcs.alt2, nil, nil, nil),

              ['@conditional'] = hi(pal.keyword.alt0, nil, nil),
                   ['@repeat'] = hi(pal.keyword.alt0, nil, nil, nil),
                    ['@label'] = hi(pal.keyword.alt2, nil, 'bold', nil),
                  ['@keyword'] = hi(pal.keyword.alt0, nil, nil, nil),
           ['@keyword.return'] = hi(pal.keyword.alt1, nil, nil, nil),
         ['@keyword.function'] = hi(pal.keyword.alt1, nil, nil, nil),
         ['@keyword.operator'] = hi(pal.keyword.alt2, nil, nil, nil), 
                ['@exception'] = hi(pal.keyword.alt2, nil, nil, nil),

                 ['@variable'] = hi(pal.vars.alt0, nil, nil, nil),
         ['@variable.builtin'] = hi(pal.vars.alt2, nil, nil, nil), 
                ['@parameter'] = hi(pal.vars.alt1, nil, nil),

      ['@parameter.reference'] = hi(pal.vars.alt1, nil, nil, nil), 
                    ['@field'] = hi(pal.vars.alt1, nil, nil, nil),
                 ['@property'] = hi(pal.vars.alt2, nil, nil, nil),

                     ['@type'] = hi(pal.types.alt0, nil, nil, nil),
          ['@type.definition'] = hi(pal.types.alt0, nil, nil, nil),
           ['@type.qualifier'] = hi(pal.types.alt0, nil, nil, nil),
             ['@type.builtin'] = hi(pal.types.alt1, nil, nil, nil), 
             ['@storageclass'] = hi(pal.types.alt0, nil, nil, nil),
                ['@structure'] = hi(pal.types.alt0, nil, nil, nil),
              ['@constructor'] = hi(pal.types.alt0, nil, nil, nil),

                ['@namespace'] = hi(pal.scope.alt0, nil, nil, nil),

                  ['@include'] = hi(pal.macro.alt0, nil, nil, nil),
                  ['@preproc'] = hi(pal.macro.alt0, nil, 'bold', nil),
                   ['@define'] = hi(pal.macro.alt0, nil, 'bold', nil),
           ['@constant.macro'] = hi(pal.macro.alt0, nil, nil, nil),
           ['@function.macro'] = hi(pal.macro.alt0, nil, nil, nil),
                    ['@macro'] = hi(pal.macro.alt0, nil, nil, nil),
                ['@attribute'] = hi(pal.macro.alt1, nil, 'bold', nil),
            
               ['@annotation'] = hi(pal.metadata.alt0, nil, 'bold', nil),

    -- LSP  ===============================================================================

          ['@lsp.type.class'] = hi(pal.types.alt0, nil, nil, nil),
        ['@lsp.type.comment'] = hi(pal.comment.alt0, nil, nil, nil),
      ['@lsp.type.decorator'] = hi(pal.metadata.alt0, nil, nil, nil),
           ['@lsp.type.enum'] = hi(pal.types.alt1, nil, nil, nil),
     ['@lsp.type.enumMember'] = hi(pal.literals.alt2, nil, nil, nil),
       ['@lsp.type.function'] = hi(pal.funcs.alt0, nil, nil, nil),
      ['@lsp.type.interface'] = hi(pal.types.alt2, nil, nil, nil),
          ['@lsp.type.macro'] = hi(pal.macro.alt0, nil, nil, nil),
         ['@lsp.type.method'] = hi(pal.funcs.alt1, nil, nil, nil),
      ['@lsp.type.namespace'] = hi(pal.scope.alt0, nil, nil, nil),
      ['@lsp.type.parameter'] = hi(pal.vars.alt1, nil, nil, nil),
       ['@lsp.type.property'] = hi(pal.vars.alt2, nil, nil, nil),
         ['@lsp.type.struct'] = hi(pal.types.alt0, nil, nil, nil),
           ['@lsp.type.type'] = hi(pal.types.alt0, nil, nil, nil),
  ['@lsp.type.typeParameter'] = hi(pal.vars.alt2, nil, nil, nil),
       ['@lsp.type.variable'] = hi(pal.vars.alt0, nil, nil, nil),
}


local function highlight(group, style)
  local fg = style.fg and 'guifg=' .. style.fg or 'guifg=NONE'
  local bg = style.bg and 'guibg=' .. style.bg or 'guibg=NONE'
  local st = style.special and 'gui=' .. style.special or 'gui=NONE'
  local sp = style.specialcol and 'guisp=' .. style.specialcol or ''

  vim.cmd('highlight ' .. group .. ' ' .. st .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

local function link(from, to)
  vim.cmd('highlight link ' .. from .. ' ' .. to)
end

local M = {}

M.colorscheme = function()
  if (vim.fn.exists('syntax_on')) then
    vim.cmd('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  for group, style in pairs(scheme) do
    if (type(style) == 'string') then
      link(group, style)
    else
      highlight(group, style)
    end
  end
end


return M
