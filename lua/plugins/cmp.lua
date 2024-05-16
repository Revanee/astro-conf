return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require("cmp")
    opts.sources = cmp.config.sources { -- Disable snippets in completion
      {
        name = "nvim_lsp",
        entry_filter = function(entry) return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind() end,
      },
    }
    -- modify the mapping part of the table
    opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
    -- borders
    opts.window.completion.border = "rounded"
    opts.window.documentation.border = "rounded"
    return opts
  end,
}
