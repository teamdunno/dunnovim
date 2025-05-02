# `editor.aerial`

A code outline handler for Neovim. Pretty simple.

## Hotkeys

- `<leader>o`: Open code outline using Aerial

## Defaults

```lua
{
    backends = { "lsp", "treesitter", "markdown" },
    layout = {
        min_width = 28,
        default_direction = "right",
    },
    show_guides = true,
}
```
