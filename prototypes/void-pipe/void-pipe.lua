function pipe_pictures()
    return
    {
        straight_vertical_single =
        {
            filename = "__CMod__/graphics/void-pipe/straight-vertical-single.png",
            priority = "extra-high",
            width = 80,
            height = 80,
        },
        straight_vertical =
        {
            filename = "__CMod__/graphics/void-pipe/straight-vertical.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        straight_vertical_window =
        {
            filename = "__CMod__/graphics/void-pipe/straight-vertical-window.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        straight_horizontal_window =
        {
            filename = "__CMod__/graphics/void-pipe/straight-horizontal-window.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        straight_horizontal =
        {
            filename = "__CMod__/graphics/void-pipe/straight-horizontal.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        corner_up_right =
        {
            filename = "__CMod__/graphics/void-pipe/corner-up-right.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        corner_up_left =
        {
            filename = "__CMod__/graphics/void-pipe/corner-up-left.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        corner_down_right =
        {
            filename = "__CMod__/graphics/void-pipe/corner-down-right.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        corner_down_left =
        {
            filename = "__CMod__/graphics/void-pipe/corner-down-left.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        t_up =
        {
            filename = "__CMod__/graphics/void-pipe/t-up.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        t_down =
        {
            filename = "__CMod__/graphics/void-pipe/t-down.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        t_right =
        {
            filename = "__CMod__/graphics/void-pipe/t-right.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        t_left =
        {
            filename = "__CMod__/graphics/void-pipe/t-left.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        cross =
        {
            filename = "__CMod__/graphics/void-pipe/cross.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        ending_up =
        {
            filename = "__CMod__/graphics/void-pipe/ending-up.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        ending_down =
        {
            filename = "__CMod__/graphics/void-pipe/ending-down.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        ending_right =
        {
            filename = "__CMod__/graphics/void-pipe/ending-right.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        ending_left =
        {
            filename = "__CMod__/graphics/void-pipe/ending-left.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        horizontal_window_background =
        {
            filename = "__CMod__/graphics/void-pipe/horizontal-window-background.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        vertical_window_background =
        {
            filename = "__CMod__/graphics/void-pipe/vertical-window-background.png",
            priority = "extra-high",
            width = 64,
            height = 64,
        },
        fluid_background =
        {
            filename = "__base__/graphics/entity/pipe/fluid-background.png",
            priority = "extra-high",
            width = 32,
            height = 20,
        },
        low_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18
        },
        middle_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18
        },
        high_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18
        },
        gas_flow =
        {
            filename = "__base__/graphics/entity/pipe/steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 24,
            height = 15,
            frame_count = 60,
            axially_symmetrical = false,
            direction_count = 1,
        }
    }
    end
    
    
    data:extend({
        {
            type = "pipe",
            name = "void-pipe",
            icon = "__CMod__/graphics/void-pipe/void-pipe.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "void-pipe"},
            max_health = 50,
            corpse = "small-remnants",
            se_allow_in_space = true,
            resistances =
            {
                {
                    type = "fire",
                    percent = 80
                },
                {
                    type = "impact",
                    percent = 30
                }
            },
            fast_replaceable_group = "pipe",
            collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box =
            {
                base_area = 1000,
                pipe_connections =
                {
                    {position = {0, -1}},
                    {position = {1, 0}},
                    {position = {0, 1}},
                    {position = {-1, 0}}
                },
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            pictures = pipe_pictures(),
            working_sound =
            {
                sound = {filename = "__base__/sound/pipe.ogg", volume = 0.85},
                match_volume_to_activity = true,
                max_sounds_per_type = 3
            },
            horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
            vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
        },
        {
            type = "recipe",
            name = "void-pipe",
            enabled = "true",
            ingredients =
            {
              {"pipe", 5}
            },
            result = "void-pipe"
          },
    })
    
    local voidPipe = util.table.deepcopy(data.raw["item"]["pipe"])
    voidPipe.name = "void-pipe"
    voidPipe.icon = "__CMod__/graphics/void-pipe/void-pipe.png"
    voidPipe.icon_size = 32
    voidPipe.place_result = "void-pipe"
    data:extend({voidPipe})
    