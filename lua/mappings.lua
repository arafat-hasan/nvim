require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line"})
-- map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger"})

map("n", "<leader>ct", "<cmd> CompetiTest add_testcase <CR>", { desc = "Add a new testcase"})
map("n", "<leader>cd", "<cmd> CompetiTest delete_testcase <CR>", { desc = "Remove an existing testcase"})
map("n", "<leader>ce", "<cmd> CompetiTest edit_testcase <CR>", { desc = "Edit an existing testcase"})

map("n", "<leader>cr", "<cmd> CompetiTest run <CR>", { desc = "Compile and run all testcases"})
map("n", "<leader>cnr", "<cmd> CompetiTest run_no_compile <CR>", { desc = "Run all testcases with previous compilation"})

map("n", "<leader>crt", "<cmd> CompetiTest receive testcases <CR>", { desc = "Download only testcases"})
map("n", "<leader>crp", "<cmd> CompetiTest receive problem <CR>", { desc = "Download a problem, testcases and create source file is automatically"})
map("n", "<leader>crc", "<cmd> CompetiTest receive contest <CR>", { desc = "Download an entire contest, make sure to be on the homepage of the contest, not of a single problem"})


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
