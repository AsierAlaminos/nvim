local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Personaliza el encabezado
dashboard.section.header.val = {
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ' █████╗ ███████╗███╗   ███╗██╗   ██╗███████╗',
    '██╔══██╗██╔════╝████╗ ████║██║   ██║██╔════╝',
    '███████║███████╗██╔████╔██║██║   ██║███████╗',
    '██╔══██║╚════██║██║╚██╔╝██║██║   ██║╚════██║',
    '██║  ██║███████║██║ ╚═╝ ██║╚██████╔╝███████║',
    '╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝',
    '                                            ',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
}

-- Personaliza las secciones del centro
dashboard.section.buttons.val = {
    dashboard.button('n', '  Nuevo archivo', ':ene <BAR> startinsert <CR>'),
    dashboard.button('f', '  Buscar archivo', ':Telescope find_files<CR>'),
    dashboard.button('b', '  Archivos recientes', ':Telescope oldfiles<CR>'),
    dashboard.button('s', '  Configuración', ':e $MYVIMRC<CR>'),
}

-- Personaliza el pie de página
dashboard.section.footer.val = {
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '███████╗████████╗ █████╗ ██████╗ ████████╗     ██████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ██╗',
    '██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝    ██╔════╝██╔═══██╗██╔══██╗██║████╗  ██║██╔════╝ ██║',
    '███████╗   ██║   ███████║██████╔╝   ██║       ██║     ██║   ██║██║  ██║██║██╔██╗ ██║██║  ███╗██║',
    '╚════██║   ██║   ██╔══██║██╔══██╗   ██║       ██║     ██║   ██║██║  ██║██║██║╚██╗██║██║   ██║╚═╝',
    '███████║   ██║   ██║  ██║██║  ██║   ██║       ╚██████╗╚██████╔╝██████╔╝██║██║ ╚████║╚██████╔╝██╗',
    '╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝        ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝',
}

alpha.setup(dashboard.opts)
