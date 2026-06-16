-- =============================================================================
-- NEOVIM OPTIONS
-- =============================================================================

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- -----------------------------------------------------------------------------
-- Line Numbers
-- -----------------------------------------------------------------------------
vim.opt.nu = true               -- Show absolute line number on current line
vim.opt.relativenumber = true   -- Show relative line numbers for easy jumping

-- -----------------------------------------------------------------------------
-- Indentation & Tabs
-- -----------------------------------------------------------------------------
vim.opt.tabstop = 4             -- Visual width of a tab character
vim.opt.softtabstop = 4         -- Spaces inserted/deleted when pressing Tab/Backspace
vim.opt.shiftwidth = 4          -- Spaces used for >> / << indentation
vim.opt.expandtab = true        -- Use spaces instead of tab characters
vim.opt.smartindent = true      -- Auto-indent new lines based on context

-- -----------------------------------------------------------------------------
-- Search
-- -----------------------------------------------------------------------------
vim.opt.ignorecase = true       -- Case-insensitive search by default
vim.opt.smartcase = true        -- Override ignorecase if search has uppercase
vim.opt.hlsearch = true         -- Highlight all search matches
vim.opt.inccommand = "split"    -- Live preview of :s substitutions in a split

-- -----------------------------------------------------------------------------
-- Splits & Windows
-- -----------------------------------------------------------------------------
vim.opt.splitbelow = true       -- Horizontal splits open below current window
vim.opt.splitright = true       -- Vertical splits open to the right

-- -----------------------------------------------------------------------------
-- Appearance
-- -----------------------------------------------------------------------------
vim.opt.wrap = false            -- Disable line wrapping
vim.opt.termguicolors = true    -- Enable 24-bit RGB color in the terminal
vim.opt.laststatus = 3          -- Single global statusline instead of per-window
vim.opt.signcolumn = "yes"      -- Always show sign column (prevents layout shifting)
vim.opt.colorcolumn = "0"       -- No column ruler
vim.opt.cursorline = true       -- Highlight the line the cursor is on
vim.opt.scrolloff = 8           -- Keep 8 lines visible above/below cursor when scrolling

-- -----------------------------------------------------------------------------
-- File Handling & Undo
-- -----------------------------------------------------------------------------
vim.opt.swapfile = false                                    -- Disable swap files
vim.opt.backup = false                                      -- Disable backup files
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"      -- Directory for undo history
vim.opt.undofile = true                                     -- Persist undo history across sessions

-- -----------------------------------------------------------------------------
-- Completion
-- -----------------------------------------------------------------------------
vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"   -- Completion menu behavior (fuzzy requires 0.11+)
vim.opt.shortmess:append("c")                           -- Suppress completion-related messages in cmdline

-- -----------------------------------------------------------------------------
-- Clipboard & Input
-- -----------------------------------------------------------------------------
vim.opt.mouse = "a"                     -- Enable mouse support in all modes
vim.opt.clipboard:append("unnamedplus") -- Sync with system clipboard
vim.opt.isfname:append("@-@")           -- Treat @ as valid filename character (useful for gf on @scope/pkg)

-- -----------------------------------------------------------------------------
-- File Explorer
-- -----------------------------------------------------------------------------
vim.g.netrw_banner = 0  -- Hide the netrw banner

-- -----------------------------------------------------------------------------
-- Autocommands
-- -----------------------------------------------------------------------------

-- Briefly highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})