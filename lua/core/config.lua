return {
  -- NOTE:`set = {}` supports opt = {
  -- number = true,
  -- relativenumber = true
  -- }`
  options = { enabled = true },
  -- NOTE:`set = {}` supports <mode> = {
  -- ['<key>'] = {
  -- "<exec>", "vim.keymap.set<options>"
  -- }
  -- }
  keymaps = { enabled = true },
  -- NOTE:You can enable some features.
  autocmds = { enabled = true },
}
