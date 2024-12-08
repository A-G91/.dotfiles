vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Make < > keep selection in visual mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>", "<C-w>l", { noremap = true, silent = true })


-- Harpoon keybinds --
-- Open harpoon ui
local harpoon_ui = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")
vim.keymap.set("n", "<leader>ho", function()
	harpoon_ui.toggle_quick_menu()
end)
-- Remove all files from harpoon
vim.keymap.set("n", "<leader>hc", function()
	harpoon_mark.clear_all()
end)

-- Add current file to harpoon
vim.keymap.set("n", "<C-1>", function()
	harpoon_mark.set_current_at(1)
end)
vim.keymap.set("n", "<C-2>", function()
	harpoon_mark.set_current_at(2)
end)
vim.keymap.set("n", "<C-3>", function()
	harpoon_mark.set_current_at(3)
end)
vim.keymap.set("n", "<C-4>", function()
	harpoon_mark.set_current_at(4)
end)
vim.keymap.set("n", "<C-5>", function()
	harpoon_mark.set_current_at(5)
end)

-- Quickly jump to harpooned files
vim.keymap.set("n", "11", function()
	harpoon_ui.nav_file(1)
end)

vim.keymap.set("n", "22", function()
	harpoon_ui.nav_file(2)
end)

vim.keymap.set("n", "33", function()
	harpoon_ui.nav_file(3)
end)

vim.keymap.set("n", "44", function()
	harpoon_ui.nav_file(4)
end)

vim.keymap.set("n", "55", function()
	harpoon_ui.nav_file(5)
end)