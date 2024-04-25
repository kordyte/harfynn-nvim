<h3 align="center">
<img src="https://github.com/kordyte/harfynn-nvim/blob/images/harfynn240425.png" width="400" alt="Screenshot"/><br/>
Harfynn
</h3>

A dark colour scheme for neovim.

Supports:
   * Lualine
   * Treesitter
   * Telescope
   * LSP
   * DAP

Don't expect anything too fancy in the code.

# Installation
[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "kordyte/harfynn-nvim" }
```

# Usage

```vim
colorscheme harfynn 
```

```lua
vim.cmd.colorscheme "harfynn"
```

If you want Lualine to match, then you will need to set the Lualine theme:
```lua
require('lualine').setup {
  options = {
    theme = 'harfynn',
    ...
```
