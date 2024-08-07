local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Theme
config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = 'OneDark (base16)'
-- config.color_scheme = 'tokyonight_night'

-- Font
config.font = wezterm.font 'Iosevka Term'
config.font_size = 15

-- General
config.window_decorations = "RESIZE"
config.enable_scroll_bar = true
config.window_close_confirmation = 'NeverPrompt'
config.use_fancy_tab_bar = false
config.scrollback_lines = 4000
config.tab_max_width = 25


-- Tabs
function tab_title(tab_info)
    local title = tab_info.tab_title
    if title and #title > 0 then
        return '   ' .. title .. '   '
    end
    return '   ' .. tab_info.active_pane.title .. '   '
end

wezterm.on(
    'format-tab-title',
    function(tab, tabs, panes, config, hover, max_width)
        local title = tab_title(tab)
        if tab.is_active then
            return { { Text = title }, }
        end
        return title
    end
)

-- Pane Keybindings
config.keys = {
    {
        key = 'k',
        mods = 'CMD',
        action = act.ClearScrollback 'ScrollbackAndViewport',
    },
    {
        key = '{', mods = 'SHIFT|ALT', action = act.MoveTabRelative(-1)
    },
    {
        key = '}', mods = 'SHIFT|ALT', action = act.MoveTabRelative(1)
    },
    {
        key = 'H',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Left',
    },
    {
        key = 'L',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Right',
    },
    {
        key = 'K',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 'J',
        mods = 'CTRL|SHIFT',
        action = act.ActivatePaneDirection 'Down',
    },
    {
        key = 'H',
        mods = 'CTRL|SHIFT|ALT',
        action = act.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 'J',
        mods = 'CTRL|SHIFT|ALT',
        action = act.AdjustPaneSize { 'Down', 5 },
    },
    { key = 'K', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize { 'Up', 5 } },
    {
        key = 'L',
        mods = 'CTRL|SHIFT|ALT',
        action = act.AdjustPaneSize { 'Right', 5 },
    },
    {
        key = 'b',
        mods = 'CTRL|SHIFT|ALT',
        action = act.RotatePanes 'CounterClockwise',
    },
    {
        key = 'n',
        mods = 'CTRL|SHIFT|ALT',
        action = act.RotatePanes 'Clockwise'
    },
    {
        key = '%',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitPane {
            direction = 'Left',
            command = { args = { 'top' } },
            size = { Percent = 50 },
        },
    },
    {
        key = '"',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitPane {
            direction = 'Left',
            command = { args = { 'top' } },
            size = { Percent = 50 },
        },
    },
}

return config
