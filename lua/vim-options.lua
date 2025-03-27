vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.relativenumber = true
-- Control s to save, auto indents the file. 
-- mz Marks the current cursors positon and saves it into z
-- gg Goes to the top of the file, = begin auto indent
-- G goes to the bottom of the file, indenting every line it passes
-- `z snaps the cursor to the position saved in z
-- Open and insert command :w, which will write the buffer to file
-- <CR> carriage returns, submits the command
vim.keymap.set('n', '<C-s>', 'mzgg=G`z:w<CR>')
