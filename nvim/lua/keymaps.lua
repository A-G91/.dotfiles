-- =============================================================================
-- KEYMAPS
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Search
-- -----------------------------------------------------------------------------
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

-- -----------------------------------------------------------------------------
-- Diagnostics
-- -----------------------------------------------------------------------------
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- -----------------------------------------------------------------------------
-- Window Navigation
-- -----------------------------------------------------------------------------
-- See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-q>", "<C-w>h", { noremap = true, silent = true, desc = "Focus left window" })
vim.keymap.set("n", "<C-w>", "<C-w>l", { noremap = true, silent = true, desc = "Focus right window" })
vim.keymap.set("n", "<leader>r", ":wincmd r<CR>", { noremap = true, silent = true, desc = "Rotate windows clockwise" })

-- -----------------------------------------------------------------------------
-- Editing
-- -----------------------------------------------------------------------------
-- Keep visual selection after indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "Indent right and reselect" })

-- -----------------------------------------------------------------------------
-- File
-- -----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })