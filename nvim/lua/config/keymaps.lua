-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.o.timeoutlen = 2000

local discipline = require("rio.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--  Increase/decrease number
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw'", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tab 类似一个工作区 包含多个分割窗口 用于打开不同的缓冲区
keymap.set("n", "<leader><tab>l", ":tabnext<Return>", { desc = "Move Right", noremap = true, silent = true })
keymap.set("n", "<leader><tab>h", ":tabprevious<Return>", { desc = "Move Left", noremap = true })

keymap.set("n", "<leader><tab>e", ":tabedit ", { desc = "Edit 🖊", noremap = true })

keymap.set("n", "<leader><tab>1", ":tabnext 1<Return>", { desc = "Go to Tab 1", noremap = true, silent = true })
keymap.set("n", "<leader><tab>2", ":tabnext 2<Return>", { desc = "Go to Tab 2", noremap = true, silent = true })
keymap.set("n", "<leader><tab>3", ":tabnext 3<Return>", { desc = "Go to Tab 3", noremap = true, silent = true })
keymap.set("n", "<leader><tab>4", ":tabnext 4<Return>", { desc = "Go to Tab 4", noremap = true, silent = true })
keymap.set("n", "<leader><tab>5", ":tabnext 5<Return>", { desc = "Go to Tab 5", noremap = true, silent = true })
keymap.set("n", "<leader><tab>6", ":tabnext 6<Return>", { desc = "Go to Tab 6", noremap = true, silent = true })
keymap.set("n", "<leader><tab>7", ":tabnext 7<Return>", { desc = "Go to Tab 7", noremap = true, silent = true })
keymap.set("n", "<leader><tab>8", ":tabnext 8<Return>", { desc = "Go to Tab 8", noremap = true, silent = true })

-- flash 跳转
vim.keymap.set("n", "s", "<Nop>", { noremap = true, silent = true })
keymap.set({ "n", "x", "o" }, "f", function()
  require("flash").jump()
end, { desc = "Flash" })

-- Windows
keymap.set("n", "<leader>w-", ":vsplit<CR>", { desc = "Vertical Split", noremap = true, silent = true })
keymap.set("n", "<leader>w/", ":split<CR>", { desc = "Vertical Split", noremap = true, silent = true })

keymap.set("n", "sv", ":split<CR>", { desc = "Vertical Split", noremap = true, silent = true })
keymap.set("n", "ss", ":vsplit<CR>", { desc = "Vertical Split", noremap = true, silent = true })
keymap.set("n", "sv", ":split<CR>", { desc = "Vertical Split", noremap = true, silent = true })
keymap.set("n", "<leader>w=", ":split<CR>", { desc = "Vertical Split", noremap = true, silent = true })
keymap.set("n", "sh", "<C-w>h", { desc = "Move Left", noremap = true, silent = true })
keymap.set("n", "sl", "<C-w>l", { desc = "Move Right", noremap = true, silent = true })
keymap.set("n", "sj", "<C-w>j", { desc = "Move Down", noremap = true, silent = true })
keymap.set("n", "sk", "<C-w>k", { desc = "Move Up", noremap = true, silent = true })
keymap.set("n", "sd", ":close<CR>", { desc = "Close Window", noremap = true, silent = true })
-- Vim Tmux Navigator

-- Resize Windows 可以在前面数字
keymap.set("n", "s<left>", "<C-w><", { desc = "Resize Window left", noremap = true, silent = true })
keymap.set("n", "s<right>", "<C-w>>", { desc = "Resize Window left", noremap = true, silent = true })
keymap.set("n", "s<down>", "<C-w>+", { desc = "Resize Window left", noremap = true, silent = true })
keymap.set("n", "s<up>", "<C-w>-", { desc = "Resize Widow left", noremap = true, silent = true })

-- Diagnositcs
keymap.set("n", "<leader>xn", function()
  vim.diagnostic.goto_next()
end, { desc = "Next Diagnostic" })

-- TODO: 添加一个快捷键调用所有的命令 类似 ctrlp 的效果
keymap.set("n", "<leader><tab>9", ":tabnext 9<Return>", { desc = "Go to Tab 9", noremap = true, silent = true })
keymap.set("n", "<leader>p", ":<C-u>Telescope command_history<CR>", opts)
