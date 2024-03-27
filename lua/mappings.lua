require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Open compiler
map('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Open copiler" })

-- Redo last selected option
map('n', '<S-F6>',
     "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
  .. "<cmd>CompilerRedo<cr>",
 { noremap = true, silent = true, desc = "Redo last selected option" })

-- Toggle compiler results
map('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true, desc = "Toggle compiler results" })



-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
