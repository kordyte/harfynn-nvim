<h3 align="center">
Harfynn
<img src="https://github.com/kordyte/harfynn-nvim/blob/images/harfynn240425.png" width="800" alt="Screenshot"/><br/>
A dark colour scheme for neovim.
</h3>

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
