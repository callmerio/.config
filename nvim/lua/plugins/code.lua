return {
  {
    "supermaven-inc/supermaven-nvim",
    priority = 1000,
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab><Tab>",
          clear_suggestion = "<Tab><backspace>",
          accept_word = "<C-j>",
        },
        ignore_filetypes = { cpp = true },
        color = {
          suggestion_color = "#ffffff",
          cterm = 244,
        },
        log_level = "info", -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      })
    end,
  },
  {
    "vim-test/vim-test",
    dependencies = {
      "preservim/vimux",
    },

    vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "TetstNearest", silent = true }),
    vim.keymap.set("n", "<leader>tT", ":TestFile<CR>", { desc = "TestFile", silent = true }),
    vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "TestSuite", silent = true }),
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "TestLast", silent = true }),
    vim.keymap.set("n", "<leader>tg", ":TestVisit<CR>", { desc = "TestVisit", silent = true }),

    vim.cmd("let test#strategy = 'vimux'"),
  },
}
