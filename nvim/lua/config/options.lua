-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- 启用终端颜色支持
vim.opt.termguicolors = true

-- 配置拼写错误的高亮样式为 undercurl
vim.cmd([[
  hi SpellBad guisp=red gui=undercurl
  hi SpellCap guisp=yellow gui=undercurl
  hi SpellRare guisp=blue gui=undercurl
  hi SpellLocal guisp=orange gui=undercurl
]])

-- 创建 Mason 命令的别名
vim.cmd([[
  cnoreabbrev mason Mason
]])
