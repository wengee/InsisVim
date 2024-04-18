require("insis").setup({
  colorscheme = "tokyonight",
  php = {
    enable = true,
    format_on_save = true,
  },
  bash = {
    enable = true,
    format_on_save = true,
  },
  json = {
    enable = true,
    format_on_save = true,
  },
  python = {
    enable = true,
    format_on_save = true,
  },
  yaml = {
    enable = true,
    format_on_save = true,
  },
  markdown = {
    enable = true,
    format_on_save = true,
  },
  toml = {
    enable = true,
    format_on_save = true,
  },
  frontend = {
    enable = true,
    ---@type "eslint" | false
    linter = "eslint", -- :EslintFixAll command added
    ---@type false | "prettier" | "tsserver"
    formatter = "tsserver",
    format_on_save = true,
    cspell = false,
    tailwindcss = true,
    prisma = false,
    -- vue will take over typescript lsp
    vue = true,
    -- extra lsp command provided by typescript.nvim
    typescript = {
      keys = {
        ts_organize = "gs",
        ts_rename_file = "gR",
        ts_add_missing_import = "ga",
        ts_remove_unused = "gu",
        ts_fix_all = "gf",
        ts_goto_source = "gD",
      },
    },
  },
})
