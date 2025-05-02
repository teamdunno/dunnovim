# `cosmetic` provides many themes for you to choose from

## Available themes

- catppuccin
- everforest
- gruvbox
- kanagawa
- material
- melange
- nightfox
- nord
- onedark
- oxocarbon
- rose-pine
- sonokai

## Setting a theme

In your `~/.config/nvim/lua/custom/settings.lua` file, add the following:

```lua
M.ui = {
    theme = "catppuccin", -- or any other theme you want to use
}

M.extras = {
    "cosmetic.catppuccin", -- again, replace with the theme name
}
```
