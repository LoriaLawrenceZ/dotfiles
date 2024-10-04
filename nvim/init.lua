local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
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

local opts = {}

require("vim-options")
require("lazy").setup("plugins")

-- Keymap for tabs (same as from browser (from memory, sorry))
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")
vim.keymap.set("n", "<leader>w", ":tabclose<CR>")
vim.keymap.set("n", "<leader><Tab>", ":tabnext<CR>")

-- Keymap for saving files
vim.keymap.set("n", "<C-s>", ":w<CR>")       -- Saves only the opened file and as an active tab/window/pane
vim.keymap.set("n", "<leader>sa", ":wa<CR>") -- ATTENTION!!! Saves all files!!!
