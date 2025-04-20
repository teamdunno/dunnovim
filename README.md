# Teeshovim

Hello! This is my neovim config. Everything I want is in the `lua/core/` directory, but if you wish to customize it to your liking, we have `lua/custom/`.

# Some key points for this config

## Lazy!

I try to lazy-load as much as possible. Not because of flexing (although it is cool), but because I hated how VSCode took around a minute to spin up on my laptop.

## Featureful

While we aim for performance at heart, we will try to squeeze as much as possible out of the editor. This means having an lsp, formatting, looks, feels, and as much niceness as possible while still having as little of a footprint as possible.

## Open

If you wish to use this config, I thank you! I am also open to contributions, and, if you are fine with breaking things, you may contribute to `core`. ***NOTE*** that i recommend to only do this if you are comfortable with NVIM and Lua.

## User friendly

We should also let the user add their own stuff without breaking the core, therefore we have the `custom` folder. This is where the user will spend most of their time. Changing `custom` should never impact `core`, and that is something we try very hard to follow.
