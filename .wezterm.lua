local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Theme
config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = 'kanagawabones'

-- Font
config.font = wezterm.font 'IosevkaTerm Nerd Font Mono'
config.font_size = 13

-- General
config.window_decorations = "RESIZE"
config.enable_scroll_bar = true
config.window_close_confirmation = 'NeverPrompt'
config.use_fancy_tab_bar = false
config.scrollback_lines = 4000
config.tab_max_width = 25

-- Tabs
config.colors = {
    scrollbar_thumb = "#313244",
    tab_bar = {
        background = '#11111b',
        active_tab = {
            bg_color = '#313244',
            fg_color = '#cdd6f4',
            intensity = 'Normal',
            underline = 'None',
            italic = true,
            strikethrough = false,
        },
        inactive_tab = {
            bg_color = '#1e1e2e',
            fg_color = '#6c7086',
        },
        inactive_tab_hover = {
            bg_color = '#45475a',
            fg_color = '#cdd6f4',
        },
        new_tab = {
            bg_color = '#45475a',
            fg_color = '#cdd6f4',
        },
        new_tab_hover = {
            bg_color = '#585b70',
            fg_color = '#cdd6f4',
        },
    },
}

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
