vim.g.mapleader = " "

local keymap = vim.keymap

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
--xkeymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
vim.keymap.set('n', '<leader>ps', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {})
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {})
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {})
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end)


-- sidebar toggle
vim.keymap.set('n', '<leader>s', function() require("nvim-tree.api").tree.toggle() end)

-- FZF
vim.keymap.set('n', '<space><space>', '<cmd>FZF<cr>')

-- tab settings
vim.keymap.set('n', '<leader>t', ':set et sw=0 ts=')
vim.keymap.set('n', '<leader>tt', '<cmd>set et sw=0 ts=4<cr>')

vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end) -- Buffer Actions
vim.keymap.set('n', '<leader>gd', function() vim.lsp.buf.definition() end) -- Buffer Definition
vim.keymap.set('n', '<leader>ge', function() vim.lsp.buf.declaration() end) -- Buffer dEclaration
vim.keymap.set('n', '<leader>gi', function() vim.lsp.buf.implementation() end) -- Buffer implementation
vim.keymap.set('n', '<leader>bf', function() vim.lsp.buf.format {} end) -- Buffer Format
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end) -- Buffer Format
vim.keymap.set('n', '<leader>bh', function() vim.lsp.buf.hover() end) -- Buffer Hover
vim.keymap.set('n', '<leader>bp', function() vim.diagnostic.goto_next() end) -- Buffer Problem
vim.keymap.set('n', '<leader>gr', function() vim.lsp.buf.references() end) -- Buffer References
vim.keymap.set('n', '<leader>gs', function() vim.lsp.buf.signature_help() end) -- Buffer signature 

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>") -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer

-- LSP
keymap.set('n', 'K',  ":Lspsaga hover_doc<CR>")

keymap.set("n", "<leader>mc", require("telescope").extensions.metals.commands)


-- fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
