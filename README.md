# buffon-colors.nvim

Add colors to buffers corresponding to the keymap.

---

> [!NOTE]
> This is an extension for [buffon.nvim](https://github.com/francescarpi/buffon.nvim)

## Installation

You can simply add buffon-colors.nvim as a dependency to your buffon.nvim config:

```lua
return {
    "francescarpi/buffon.nvim",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",

        --- buffon extensions
        {
            "TheLazyCat00/buffon-colors",
            opts = {
                --- you can put your options here
            },
        },
    },
    ---@type BuffonConfig
    opts = {},
}
```

## Available options

The defaults are shown here:

```lua
opts = {
    --- this defines which color should be used per keymaps
    colors = {
        fallback = "normal", -- hl group to use as fallback
        a = "#00FFFF", -- aqua
        b = "#0000FF", -- blue
        c = "#6495ED", -- cornflowerblue
        d = "#A9A9A9", -- darkgray
        e = "#C2B280", -- ecru
        f = "#FF00FF", -- fuchsia
        g = "#008000", -- green
        h = "#FF69B4", -- hotpink
        i = "#4B0082", -- indigo
        k = "#F0E68C", -- khaki
        l = "#00FF00", -- lime
        m = "#800000", -- maroon
        n = "#000080", -- navy
        o = "#FFA500", -- orange
        p = "#800080", -- purple
        r = "#FF0000", -- red
        s = "#C0C0C0", -- silver
        t = "#008080", -- teal
        v = "#EE82EE", -- violet
        w = "#FFFFFF", -- white
        y = "#FFFF00", -- yellow
        --- missing:
        --- j, q, u, x, z
    }
}
```

---

Contributions are welcome! Enjoy the extension!
