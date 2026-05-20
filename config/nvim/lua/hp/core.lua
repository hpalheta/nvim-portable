local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

opt.termguicolors = true

opt.splitright = true
opt.splitbelow = true

require("hp.core.keymaps")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(vim.cmd, "ToggleTerm direction=horizontal size=12")

    vim.defer_fn(function()
      pcall(vim.cmd, "wincmd k")
    end, 10)

    vim.defer_fn(function()
      pcall(function()
        require("neo-tree.command").execute({
          action = "show",
          position = "left",
        })
      end)
    end, 50)
  end,
})
