local M = {}

function M.cowboy()
  ---@type table?
  local id
  local ok = true

  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    local count = 0
    local map = key

    vim.keymap.set("n", map, function()
      if vim.v.count > 0 then
        count = 0
      end
      if count >= 10 then
        ok, id = pcall(vim.notify, "Hold it Cowboy find better way", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          keep = function()
            return count >= 10
          end,
        })
        if not ok then
          id = nil
          return map
        end
      else
        count = count + 1
        vim.defer_fn(function()
          count = 0
        end, 2000)
        return map
      end
    end, { expr = true, noremap = true, silent = true })
  end
end

return M
