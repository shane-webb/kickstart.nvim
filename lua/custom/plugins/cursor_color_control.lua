-- 0) Make sure truecolor is on
vim.opt.termguicolors = true

local function set_cursor_colors()
  -- 1) Break any link and define independent colors
  vim.cmd 'hi clear Cursor'
  vim.cmd 'hi clear lCursor'
  vim.cmd 'hi clear TermCursor'

  -- Cursor block in Normal/Command/etc.
  vim.api.nvim_set_hl(0, 'Cursor', { fg = '#0a0b0c', bg = '#ffd700' }) -- text inside block, block bg
  -- Optional: different look in Visual
  vim.api.nvim_set_hl(0, 'VCursor', { fg = '#0a0b0c', bg = '#00bcd4' })
  -- Terminal buffers
  vim.api.nvim_set_hl(0, 'TermCursor', { reverse = true })
  vim.api.nvim_set_hl(0, 'TermCursorNC', { reverse = true })

  -- 2) Map modes → shapes → highlight groups
  vim.opt.guicursor = {
    'n:block-Cursor', -- Normal uses our Cursor group
    'v:block-VCursor', -- Visual uses VCursor (optional)
    'V:block-VCursor',
    'i:ver25-Cursor', -- Insert: vertical bar using Cursor's fg color
    'r:hor20-Cursor', -- Replace: horizontal bar
    'c:ver25-Cursor', -- Cmd-line mode
    't:block-TermCursor',
  }
end

-- 3) Re-apply after any colorscheme switch so it can’t relink Cursor→Normal
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_cursor_colors,
  desc = 'Decouple cursor color from Normal in Neovide',
})
set_cursor_colors()

return {}
