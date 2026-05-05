local uv = vim.uv or vim.loop
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup({
  { "vim-airline/vim-airline" },
  { "vim-airline/vim-airline-themes" },
  { "airblade/vim-gitgutter" },
}, {
  checker = {
    enabled = true,
  },
})

-- Temporary fix for Shift+Number not working inside VS Code.
-- https://github.com/neovim/neovim/issues/38651
if vim.env.TERM_PROGRAM == "vscode" then
  -- Adjust to match your keyboard layout if necessary
  local shifted_digits = {
    ["<S-1>"] = '!',
    ["<S-2>"] = '@',
    ["<S-3>"] = '#',
    ["<S-4>"] = '$',
    ["<S-5>"] = '%',
    ["<S-6>"] = '&',
    ["<S-7>"] = '^',
    ["<S-8>"] = '*',
    ["<S-9>"] = '(',
    ["<S-0>"] = ')',
  }

  for lhs, rhs in pairs(shifted_digits) do
    vim.keymap.set({ "n", "x", "i" }, lhs, rhs, {
      noremap = true,
      silent = true,
    })

    vim.keymap.set("c", lhs, function()
      return rhs
    end, {
      expr = true,
      noremap = true,
    })
  end
end