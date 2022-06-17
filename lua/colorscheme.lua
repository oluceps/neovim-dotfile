vim.o.background = "dark"
vim.g.tokyonight_style = "storm" -- day / night
-- 半透明
vim.g.nightfox_transparent = true
vim.g.nightfox_transparent_sidebar = true
local colorscheme = "nightfox"
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " not found!")
  return
end
