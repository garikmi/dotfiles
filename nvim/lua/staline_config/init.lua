require('staline').setup {
  sections = {
    left = {
      'right_sep', 'file_name', 'left_sep', ' ',
    },
    mid  = {},
    right= {
      'right_sep', 'cool_symbol', 'left_sep', ' ',
      'right_sep', 'line_column', 'left_sep', ' '
    }
  },

  defaults={
    cool_symbol = '',
    left_separator = '',
    right_separator = '',
    true_colors = true,
    line_column = '[%l:%c] | %p%% '
  },
  mode_colors = {
    n  = '#c4a7e7',
    i  = '#c4a7e7',
    ic = '#c4a7e7',
    c  = '#c4a7e7',
    v  = '#31748f'
  }
}
