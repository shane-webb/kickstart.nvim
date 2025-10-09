local home = vim.loop.os_homedir()
local dir = vim.fs.joinpath(home, 'miniwinter_modified')
return {
  -- Easily visualize colorschemes
  'rktjmp/lush.nvim',
  {
    dir = dir,
    name = 'miniwinter_modified',
    lazy = false,
    priority = 1000, -- make the colorscheme available in :colo
    -- config = function()
    --   local ok, err = pcall(vim.cmd.colorscheme, 'miniwinter_modified')
    --   if not ok then
    --     vim.notify('miniwinter_modified failed: ' .. tostring(err), vim.log.levels.WARN)
    --     pcall(vim.cmd.colorscheme, 'habamax') -- fallback
    --   end
    -- end,
  },
}
