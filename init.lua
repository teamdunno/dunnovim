local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local function init()
    require("nvim-tree.api").tree.open()
    require("toggleterm").setup{}
end

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.shiftwidth = 4

vim.api.nvim_create_user_command(
    'SearchBox',
    ':SearchBoxIncSearch',
    {desc = 'Open a search box', nargs = '*'}
)
vim.g.mapleader = " "
vim.api.nvim_create_autocmd(
    { "VimEnter" },
    { callback = init }
)

require("lazy").setup("plugins")
