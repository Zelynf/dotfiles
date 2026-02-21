return {
    'maarutan/nvim-nocut',
    opts = {
        d = true,  -- Remap 'd'
        x = false, -- Remap 'x' use x how 'd' with cut
        s = false, -- Keep default behavior for 's'
        c = true,  -- Remap 'c'
        dd = true, -- Remap 'dd'
        D = true,  -- Remap 'D'
        C = true,  -- Remap 'C'
        S = false, -- Keep default behavior for 'S'
        visual_commands = {
            d = true,
            c = true,
        },
    },
}
