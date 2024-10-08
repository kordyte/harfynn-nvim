<h3 align="center">
<img src="https://github.com/kordyte/harfynn-nvim/blob/images/harfynn241007.png" width="800" alt="Screenshot"/><br/>
Harfynn
</h3>

A dark colour scheme for neovim.

Supports:
   * Lualine
   * Telescope
   * Treesitter
   * LSP
   * DAP
   * Neovim terminal

The code is deliberately simple. Don't expect fanciness.

# Installation
[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "kordyte/harfynn-nvim" }
```

# Usage

```vim
colorscheme harfynn 
```

If you want Lualine to match, then you will need to set the Lualine theme:
```lua
require('lualine').setup {
  options = {
    theme = 'harfynn',
    ...
```
