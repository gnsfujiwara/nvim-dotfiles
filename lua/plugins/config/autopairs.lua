-- nvim-autopairs setup
local autopairs_ok, autopairs = pcall(require, 'nvim-autopairs')
if not autopairs_ok then
  return
end

local rule = require 'nvim-autopairs.rule'
local cond = require 'nvim-autopairs.conds'

autopairs.setup()

-- Don't close single quotes in lisps
autopairs.add_rules({
  rule("'", '', {
    'lisp',
    'clojure',
    'scheme',
    'fennel',
  }),
})

-- Expand parentheses automatically
autopairs.add_rules({
  rule(' ', ' ')
    :with_pair(function(opts)
      local pair = opts.line:sub(opts.col - 1, opts.col)
      return vim.tbl_contains({ '()', '{}', '[]' }, pair)
    end)
    :with_move(cond.none())
    :with_cr(cond.none())
    :with_del(function(opts)
      local col = vim.api.nvim_win_get_cursor(0)[2]
      local context = opts.line:sub(col - 1, col + 2)
      return vim.tbl_contains({ '(  )', '{  }', '[  ]' }, context)
    end),
  rule('', ' )')
    :with_pair(cond.none())
    :with_move(function(opts)
      return opts.char == ')'
    end)
    :with_cr(cond.none())
    :with_del(cond.none())
    :use_key ')',
  rule('', ' }')
    :with_pair(cond.none())
    :with_move(function(opts)
      return opts.char == '}'
    end)
    :with_cr(cond.none())
    :with_del(cond.none())
    :use_key '}',
  rule('', ' ]')
    :with_pair(cond.none())
    :with_move(function(opts)
      return opts.char == ']'
    end)
    :with_cr(cond.none())
    :with_del(cond.none())
    :use_key ']',
})
