
return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local transparent = false -- set to true if you would like to enable transparency
    local bg = "#282C34"
    local bg_dark = "#282C34"
    local bg_pop = "#2c2d30"
    local bg_float = "#2f3641"
    local bg_highlight = "#2f3641"
    local bg_search = "#61AFEF"
    local bg_visual = "#363d4a"
    local fg = "#DCDFE4"
    local fg_dark = "#DCDFE4"
    local fg_gutter = "#5A6374"
    local border = "#ffffff"--"#434a56"

    require("tokyonight").setup({
      style = "night",
      transparent = transparent,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_dark = transparent and colors.none or bg_dark
        colors.bg_float = transparent and colors.none or bg_float
        colors.bg_highlight = bg_highlight
        colors.bg_popup = bg_pop
        colors.bg_search = bg_search
        colors.bg_sidebar = transparent and colors.none or bg
        colors.bg_statusline = transparent and colors.none or bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end,
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
