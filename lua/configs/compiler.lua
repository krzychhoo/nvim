local map = vim.keymap.set

-- Open compiler
map("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true, desc = "Open copiler" })

-- Redo last selected option
map(
  "n",
  "<leader><F6>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true, desc = "Redo last selected option" }
)

-- Toggle compiler results
map(
  "n",
  "<leader><F7>",
  "<cmd>CompilerToggleResults<cr>",
  { noremap = true, silent = true, desc = "Toggle compiler results" }
)
