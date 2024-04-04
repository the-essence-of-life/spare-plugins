local options = pcall(require, "config.options")
if not options then
  return
end

local keymaps = pcall(require, "config.keymaps")
if not keymaps then
  return
end

local autocmds = pcall(require, "config.autocmds")
if not autocmds then
  return
end
