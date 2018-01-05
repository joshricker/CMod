data:extend({
    {
        type = "technology",
        name = "cm-toolbelt-2",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        effects =
        {
            {
                type = "quick-bar-count",
                modifier = 1
            }
        },
        unit =
        {
            count = 250,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "c-k-m",
        prerequisites = {'toolbelt'},
    },
    {
        type = "technology",
        name = "cm-toolbelt-3",
        icon = "__base__/graphics/technology/toolbelt.png",
        icon_size = 128,
        effects =
        {
            {
                type = "quick-bar-count",
                modifier = 1
            }
        },
        unit =
        {
            count = 450,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "c-k-m",
        prerequisites = {'cm-toolbelt-2'},
    },
})