data:extend(
{
  {
    type = "equipment-category",
    name = "train"
  },
  {
    type = "item-subgroup",
    name = "cmod-train-equipment",
    group = "combat",
    order = "z"
  },
  {
    type = "item",
    name = "cmod-train-laser-defense-equipment",
    icon = "__CMod__/graphics/icons/train-laser-defense-equipment.png",
    placed_as_equipment_result = "cmod-train-laser-defense-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "a",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-laser-defense-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"personal-laser-defense-equipment", 5},
      {"steel-plate", 25},
      {"advanced-circuit", 15}
    },
    result = "cmod-train-laser-defense-equipment"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-train-laser-defense-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-laser-defense-equipment.png",
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
      type = "projectile",
      ammo_category = "electric",
      cooldown = 10,
      damage_modifier = 40.0,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 70,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "450KJ",
        projectile = "laser",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 3.75
              }
            }
          }
        }
      }
    },
	categories = {"train"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-train-laser-defense-equipment-mk2",
    icon = "__CMod__/graphics/icons/train-laser-defense-equipment-mk2.png",
    placed_as_equipment_result = "cmod-train-laser-defense-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "b",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-laser-defense-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-train-laser-defense-equipment", 4},
      {"effectivity-module-2", 25},
      {"productivity-module-2", 25}
    },
    result = "cmod-train-laser-defense-equipment-mk2"
  },
  {
    type = "active-defense-equipment",
    name = "cmod-train-laser-defense-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-laser-defense-equipment-mk2.png",
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
      type = "projectile",
      ammo_category = "electric",
      cooldown = 5,
      damage_modifier = 60.0,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 85,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "850KJ",
        projectile = "laser",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 3.75
              }
            }
          }
        }
      }
    },
	categories = {"train"},
    automatic = true
  },
  {
    type = "item",
    name = "cmod-train-fusion-reactor-equipment",
    icon = "__CMod__/graphics/icons/train-fusion-reactor-equipment.png",
    placed_as_equipment_result = "cmod-train-fusion-reactor-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "h",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-fusion-reactor-equipment",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"steel-plate", 75},
      {"advanced-circuit", 200}
    },
    result = "cmod-train-fusion-reactor-equipment"
  },
  {
    type = "generator-equipment",
    name = "cmod-train-fusion-reactor-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-fusion-reactor-equipment.png",
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
	categories = {"train"},
    power = "7000KW"
  },
    {
    type = "item",
    name = "cmod-train-fusion-reactor-equipment-mk2",
    icon = "__CMod__/graphics/icons/train-fusion-reactor-equipment-mk2.png",
    placed_as_equipment_result = "cmod-train-fusion-reactor-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "i",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-fusion-reactor-equipment-mk2",
    enabled = "true",
    energy_required = 15,
    ingredients =
    {
      {"cmod-train-fusion-reactor-equipment", 4},
      {"productivity-module-3", 10},
      {"advanced-circuit", 250}
    },
    result = "cmod-train-fusion-reactor-equipment-mk2"
  },
  {
    type = "generator-equipment",
    name = "cmod-train-fusion-reactor-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-fusion-reactor-equipment-mk2.png",
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
	categories = {"train"},
    power = "20000KW"
  },
  {
    type = "item",
    name = "cmod-train-energy-shield-equipment",
    icon = "__CMod__/graphics/icons/train-energy-sheild-equipment.png",
    placed_as_equipment_result = "cmod-train-energy-shield-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "n",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-train-energy-shield-equipment",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"energy-shield-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-train-energy-shield-equipment"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-train-energy-shield-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-energy-sheild-equipment.png",
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
	categories = {"armor"},
    energy_per_shield = "30KJ"
  },
   {
    type = "item",
    name = "cmod-train-energy-shield-equipment-mk2",
    icon = "__CMod__/graphics/icons/train-energy-shield-equipment-mk2.png",
    placed_as_equipment_result = "cmod-train-energy-shield-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "o",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "CMod-train-energy-shield-equipment-mk2",
    enabled = "true",
    energy_required = 12,
    ingredients =
    {
      {"cmod-train-energy-shield-equipment", 4},
      {"effectivity-module-2", 40},
      {"productivity-module-2", 40}
    },
    result = "cmod-train-energy-shield-equipment-mk2"
  },
  {
    type = "energy-shield-equipment",
    name = "cmod-train-energy-shield-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-energy-shield-equipment-mk2.png",
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
	categories = {"armor"},
    energy_per_shield = "30KJ"
  },
  {
    type = "item",
    name = "cmod-train-battery-equipment",
    icon = "__CMod__/graphics/icons/train-battery-equipment.png",
    placed_as_equipment_result = "cmod-train-battery-equipment",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "q",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-battery-equipment",
    enabled = "true",
    energy_required = 40,
    ingredients =
    {
      {"battery-equipment", 1},
      {"advanced-circuit", 15}
    },
    result = "cmod-train-battery-equipment"
  },
  {
    type = "battery-equipment",
    name = "cmod-train-battery-equipment",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-battery-equipment.png",
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
	categories = {"train"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "4800MJ",
      input_flow_limit = "750MW",
      output_flow_limit = "750MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "item",
    name = "cmod-train-battery-equipment-mk2",
    icon = "__CMod__/graphics/icons/train-battery-equipment-mk2.png",
    placed_as_equipment_result = "cmod-train-battery-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    group = "combat", subgroup = "cmod-train-equipment",
    order = "r",
    stack_size = 16
  },
  {
    type = "recipe",
    name = "cmod-train-battery-equipment-mk2",
    enabled = "true",
    energy_required = 20,
    ingredients =
    {
      {"cmod-train-battery-equipment", 4},
      {"productivity-module-2", 15},
      {"effectivity-module-2", 15},
      {"speed-module-2", 15}
    },
    result = "cmod-train-battery-equipment-mk2"
  },
  {
    type = "battery-equipment",
    name = "cmod-train-battery-equipment-mk2",
    sprite = 
    {
      filename = "__CMod__/graphics/equipment/train-battery-equipment-mk2.png",
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
	categories = {"train"},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "15000MJ",
      input_flow_limit = "1750MW",
      output_flow_limit = "1750MW",
      usage_priority = "terciary"
    }
  },
 }
 )
