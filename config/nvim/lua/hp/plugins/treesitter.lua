return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "bash", "json", "yaml", "markdown" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
