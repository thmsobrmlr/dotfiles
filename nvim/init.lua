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
  { "tomasr/molokai", lazy = false, priority = 1000 },
  { "vim-airline/vim-airline" },
  { "vim-airline/vim-airline-themes" },
  { "preservim/nerdtree" },
  { "jistr/vim-nerdtree-tabs", dependencies = { "preservim/nerdtree" } },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rails" },
  { "tpope/vim-rake" },
  { "tpope/vim-bundler" },
  { "airblade/vim-gitgutter" },
  { "mxw/vim-jsx" },
  { "vim-syntastic/syntastic" },
}, {
  install = {
    colorscheme = { "molokai" },
  },
  checker = {
    enabled = true,
  },
})

local opt = vim.opt

opt.backspace = "indent,eol,start"
opt.encoding = "utf-8"
opt.mouse = "a"
opt.wildmode = "longest,list"
opt.wildmenu = true
opt.listchars = {
  trail = "·",
  tab = "→→",
}
opt.list = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.autoindent = true
opt.smartindent = true
opt.laststatus = 2
opt.cursorline = true
opt.number = true
opt.fillchars:append({ vert = " " })
opt.showcmd = true
opt.ruler = true
opt.termguicolors = true

vim.cmd.syntax("enable")
vim.cmd.filetype({ "plugin", "indent", "on" })

vim.g.molokai_original = 1
vim.g.rehash256 = 1
pcall(vim.cmd.colorscheme, "molokai")

vim.g.airline_theme = "luna"
vim.g.airline_powerline_fonts = 1
vim.g["airline#extensions#tabline#enabled"] = 1

vim.api.nvim_set_hl(0, "VertSplit", { ctermbg = 37 })

vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
  pattern = "*.json",
  command = "set filetype=json",
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
  pattern = "*.md",
  command = "set filetype=markdown",
})

local map = vim.keymap.set
local silent = { silent = true }

map({ "n", "v", "i" }, "<Up>", "<nop>")
map({ "n", "v", "i" }, "<Down>", "<nop>")
map({ "n", "v", "i" }, "<Left>", "<nop>")
map({ "n", "v", "i" }, "<Right>", "<nop>")

map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")
map("i", "jj", "<Esc>")
map("n", "<F4>", function()
  vim.opt_local.spell = not vim.opt_local.spell:get()
  print("Spell Check: " .. (vim.opt_local.spell:get() and "On" or "Off"))
end, silent)
map("n", "<F10>", function()
  opt.paste = not opt.paste:get()
end, silent)
map("n", "<C-n>", "<Plug>NERDTreeTabsToggle", { remap = true, silent = true })

vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeMouseMode = 2
vim.g.jsx_ext_required = 0
vim.g.syntastic_javascript_checkers = { "eslint" }
