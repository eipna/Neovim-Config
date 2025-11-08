-- Setting the leader key for user-defined mappings
vim.g.mapleader = ' '
-- Setting the local leader key (for mappings specific to a buffer or window)
vim.g.mallocalleader = ' '

-- Display the absolute line number on the left
vim.o.number = true           
-- Display line numbers relative to the current line (great for motion commands)
vim.o.relativenumber = true   
-- Automatically indent new lines when writing code
vim.o.autoindent = true       
-- Enable mouse support in all modes (normal, visual, insert)
vim.o.mouse = 'a'             
-- Enable 24-bit RGB color in the terminal (required for true color themes)
vim.o.termguicolors = true    
-- Search will become case-sensitive if you use any uppercase characters
vim.o.smartcase = true        
-- Ignore case when searching
vim.o.ignorecase = true       
-- Highlight all matches for the last search pattern
vim.o.hlsearch = true         
-- Don't wrap lines that exceed the window width
vim.o.wrap = false
-- Don't show the current mode (e.g., -- INSERT --) since it's redundant with the statusline
vim.o.showmode = false

-- The number of spaces a <Tab> counts for
vim.o.tabstop = 4           
-- The number of spaces used for each step of (auto)indent
vim.o.shiftwidth = 4        
-- Insert spaces instead of a tab character when <Tab> is pressed
vim.o.expandtab = true      
-- The number of spaces that a <Tab> counts for at the start of a line
vim.o.softtabstop = 4       
-- Keep indentation when lines wrap (only applicable if wrap is true, which it isn't here)
vim.o.breakindent = true
-- Enable persistent undo (undo history is saved across sessions)
vim.o.undofile = true
-- You have ignorecase set twice, but it's okay. Ignoring case when searching.
vim.o.ignorecase = true
-- You have smartcase set twice, but it's okay. Search becomes case-sensitive if uppercase is used.
vim.o.smartcase = true
-- Time in milliseconds to wait for swap file updates (controls autowrite and other events)
vim.o.updatetime = 250
-- Time in milliseconds to wait for a mapped key sequence to complete (affects leader key responsiveness)
vim.o.timeoutlen = 300
-- Show search results live in a split window as you type the pattern
vim.o.inccommand = 'split'
-- Highlight the current line the cursor is on
vim.o.cursorline = true
-- Keep 10 lines of context above and below the cursor when scrolling
vim.o.scrolloff = 10
-- Ask for confirmation when closing unsaved buffers or windows
vim.o.confirm = true

-- Schedule this function to run after Neovim has finished initializing
vim.schedule(function()
  -- Use the system clipboard for copy (yank) and paste operations ('unnamedplus' is for the system clipboard)
  vim.o.clipboard = 'unnamedplus'
end)
