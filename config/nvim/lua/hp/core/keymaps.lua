local map = vim.keymap.set

-- save file
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- quit
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- file explorer
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "File explorer" })

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

-- buffers
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close buffer" })

-- git (gitsigns)
map("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next hunk" })
map("n", "<leader>gk", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous hunk" })
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })

-- terminal
map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Terminal horizontal" })
map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<CR>", { desc = "Terminal vertical" })
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Terminal floating" })
map("n", "<leader>tn", "<cmd>TermExec cmd='nextflow\\ run\\ main.nf'<CR>", { desc = "Run Nextflow" })

-- debugger
map("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "Toggle breakpoint" })
map("n", "<leader>dc", function() require("dap").continue() end, { desc = "Debug continue" })
map("n", "<leader>di", function() require("dap").step_into() end, { desc = "Debug step into" })
map("n", "<leader>do", function() require("dap").step_over() end, { desc = "Debug step over" })
map("n", "<leader>dO", function() require("dap").step_out() end, { desc = "Debug step out" })
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Debug UI" })
