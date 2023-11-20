return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  {
    "rust-tools.nvim",
    -- opts = function()
    --   return {
    --     server = astronvim.lsp.server_settings "rust_analyzer",
    --   }
    -- end,
opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              overrideCommand = {
                "cargo", "lints", "clippy", "--message-format=json", "--all-targets"
              },
            },
            cargo = {
              allFeatures = true,
            },
            rustfmt = {
              overrideCommand = {
                "rustup", "run", "nightly", "--", "rustfmt", "--"
              }
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
    },
  },
}
