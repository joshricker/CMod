data:extend(
{
    {
        type = "recipe",
        name = "cm-inserter-vfast-recipe",
        enabled = "true",
        ingredients =
        {
            {"y-inserter-fast", 1},
            {"y-raw-fuelnium", 1},
            {"y-chip-1", 1},
        },
        result = "cm-inserter-vfast",
    },
    {
        type = "item",
        name = "cm-inserter-vfast",
        icon = "__CMod__/graphics/entity/inserters/finserter_icon.png",
        icon_size = 32,
    
        group = "yuoki",    
        subgroup = "y-tools",       
        order = "c2",
        place_result = "cm-inserter-vfast",
        stack_size = 50,
    },
    {
        type = "inserter",
        name = "cm-inserter-vfast",
        icon = "__CMod__/graphics/entity/inserters/finserter_icon.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "cm-inserter-vfast"},
        max_health = 150,
        stack = true,
        corpse = "small-remnants",
        resistances = 
        {
            {
                type = "fire",
                percent = 100
            }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        pickup_position = {0, -1},
        insert_position = {0, 1.2},
		energy_per_movement = "24kJ",
		energy_per_rotation = "24kJ",
        extension_speed = 5.0,
        rotation_speed = 5.0,
        filter_count = 5,
        hand_size = 2.0,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "0.75kW"
        },      
        fast_replaceable_group = "inserter",
        working_sound =
        {
            match_progress_to_activity = true,
            sound =
            {
                {
                    filename = "__base__/sound/inserter-long-handed-1.ogg",
                    volume = 0.75
                },
                {
                    filename = "__base__/sound/inserter-long-handed-2.ogg",
                    volume = 0.75
                },
                {
                    filename = "__base__/sound/inserter-long-handed-3.ogg",
                    volume = 0.75
                },
                {
                    filename = "__base__/sound/inserter-long-handed-4.ogg",
                    volume = 0.75
                },
                {
                    filename = "__base__/sound/inserter-long-handed-5.ogg",
                    volume = 0.75
                }
            }
        },
        hand_base_picture =
        {
            filename = "__CMod__/graphics/entity/inserters/yi_fast_inserter_hand_base.png",
            priority = "extra-high",
            width = 8,
            height = 34
        },
        hand_closed_picture =
        {
            filename = "__CMod__/graphics/entity/inserters/yi_fast_inserter_hand_closed.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        hand_open_picture =
        {
            filename = "__CMod__/graphics/entity/inserters/yi_fast_inserter_hand_closed.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        hand_base_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 8,
            height = 33
        },
        hand_closed_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        hand_open_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        platform_picture =
        {
            sheet={
                priority = "extra-high",
                width = 48,
                height = 48,
                shift = {0.125, 0},
                filename = "__CMod__/graphics/entity/inserters/yi_fast_sheet.png"
            }
        },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
})