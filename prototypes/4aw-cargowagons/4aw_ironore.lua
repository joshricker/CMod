data:extend(
{
    {
        type = "recipe",
        name = "cm-4aw_ironore_recipe",
        category = "yir_rc_wsw",
        enabled = "true",
        energy_required = 3.00,
        ingredients = {
            { type = "item", name = "yir_frame_waggon" , amount = 2.0, },
            { type = "item", name = "yir_radsatz_waggon" , amount = 2.0, },
            { type = "item", name = "yir_coin" , amount = 8.0, },
        },
        results = {
            { type = "item", name = "cm-4aw_ironore", amount = 1, },
        },      
        order = "cw5", group = "railway_addons", subgroup = "yir_uranium_power_cargo4a",
    },  
    {
        type = "item-with-entity-data", name="cm-4aw_ironore", icon="__CMod__/graphics/icons/4aw_ironore_icon.png", 
        group="railway_addons", subgroup="yir_uranium_power_cargo4a",
        order="cw11",
        stack_size = 10, default_request_amount = 5, icon_size = 256,
        place_result="cm-4aw_ironore",
    },
    {
        type = "cargo-wagon",
        name = "cm-4aw_ironore",
        icon = "__CMod__/graphics/icons/4aw_generic_icon.png",icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
        inventory_size = 150,
        equipment_grid = "vehicle-equipment-grid",
        minable = {mining_time = 1, result = "cm-4aw_ironore"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 4000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
        selection_box = {{-1.0, -2.7}, {1, 3.2}},
        connection_distance = 3, joint_distance = 4,
        weight = 2000,
        max_speed = 4,
        braking_force = 4,
        friction_force = 0.0015,
        air_resistance = 0.002,
        energy_per_hit_point = 5,
        resistances =
        {
            {type = "physical", decrease = 15, percent = 30 },
            {type = "impact",decrease = 50,percent = 60},
            {type = "acid",decrease = 10,percent = 20}
        },
        vertical_selection_shift = -0.5,
        pictures =
        {
            priority = "very-low",
            width = 256,
            height = 256,
            back_equals_front = true,
            direction_count = 64,
            filename = "__CMod__/graphics/4aw-cargowagons/4aw_ironore.png",
            line_length = 8,
            lines_per_file = 8,
            shift = {0.42, -1.125}
        },
        wheels = standard_train_wheels,
        rail_category = "regular",
        drive_over_tie_trigger = drive_over_tie(),
        tie_distance = 50,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.5
            },
            match_volume_to_activity = true,
        },
        crash_trigger = crash_trigger(),
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        sound_minimum_speed = 0.5;
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    },  
})