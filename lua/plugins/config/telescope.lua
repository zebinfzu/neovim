require('telescope').setup({
  mappings = {
    i = {
      -- 上下移动
      ["<C-j>"] = "move_selection_next",
      ["<C-k>"] = "move_selection_previous",
      ["<Down>"] = "move_selection_next",
      ["<Up>"] = "move_selection_previous",
      -- 历史记录
      ["<C-n>"] = "cycle_history_next",
      ["<C-p>"] = "cycle_history_prev",
      -- 关闭窗口
      ["<C-c>"] = "close",
      -- 预览窗口上下滚动
      ["<C-u>"] = "preview_scrolling_up",
      ["<C-d>"] = "preview_scrolling_down",
    },
  }
})
local builtin = require('telescope.builtin')
-- 快捷键设置
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fv', builtin.live_grep, {})
vim.keymap.set('n', '<leader>rr', builtin.help_tags, {})
vim.keymap.set('n', '<leader>rs', builtin.resume, {})
