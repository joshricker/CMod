data:extend(
{
  {
    type = "equipment-category",
    name = "vehicle"
  },
  {
    type = "equipment-category",
    name = "farl-equipment"
  },
  {
    type = "equipment-category",
    name = "armoured-vehicle"
  },
  {
    type = "equipment-category",
    name = "tank"
  },
  {
    type = "equipment-category",
    name = "train"
  },
  {
    type = "equipment-category",
    name = "locomotive"
  },
  {
    type = "equipment-category",
    name = "armoured-train"
  },
  {
    type = "equipment-category",
    name = "armoured-locomotive"
  },
  {
    type = "equipment-category",
    name = "car"
  },
  {
    type = "equipment-grid",
    name = "vehicle-large-equipment-grid",
    width = 15,
    height = 15,
    equipment_categories = {"car", "armor", "vehicle", "farl-equipment", "tank", "armoured-vehicle", "train", "locomotive", "armoured-train", "armoured-locomotive"}
  },
  {
    type = "equipment-grid",
    name = "vehicle-equipment-grid",
    width = 12,
    height = 12,
    equipment_categories = {"car", "armor", "vehicle", "farl-equipment", "tank", "armoured-vehicle", "train", "locomotive", "armoured-train", "armoured-locomotive"}
  },
  {
    type = "item-subgroup",
    name = "cmod-vehicle-equipment",
    group = "combat",
    order = "z"
  },
  {
    type = "item",
    name = "cmod-vehicle-laser-defense-equipment",
    icon = "__CMod__/graphics/icons/vehicle-laser-defense-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-laser-defense-equipment",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "a",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-laser-defense-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"personal-laser-defense-equipment", 5},
      {"steel-plate", 25},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-laser-defense-equipment"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-vehicle-laser-defense-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-laser-defense-equipment.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4100KJ"
    },
    attack_parameters =
    {
      type = "beam",
      cooldown = 8,
      range = 60,
      damage_modifier = 25,
      ammo_type =
      {
        category = "laser",
        energy_consumption = "150kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 60,
            duration = 1,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },
    categories = {"vehicle"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-laser-defense-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-laser-defense-equipment-mk2",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "b",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-vehicle-laser-defense-equipment", 2},
      {"effectivity-module-2", 25},
      {"productivity-module-2", 25}
    },
    result = "cmod-vehicle-laser-defense-equipment-mk2"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-vehicle-laser-defense-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-laser-defense-equipment-mk2.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4100KJ"
    },
    attack_parameters =
    {
      type = "beam",
      cooldown = 3,
      range = 75,
      damage_modifier = 40,
      ammo_type =
      {
        category = "laser",
        energy_consumption = "350kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 75,
            duration = 1,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },
    categories = {"vehicle"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-vehicle-fusion-reactor-equipment",
    icon = "__CMod__/graphics/icons/vehicle-fusion-reactor-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-fusion-reactor-equipment",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "h",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-fusion-reactor-equipment",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"steel-plate", 75},
      {"advanced-circuit", 200}
    },
    result = "cmod-vehicle-fusion-reactor-equipment"
  },
  {
    type = "generator-equipment",
    name = "cmod-vehicle-fusion-reactor-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-fusion-reactor-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    categories = {"vehicle"},
    power = "10MW"
  },
    {
    type = "item",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-fusion-reactor-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-fusion-reactor-equipment-mk2",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "i",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"cmod-vehicle-fusion-reactor-equipment", 2},
      {"productivity-module-2", 10},
      {"advanced-circuit", 250}
    },
    result = "cmod-vehicle-fusion-reactor-equipment-mk2"
  },
  {
    type = "generator-equipment",
    name = "cmod-vehicle-fusion-reactor-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-fusion-reactor-equipment-mk2.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    categories = {"vehicle"},
    power = "40MW"
  },
  {
    type = "item",
    name = "cmod-vehicle-energy-shield-equipment",
    icon = "__CMod__/graphics/icons/vehicle-energy-sheild-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-energy-shield-equipment",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "n",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-vehicle-energy-shield-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"energy-shield-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-energy-shield-equipment"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-vehicle-energy-shield-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-energy-sheild-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 4200,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5040KJ",
      input_flow_limit = "5040KW",
      usage_priority = "primary-input"
    },
    categories = {"vehicle"},
    energy_per_shield = "30KJ"
  },
   {
    type = "item",
    name = "cmod-vehicle-energy-shield-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-energy-shield-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-energy-shield-equipment-mk2",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "o",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-vehicle-energy-shield-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-vehicle-energy-shield-equipment", 2},
      {"effectivity-module-2", 40},
      {"productivity-module-2", 40}
    },
    result = "cmod-vehicle-energy-shield-equipment-mk2"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-vehicle-energy-shield-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-energy-shield-equipment-mk2.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 12000,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15000KJ",
      input_flow_limit = "15000KW",
      usage_priority = "primary-input"
    },
    categories = {"vehicle"},
    energy_per_shield = "30KJ"
  },
  {
    type = "item",
    name = "cmod-vehicle-battery-equipment",
    icon = "__CMod__/graphics/icons/vehicle-battery-equipment.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-battery-equipment",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "q",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-battery-equipment",
    enabled = "true",
    energy_required = 40,
    ingredients =
    {
      {"battery-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-vehicle-battery-equipment"
  },
  {
    type = "battery-equipment",
    name = "cmod-vehicle-battery-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-battery-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    categories = {"vehicle"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "9600MJ",
      input_flow_limit = "750MW",
      output_flow_limit = "750MW",
      usage_priority = "tertiary"
    }
  },
  {
    type = "item",
    name = "cmod-vehicle-battery-equipment-mk2",
    icon = "__CMod__/graphics/icons/vehicle-battery-equipment-mk2.png",
    icon_size = 32,
    placed_as_equipment_result = "cmod-vehicle-battery-equipment-mk2",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "r",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-vehicle-battery-equipment-mk2",
    enabled = "true",
    energy_required = 20,
    ingredients =
    {
      {"cmod-vehicle-battery-equipment", 2},
      {"productivity-module-2", 15},
      {"effectivity-module-2", 15},
      {"speed-module-2", 15}
    },
    result = "cmod-vehicle-battery-equipment-mk2"
  },
  {
    type = "battery-equipment",
    name = "cmod-vehicle-battery-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/vehicle-battery-equipment-mk2.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    categories = {"vehicle"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "45000MJ",
      input_flow_limit = "1750MW",
      output_flow_limit = "1750MW",
      usage_priority = "tertiary"
    }
  },
  {
    type = "item",
    name = "cm-vehicle-roboport-mk1",
    icon = "__CMod__/graphics/equipment/vehicle-roboport-equipment-mk1.png",
    icon_size = 64,
    placed_as_equipment_result = "cm-vehicle-roboport-mk1",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "s",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cm-vehicle-roboport-mk1",
    enabled = "true",
    energy_required = 20,
    ingredients =
    {
      {"personal-roboport-equipment", 1},
      {"advanced-circuit", 15},
      {"battery", 30}
    },
    result = "cm-vehicle-roboport-mk1"
  },
  {
    type = "roboport-equipment",
    name = "cm-vehicle-roboport-mk1",
    take_result = "cm-vehicle-roboport-mk1",
    sprite =
    {
      filename = "__CMod__/graphics/equipment/vehicle-roboport-equipment-mk1.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "300MJ",
      input_flow_limit = "50000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "5000kW",

    robot_limit = 50,
    construction_radius = 75,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 20,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"vehicle"}
  },
  {
    type = "item",
    name = "cm-vehicle-roboport-mk2",
    icon = "__CMod__/graphics/equipment/vehicle-roboport-equipment-mk2.png",
    icon_size = 64,
    placed_as_equipment_result = "cm-vehicle-roboport-mk2",

    group = "combat", subgroup = "cmod-vehicle-equipment",
    order = "s",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cm-vehicle-roboport-mk2",
    enabled = "true",
    energy_required = 20,
    ingredients =
    {
      {"personal-roboport-mk2-equipment", 1},
      {"advanced-circuit", 45},
      {"battery", 100}
    },
    result = "cm-vehicle-roboport-mk2"
  },
  {
    type = "roboport-equipment",
    name = "cm-vehicle-roboport-mk2",
    take_result = "cm-vehicle-roboport-mk2",
    sprite =
    {
      filename = "__CMod__/graphics/equipment/vehicle-roboport-equipment-mk2.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "600MJ",
      input_flow_limit = "75000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "5000kW",

    robot_limit = 100,
    construction_radius = 125,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 30,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"vehicle"}
  },
 }
 )
