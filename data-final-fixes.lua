local sounds = require("prototypes.sounds")


for i, a in pairs(data.raw["rail-chain-signal"]) do
    a.resistances = a.resistances or {}
    table.insert(a.resistances, {type = "fire", percent = 100})
end
for i, a in pairs(data.raw["rail-signal"]) do
    a.resistances = a.resistances or {}
    table.insert(a.resistances, {type = "fire", percent = 100})
end
for i, a in pairs(data.raw["construction-robot"]) do
    a.resistances = a.resistances or {}
    table.insert(a.resistances, {type = "fire", percent = 100})
end

for i, a in pairs(data.raw["spider-vehicle"]) do
    a.max_health = a.max_health * 1.5
    a.inventory_size = a.inventory_size * 4
    a.chunk_exploration_radius = a.chunk_exploration_radius * 2
    a.energy_source = {type = "void"}
    a.equipment_grid = "spidertron-equipment-grid"

end


--for i, a in pairs(data.raw["radar"]) do
--    a.max_distance_of_sector_revealed = 0
--end

  data:extend({
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
    width = 16,
    height = 16,
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
    type = "artillery-projectile",
    name = "artillery-projectile",
    flags = {"not-on-map"},
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    picture =
    {
      filename = "__base__/graphics/entity/artillery-projectile/hr-shell.png",
      draw_as_glow = true,
      width = 64,
      height = 64,
      scale = 0.5
    },
    shadow =
    {
      filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
      width = 64,
      height = 64,
      scale = 0.5
    },
    chart_picture =
    {
      filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 4.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 15000 , type = "physical"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 15000 , type = "explosion"}
                  }
                }
              }
            }
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "artillery-smoke",
            initial_height = 0,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005,
            offset_deviation = {{-4, -4}, {4, 4}},
            max_radius = 3.5,
            repeat_count = 4 * 4 * 15
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
          {
            type = "show-explosion-on-chart",
            scale = 8/32
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "medium-scorchmark-tintable",
            check_buildability = true
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1
          },
          {
          type = "destroy-decoratives",
          from_render_layer = "decorative",
          to_render_layer = "object",
          include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
          include_decals = false,
          invoke_decorative_trigger = true,
          decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
          radius = 3.5 -- large radius for demostrative purposes
          }
        }
      }
    },
    height_from_ground = 280 / 64
  },
})

productivityitemlist ={ "rail", "concrete", "refined-concrete"}
for _, module in pairs(data.raw.module) do
  if module.effect and module.limitation then
    for effect_name in pairs(module.effect) do
      if effect_name == "productivity"then
    for _, item in pairs( productivityitemlist) do
                table.insert(module.limitation,    item)
    end
        break
      end
    end
  end
end

data.raw["equipment-grid"]['spidertron-equipment-grid'].width = 16
data.raw["equipment-grid"]['spidertron-equipment-grid'].height = 16
data.raw["equipment-grid"]['spidertron-equipment-grid'].equipment_categories = {"car", "armor", "vehicle", "farl-equipment", "tank", "armoured-vehicle", "train", "locomotive", "armoured-train", "armoured-locomotive"}

data.raw["character"]["character"].mining_speed = 4.0
data.raw.tile["stone-path"].decorative_removal_probability = 1
data.raw.tile["concrete"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-right"].decorative_removal_probability = 1
data.raw.tile["hazard-concrete-left"].decorative_removal_probability = 1
data.raw.tile["refined-concrete"].decorative_removal_probability = 1
data.raw.tile["concrete"].decorative_removal_probability = 1
data.raw.tile["refined-hazard-concrete-right"].decorative_removal_probability = 1
data.raw.tile["refined-hazard-concrete-left"].decorative_removal_probability = 1
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_test = { "ground-tile", "water-tile", "object-layer" }
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_mask = nil
data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization = nil
data.raw["offshore-pump"]["offshore-pump"].flags = {"placeable-neutral", "player-creation"}
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_box = { { -0.5, -0.25}, {0.5, 0.25} }
data.raw.character.character.inventory_size = 180
data.raw.character.character.build_distance = 4096
data.raw.character.character.drop_item_distance = 4096
data.raw.character.character.reach_distance = 4096
data.raw.character.character.reach_resource_distance = 4096

data.raw.item["beacon"].stack_size = 50
data.raw["recipe"]["landfill"].result_count = 100
data.raw["technology"]["spidertron"].unit = {ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"military-science-pack", 1},{"chemical-science-pack", 1}},time = 30,count = 450}
data.raw["technology"]["spidertron"].prerequisites = {"tank","military-3"}
data.raw["recipe"]["spidertron"].ingredients = {{"engine-unit", 64},{"steel-plate", 200},{"advanced-circuit", 20},{"radar", 2},{"raw-fish", 1}}
data.raw["recipe"]["spidertron-remote"].ingredients = {{"advanced-circuit", 1},{"radar", 1}}
data.raw["gun"]["tank-machine-gun"].attack_parameters = {type = "projectile",ammo_category = "bullet",cooldown = 4,movement_slow_down_factor = 0.7,damage_modifier = 3,shell_particle = {name = "shell-particle",direction_deviation = 0.1,speed = 0.1,speed_deviation = 0.03,center = {0, 0},creation_distance = -0.6875,starting_frame_speed = 0.4,starting_frame_speed_deviation = 0.1},projectile_center = {-0.15625, -0.07812},projectile_creation_distance = 1,range = 35,sound = sounds.heavy_gunshot}
data.raw["gun"]["artillery-wagon-cannon"]["attack_parameters"].range = 12 * 32
data.raw["gun"]["artillery-wagon-cannon"]["attack_parameters"].sound =  {filename = "__base__/sound/fight/artillery-shoots-1.ogg", volume = 1.0, audible_distance_modifier = 30000}
data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 4
data.raw["artillery-wagon"]["artillery-wagon"].turn_after_shooting_cooldown = 15
data.raw["artillery-turret"]["artillery-turret"].turn_after_shooting_cooldown = 15
data.raw["fluid-turret"]["flamethrower-turret"].prepare_range = 48
data.raw["fluid-turret"]["flamethrower-turret"]["attack_parameters"].range = 42
data.raw["technology"]["inserter-capacity-bonus-1"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 4}}
data.raw["technology"]["inserter-capacity-bonus-2"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 4}}
data.raw["technology"]["inserter-capacity-bonus-3"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 4}}
data.raw["technology"]["inserter-capacity-bonus-4"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 4}}
data.raw["technology"]["inserter-capacity-bonus-5"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 4}}
data.raw["technology"]["inserter-capacity-bonus-6"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 8}}
data.raw["technology"]["inserter-capacity-bonus-7"].effects = {{type = "inserter-stack-size-bonus",modifier = 1},{type = "stack-inserter-capacity-bonus",modifier = 16}}
data.raw["ammo"]["firearm-magazine"].magazine_size = 100
data.raw["ammo"]["firearm-magazine"]["ammo_type"].action ={{type = "direct",action_delivery ={{type = "instant",source_effects ={{type = "create-explosion",entity_name = "explosion-gunshot"}},target_effects = {{ type = "create-entity",entity_name = "explosion-hit" }, {type = "damage",damage = { amount = 9,type = "physical"}}}}}}}
data.raw["ammo"]["piercing-rounds-magazine"].magazine_size = 100
data.raw["ammo"]["piercing-rounds-magazine"]["ammo_type"].action ={{type = "direct",action_delivery ={{type = "instant",source_effects ={{type = "create-explosion",entity_name = "explosion-gunshot"}},target_effects = {{ type = "create-entity",entity_name = "explosion-hit" }, {type = "damage",damage = { amount = 16,type = "physical"}}}}}}}
data.raw["ammo"]["uranium-rounds-magazine"].magazine_size = 100
data.raw["ammo"]["artillery-shell"].stack_size = 100
--data.raw["boiler"]["heat-exchanger"].energy_consumption = "40MW"
--data.raw["generator"]["steam-turbine"].fluid_usage_per_tick = 4
data.raw["fluid-wagon"]["fluid-wagon"].capacity = 300000
data.raw["fluid-wagon"]["fluid-wagon"].weight = 2000
data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 4
data.raw["logistic-robot"]["logistic-robot"].speed = 0.18
data.raw["logistic-robot"]["logistic-robot"].energy_per_tick = "0.01kJ"
data.raw["logistic-robot"]["logistic-robot"].speed_multiplier_when_out_of_energy = 0.5
data.raw["logistic-robot"]["logistic-robot"].energy_per_move = "2kJ"
data.raw["logistic-robot"]["logistic-robot"].min_to_charge = 0.2
data.raw["logistic-robot"]["logistic-robot"].max_to_charge = 0.7
data.raw["logistic-robot"]["logistic-robot"].max_energy = "3.5MJ"
data.raw["construction-robot"]["construction-robot"].speed = 0.18
data.raw["construction-robot"]["construction-robot"].energy_per_tick = "0.01kJ"
data.raw["construction-robot"]["construction-robot"].speed_multiplier_when_out_of_energy = 0.5
data.raw["construction-robot"]["construction-robot"].energy_per_move = "2kJ"
data.raw["construction-robot"]["construction-robot"].min_to_charge = 0.2
data.raw["construction-robot"]["construction-robot"].max_to_charge = 0.7
data.raw["construction-robot"]["construction-robot"].max_energy = "3.5MJ"
data.raw["artillery-turret"]["artillery-turret"].ammo_stack_limit = 100
data.raw["locomotive"]["locomotive"].equipment_grid = "vehicle-equipment-grid"
data.raw["car"]["car"].equipment_grid = "vehicle-equipment-grid"
data.raw["car"]["tank"].equipment_grid = "vehicle-large-equipment-grid"
data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid = "vehicle-equipment-grid"
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 2000
data.raw["offshore-pump"]["offshore-pump"].fluid_box = {base_area = 10,base_level = 1,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, 1}}}}
data.raw["pump"]["pump"].pumping_speed = 2000
data.raw["pump"]["pump"].fluid_box = {base_area = 10,height = 2,pipe_covers = pipecoverspictures(),pipe_connections = {{ position = {0, -1.5}, type="output" },{ position = {0, 1.5}, type="input" }}}
data.raw["inserter"]["long-handed-inserter"].extension_speed = 0.2
data.raw["inserter"]["fast-inserter"].extension_speed = 0.2
data.raw["inserter"]["stack-inserter"].extension_speed = 0.2
data.raw["inserter"]["stack-filter-inserter"].extension_speed = 0.2
data.raw["inserter"]["filter-inserter"].extension_speed = 0.2

data.raw.item["sulfur"].stack_size = 200
data.raw.item["solid-fuel"].stack_size = 200
data.raw["rail-planner"]["rail"].stack_size = 200
data.raw.item["uranium-ore"].stack_size = 200
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["copper-ore"].stack_size = 200
data.raw.item["coal"].stack_size = 200
data.raw.item["stone"].stack_size = 200
data.raw.item["wood"].stack_size = 500
data.raw.item["copper-cable"].stack_size = 500
data.raw.item["stone-brick"].stack_size = 10000
data.raw.item["iron-plate"].stack_size = 200
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["copper-plate"].stack_size = 200
data.raw.item["pipe"].stack_size = 100
data.raw.item["steam-engine"].stack_size = 50
data.raw.item["hazard-concrete"].stack_size = 10000
data.raw.item["landfill"].stack_size = 10000
data.raw.item["concrete"].stack_size = 10000
data.raw.item["refined-concrete"].stack_size = 10000
data.raw.item["refined-hazard-concrete"].stack_size = 10000
data.raw.item["low-density-structure"].stack_size = 100
data.raw.item["rocket-control-unit"].stack_size = 100
require("prototypes.groups.item-groups-updates")
data.raw["technology"]["logistic-system"]["unit"]["ingredients"] = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}}
data.raw["recipe"]["stack-inserter"].ingredients = {{"iron-gear-wheel", 15},{"electronic-circuit", 15},{"fast-inserter", 1}}
    
if data.raw["recipe"]["catalysator-brown"] then
  data.raw["recipe"]["catalysator-brown"].results = {{type="item", name="catalysator-brown", amount=5}}
  data.raw["recipe"]["catalysator-green"].results = {{type="item", name="catalysator-green", amount=5}}
  data.raw["recipe"]["catalysator-orange"].results = {{type="item", name="catalysator-orange", amount=4}}
end

if data.raw["assembling-machine"]["kr-greenhouse"] then
  data.raw["assembling-machine"]["kr-greenhouse"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["kr-bio-lab"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
end

if not settings.startup["lite_mode"].value then
  data.raw.recipe["production-science-pack"].ingredients = {{"electric-furnace", 1},{"productivity-module", 1},{"rail", 15}}
  data.raw.tool["automation-science-pack"].stack_size = 2000
  data.raw.tool["logistic-science-pack"].stack_size = 2000
  data.raw.tool["chemical-science-pack"].stack_size = 2000
  data.raw.tool["military-science-pack"].stack_size = 2000
  data.raw.tool["production-science-pack"].stack_size = 2000
  data.raw.tool["utility-science-pack"].stack_size = 2000
  data.raw.tool["space-science-pack"].stack_size = 2000
  data.raw.item["rocket-fuel"].stack_size = 100
  data.raw["technology"]["logistic-system"]["unit"]["ingredients"] = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}}
  data.raw["technology"]["artillery"].prerequisites = {"rocketry"}
  data.raw["technology"]["artillery"]["unit"]["ingredients"] = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"military-science-pack", 1}}
  data.raw["technology"]["military-4"]["unit"]["ingredients"] = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"military-science-pack", 1}}
  data.raw["technology"]["military-3"]["unit"]["ingredients"] = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"military-science-pack", 1}}
  data.raw["recipe"]["stack-inserter"].ingredients = {{"iron-gear-wheel", 15},{"electronic-circuit", 15},{"fast-inserter", 1}}
  data.raw.item["sulfur"].stack_size = 200
  data.raw["rail-planner"]["rail"].stack_size = 200
  data.raw.item["uranium-ore"].stack_size = 200
  data.raw.item["iron-ore"].stack_size = 200
  data.raw.item["copper-ore"].stack_size = 200
  data.raw.item["coal"].stack_size = 200
  data.raw.item["stone"].stack_size = 200
  data.raw.item["wood"].stack_size = 500
  data.raw.item["solid-fuel"].stack_size = 200
  data.raw.item["copper-cable"].stack_size = 500
  data.raw.item["stone-brick"].stack_size = 10000
  data.raw.item["iron-plate"].stack_size = 200
  data.raw.item["steel-plate"].stack_size = 200
  data.raw.item["copper-plate"].stack_size = 200
  data.raw.item["pipe"].stack_size = 100
  data.raw.item["steam-engine"].stack_size = 50
  data.raw.item["hazard-concrete"].stack_size = 10000
  data.raw.item["landfill"].stack_size = 10000
  data.raw.item["concrete"].stack_size = 10000
  data.raw.item["refined-concrete"].stack_size = 10000
  data.raw.item["refined-hazard-concrete"].stack_size = 10000
  data.raw.item["rocket-fuel"].stack_size = 100
  data.raw.item["low-density-structure"].stack_size = 100
  data.raw.item["rocket-control-unit"].stack_size = 100
  data.raw.module["speed-module"].stack_size = 100
  data.raw.module["speed-module-2"].stack_size = 100
  data.raw.module["speed-module-3"].stack_size = 100
  data.raw.module["productivity-module"].stack_size = 100
  data.raw.module["productivity-module-2"].stack_size = 100
  data.raw.module["productivity-module-3"].stack_size = 100
  data.raw.module["effectivity-module"].stack_size = 100
  data.raw.module["effectivity-module-2"].stack_size = 100
  data.raw.module["effectivity-module-3"].stack_size = 100
end


if pyhightech then 
	data.raw["logistic-robot"]["logistic-robot-ht"].speed = 1.5
	data.raw["logistic-robot"]["logistic-robot-ht"].energy_per_tick = "0.01kJ"
	data.raw["logistic-robot"]["logistic-robot-ht"].speed_multiplier_when_out_of_energy = 0.5
	data.raw["logistic-robot"]["logistic-robot-ht"].energy_per_move = "1.5kJ"
	data.raw["logistic-robot"]["logistic-robot-ht"].min_to_charge = 0.2
  data.raw["logistic-robot"]["logistic-robot-ht"].max_to_charge = 0.7
	data.raw["logistic-robot"]["logistic-robot-ht"].max_energy = "4.5MJ"
	data.raw["logistic-robot"]["logistic-robot-ht"].max_payload_size = 15
	data.raw["construction-robot"]["construction-robot-ht"].speed = 1.5
	data.raw["construction-robot"]["construction-robot-ht"].energy_per_tick = "0.01kJ"
	data.raw["construction-robot"]["construction-robot-ht"].speed_multiplier_when_out_of_energy = 0.5
	data.raw["construction-robot"]["construction-robot-ht"].energy_per_move = "1.5kJ"
	data.raw["construction-robot"]["construction-robot-ht"].min_to_charge = 0.2
	data.raw["construction-robot"]["construction-robot-ht"].max_to_charge = 0.7
	data.raw["construction-robot"]["construction-robot-ht"].max_energy = "4.5MJ"
	data.raw["construction-robot"]["construction-robot-ht"].max_payload_size = 15
end

if data.raw.item["bob-greenhouse"] then
  bobmods.lib.recipe.replace_ingredient("bob-greenhouse", "glass", "copper-plate")
end
if data.raw.item["basic-circuit-board"] then
  bobmods.lib.recipe.replace_ingredient("small-lamp", "electronic-circuit", "basic-circuit-board")
end



-----Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki-----

if data.raw["assembling-machine"]["y-crusher"] then
    data.raw["boiler"]["y-boiler-iv"]["energy_source"].effectivity = 1.50
    data.raw["boiler"]["y-boiler-iv"].energy_consumption = "11.9MW"
    data.raw["recipe"]["y-gun-turret-mk3-recipe"]["ingredients"] = {{"y-basic-t1-mf", 1},{"y_structure_element", 1},{"steel-plate", 4}}
    data.raw["recipe"]["y_laser_mk1_recipe"]["ingredients"] = {{"y-basic-t2-mf", 1},{"y_blocked_capa", 1},{"y-conductive-coil-1", 3},{"y_structure_element",4}}
    data.raw["recipe"]["y-gun-turret-mk2-recipe"]["ingredients"] = {{"y-basic-t1-mf", 1},{"y_structure_element", 1},{"y-bluegear", 3}}
    data.raw["assembling-machine"]["y-crusher"].module_specification = {module_slots = 2}
    data.raw["assembling-machine"]["y-crusher"].crafting_speed = 2.0
    data.raw["assembling-machine"]["y-crusher"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    data.raw["recipe"]["y-water-gen-fluid-recipe"].results= {{type="fluid", name="water", amount=20000, },}
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].rotation_speed = 1.0
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].preparing_speed = 1.0
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].folding_speed = 1.0
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].buffer_capacity = "150MJ"
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].input_flow_limit = "600MW"
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].drain = "12kW"
    data.raw["electric-turret"]["y-weapon-ztt"].attack_parameters = {type = "beam",cooldown = 3,range = 52,damage_modifier = 20,ammo_type = {category = "laser",energy_consumption = "1750kJ",action ={type = "direct",action_delivery = {type = "beam",beam = "laser-beam",max_length = 52,duration = 3,source_offset = {0, -1.31439 }}}}}
    data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].buffer_capacity = "10MJ"
    data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].input_flow_limit = "10MW"
    data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].drain = "12kW"
    data.raw["electric-turret"]["y-laser-def-s4"].attack_parameters = {type = "beam",cooldown = 6,range = 33,damage_modifier = 5,ammo_type = {category = "laser",energy_consumption = "150kJ",action ={type = "direct",action_delivery = {type = "beam",beam = "laser-beam",max_length = 26,duration = 6,source_offset = {0, -1.31439 }}}}}
    data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].buffer_capacity = "10MJ"
    data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].input_flow_limit = "10MW"
    data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].drain = "12kW"
    data.raw["electric-turret"]["y_turret_laser22f12"].attack_parameters = {type = "beam",cooldown = 6,range = 35,damage_modifier = 4,ammo_type = {category = "laser",energy_consumption = "175kJ",action ={type = "direct",action_delivery = {type = "beam",beam = "laser-beam",max_length = 35,duration = 6
    ,source_offset = {0, -1.31439 }}}}}
    data.raw["radar"]["yi_radar"].max_distance_of_nearby_sector_revealed = 10
    data.raw["beacon"]["yi_beacon"].supply_area_distance = 7
    data.raw["beacon"]["yi_beacon"].distribution_effectivity = 0.95
    data.raw["beacon"]["yi_beacon"]["module_specification"].module_slots = 3
    data.raw["beacon"]["yi_beacon"].energy_usage = "140kW"
    data.raw["recipe"]["y-wash-dirt-recipe"].results={{type="item", name="stone", amount=27, },{type="item", name="y-crystal2", amount=11, },{type="fluid", name="y-con_water", amount=300 }}
    data.raw["recipe"]["y_mc_e2_mining_drill_recipe"].ingredients = {{"y-mining-drill-e2",1},{"y_rwtechsign",700},}
    data.raw["roboport"]["yi_roboport"].energy_source = {type = "electric",usage_priority = "secondary-input",input_flow_limit = "75MW",buffer_capacity = "800MJ"}
    data.raw["recipe"]["yi_roboport_recipe"].ingredients = {{ type = "item", name = "y_structure_element" , amount = 14, },{ type = "item", name = "yi_magnetron" , amount = 2, },{ type = "item", name = "y_blocked_capa" , amount = 2, },{ type = "item", name = "y-basic-t1-mf" , amount = 2, }}
    data.raw["logistic-robot"]["yi_logistic-robot"].max_payload_size = 10
    data.raw["logistic-robot"]["yi_logistic-robot"].speed = 0.50
    data.raw["logistic-robot"]["yi_logistic-robot"].energy_per_tick = "0.01kJ"
    data.raw["logistic-robot"]["yi_logistic-robot"].speed_multiplier_when_out_of_energy = 0.5
    data.raw["logistic-robot"]["yi_logistic-robot"].energy_per_move = "1kJ"
    data.raw["logistic-robot"]["yi_logistic-robot"].min_to_charge = 0.2
    data.raw["logistic-robot"]["yi_logistic-robot"].max_to_charge = 0.7
    data.raw["logistic-robot"]["yi_logistic-robot"].max_energy = "7.5MJ"
    data.raw["logistic-robot"]["yi_logistic-robot"].working_sound = sounds.flying_robot(0.5)
    data.raw["construction-robot"]["yi_construction-robot"].working_sound = sounds.construction_robot(0.7)
    data.raw["construction-robot"]["yi_construction-robot"].max_payload_size = 10
    data.raw["construction-robot"]["yi_construction-robot"].speed = 0.50
    data.raw["construction-robot"]["yi_construction-robot"].energy_per_tick = "0.01kJ"
    data.raw["construction-robot"]["yi_construction-robot"].speed_multiplier_when_out_of_energy = 0.5
    data.raw["construction-robot"]["yi_construction-robot"].energy_per_move = "1kJ"
    data.raw["construction-robot"]["yi_construction-robot"].min_to_charge = 0.2
    data.raw["construction-robot"]["yi_construction-robot"].max_to_charge = 0.7
    data.raw["construction-robot"]["yi_construction-robot"].max_energy = "7.5MJ"
    data.raw["recipe"]["y-ac-uc2copper-recipe"].enabled = "false"
    data.raw["recipe"]["y-ac-uc2iron-recipe"].enabled = "false"
    --data.raw["recipe"]["y-ac-uc2wood-recipe"].enabled = "false"
    data.raw["recipe"]["y-ac-uc2coal-recipe"].enabled = "false"
    data.raw["recipe"]["y-ac-uc2plastic-recipe"].enabled = "false"
    data.raw.module["y_modul_red2"].effect = { speed = {bonus = 1.25}, consumption = {bonus = -0.15 }}
    --data.raw.module["y_modul_science"].effect = { productivity = {bonus = 0.30}, consumption = {bonus = 1.0}, pollution = {bonus = 0.3}}
    data.raw["recipe"]["y-crush-unicomp-raw-recipe"].energy_required = 1.5
    data.raw["recipe"]["y-crush-fuel-raw-recipe"].energy_required = 1.5
    if deadlock_stacking then
      deadlock_stacking.create("y-res1", nil, "deadlock-stacking-1", 64)
      deadlock_stacking.create("y-res2", nil, "deadlock-stacking-1", 64)
    end

    yproductivityitemlist ={ "y_slag_brick_burn_recipe", "y_slag_brick_recipe", "y_slag_granulate_recipe", "y-orange-stuff_recipe", "y_hps_steel_recipe", "y_hps_purecopper_recipe", "y_hps_pureiron_recipe", "y-basic-st2-mf-recipe","y-chip1-recipe", "y-chip2-recipe", "yi_magnetron_recipe", "y_ammo_plasma_recipe", "y-battery-single-use3-recipe", "y_blocked_capa_recipe", "y-crystal-cnd-recipe", "y-quantrinum-recipe", "y-fuel-reactor-recipe", "y-infused-mud-recipe", "y-infused-uca2-recipe", "y-mixfuel-load-recipe", "y-wooden-brikett-packed-recipe", "y-pure-copper-recipe", "y-pure-iron-recipe", "y-refined-copper", "y-refined-iron", "y-wash-dirt-recipe", "y-smelt-crush-res1-recipe", "y-smelt-crush-res2-recipe", "y_quantrinum_infusion_recipe", "y_structure_element_recipe", "y-bluegear-recipe", "y_structure_vessel_recipe", "y-basic-st1-mf-recipe", "y_chip_plate_recipe", "y_dotzetron_recipe", "y_structure_electric_recipe", "y-heat-pipe-recipe", "y-heat-pipe-recipe", "y-conductive-coil-1-recipe", "y-conductive-wire-1_recipe", "y-crush-unicomp-raw-recipe", "y-crush-fuel-raw-recipe", "y_slag_granulate_recipe", "y_steinmehl_recipe", "y-coaldust-recipe", "y_granulate_wood_recipe", "y-unicomp-raw-recipe", "y-raw-fuelnium-recipe", "y-bullet-case-recipe", "y_ammo_case_recipe", "yi_graphite_recipe", "y_data_crystal_recipe"}
    for _, module in pairs(data.raw.module) do
        if module.effect and module.limitation then
            for effect_name in pairs(module.effect) do
                if effect_name == "productivity"then
                    for _, item in pairs( yproductivityitemlist) do
                        table.insert(module.limitation,    item)
                    end
                    break
                end
            end
        end
    end
    data.raw.item["yi_beacon"].stack_size = 50
    data.raw.beacon["yi_beacon"].fast_replaceable_group = "beacon"
    if data.raw["beacon"]["beacon-3"] then
    	data.raw.beacon["yi_beacon"].next_upgrade = "beacon-3"
    end
    data.raw.item["y-substation-h"].stack_size = 50
    data.raw.item["y-substation-m"].stack_size = 50
    data.raw.recipe["y-substation-m-recipe"].ingredients = {{"steel-plate", 8}, {"y-conductive-wire-1", 2}, {"y-chip-1", 1},}
    data.raw.item["y_mc_e2_mining_drill"].stack_size = 50
    data.raw.item["y-mining-drill-e2"].stack_size = 50
    data.raw.item["y_turret_plasma"].stack_size = 50
    data.raw.container["y_sc11"].inventory_size = 200
    data.raw.container["y_c22"].inventory_size = 400
    data.raw.container["y_cg33"].inventory_size = 600
    data.raw.container["y_sc44"].inventory_size = 800
    data.raw["logistic-container"]["y_rc22"].inventory_size = 400
    data.raw["logistic-container"]["y_pc22"].inventory_size = 400
    data.raw["logistic-container"]["y-rare-m1bunker-log"].inventory_size = 600
    data.raw["recipe"]["y_mc_e2_mining_drill_recipe"].results = {{type="item", name="y_mc_e2_mining_drill", amount=1}}
    data:extend({{type = "recipe", name = "cm-rwtechsign_exchange_recipe", category = "yuoki-stargate-recipe", enabled = "true", energy_required = 1.00, ingredients = {{ type = "item", name = "y-fame" , amount = 1, },}, results = {{ type = "item", name = "y_rwtechsign", amount = 1500, },}, main_product = "y_rwtechsign", icon_size = 32, icon =  "__Yuoki__/graphics/icons/tech-sign_retrade.png", order = "c3", group = "yuoki-atomics", subgroup = "y-stargate-f"}})
    data:extend({{type = "recipe", name = "cm-unicomp-to-slag-recipe", order="z", energy_required = 2.0, enabled = "true", ingredients = {{"y-unicomp-a2", 1},}, result = "y-slag", result_count = 100, subgroup = "y-atomics", category = "yuoki-atomics-recipe", icon = "__Yuoki__/graphics/icons/y-slag.png", icon_size = 32,}})
end

if data.raw["assembling-machine"]["yie_science_blue_gen"] then
    data.raw["assembling-machine"]["yie_science_blue_gen"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
end

-------Space Exploration-------------------------------------------------

if data.raw["assembling-machine"]["se-space-assembling-machine"] then
  productivityitemlist ={ "se-space-coolant-cryonite", "se-space-coolant"}
  for _, module in pairs(data.raw.module) do
    if module.effect and module.limitation then
      for effect_name in pairs(module.effect) do
        if effect_name == "productivity"then
      for _, item in pairs( productivityitemlist) do
                  table.insert(module.limitation,    item)
      end
          break
        end
      end
    end
  end
  if data.raw["offshore-pump"]["offshore-pump-output"] then
    data.raw["offshore-pump"]["offshore-pump-output"].energy_source = {type = "void"}
    data.raw["offshore-pump"]["offshore-pump-output"].energy_usage = "0w"
  end
  data.raw["offshore-pump"]["offshore-pump"].energy_source = {type = "void"}
  data.raw["offshore-pump"]["offshore-pump"].energy_usage = "0w"
  data.raw["pipe-to-ground"]["se-space-pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance = 100
  data.raw["assembling-machine"]["se-space-assembling-machine"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-manufactory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-manufactory"].collision_mask = {"water-tile", "item-layer", "object-layer", "player-layer"}
  data.raw["assembling-machine"]["se-space-radiation-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-radiation-laboratory"].module_specification = {module_slots = 6}
  data.raw["assembling-machine"]["se-space-radiation-laboratory"].collision_mask = {"water-tile", "item-layer", "object-layer", "player-layer"}
  data.raw["assembling-machine"]["se-space-biochemical-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-biochemical-laboratory"].collision_mask = {"water-tile", "item-layer", "object-layer", "player-layer"}
  data.raw["assembling-machine"]["se-space-biochemical-laboratory"].module_specification = {module_slots = 8}
  data.raw["assembling-machine"]["se-space-biochemical-laboratory"].crafting_speed = 10.0
  data.raw["assembling-machine"]["se-space-decontamination-facility"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-plasma-generator"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-particle-collider"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-particle-accelerator"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-mechanical-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-material-fabricator"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-electromagnetics-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-genetics-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-growth-facility"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-gravimetrics-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-laser-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-supercomputer-1"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-supercomputer-2"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-supercomputer-3"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-supercomputer-4"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-thermodynamics-laboratory"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["se-space-thermodynamics-laboratory"].module_specification = {module_slots = 6}
  data.raw["assembling-machine"]["se-space-thermodynamics-laboratory"].crafting_speed = 6.0
  data.raw["assembling-machine"]["se-space-manufactory"].module_specification = {module_slots = 8}
  data.raw["mining-drill"]["se-core-miner-drill"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["mining-drill"]["se-core-miner-drill"].module_specification = {module_slots = 6}
  data.raw["mining-drill"]["se-core-miner-drill"].mining_speed = 200
  data.raw["item"]["se-space-manufactory"].stack_size = 20
  data.raw["equipment-grid"]["se-thruster-suit-grid"].width = 16
  data.raw["equipment-grid"]["se-thruster-suit-grid"].height = 16
  data.raw["equipment-grid"]["se-thruster-suit-2-grid"].width = 18
  data.raw["equipment-grid"]["se-thruster-suit-2-grid"].height = 18
  data.raw["equipment-grid"]["se-thruster-suit-3-grid"].width = 20
  data.raw["equipment-grid"]["se-thruster-suit-3-grid"].height = 20
  data.raw["equipment-grid"]["se-thruster-suit-4-grid"].width = 24
  data.raw["equipment-grid"]["se-thruster-suit-4-grid"].height = 24
  data.raw["transport-belt"]["se-space-transport-belt"].fast_replaceable_group = "transport-belt"
  data.raw.recipe["se-space-transport-belt"].normal.result_count = 2
  data.raw.recipe["se-space-transport-belt"].normal.energy_required = 1
  data.raw["underground-belt"]["se-space-underground-belt"].fast_replaceable_group = "transport-belt"
  data.raw["underground-belt"]["se-space-underground-belt"].max_distance = 10
  data.raw.recipe["se-space-underground-belt"].result_count = 2
  data.raw.recipe["se-space-underground-belt"].energy_required = 2
  data.raw["splitter"]["se-space-splitter"].fast_replaceable_group = "transport-belt"
  data.raw.recipe["se-space-splitter"].energy_required = 2
  if data.raw["furnace"]["se-space-transport-belt-beltbox"] then
      data.raw.recipe["se-space-transport-belt-beltbox"].energy_required = 2
  end
  if data.raw["loader-1x1"]["se-space-transport-belt-loader"] then
      data.raw.recipe["se-space-transport-belt-loader"].energy_required = 2
  end
  local deep_space_variants = {"black", "blue", "white", "red", "cyan", "magenta", "yellow", "green"}
  for _, name in ipairs(deep_space_variants) do
      data.raw["transport-belt"]["se-deep-space-transport-belt-" .. name].fast_replaceable_group = "transport-belt"
      data.raw["underground-belt"]["se-deep-space-underground-belt-" .. name].fast_replaceable_group = "transport-belt"
      data.raw["splitter"]["se-deep-space-splitter-" .. name].fast_replaceable_group = "transport-belt"
  end
  data.raw.recipe["se-deep-space-underground-belt"].energy_required = 10
  data.raw.recipe["se-deep-space-splitter"].energy_required = 10
  data.raw.recipe["se-deep-space-transport-belt-loader-black"].energy_required = 10
  data.raw.recipe["se-deep-space-transport-belt-beltbox"].energy_required = 10
    if data.raw.furnace["se-space-transport-belt-beltbox"] then
      data.raw.furnace["se-space-transport-belt-beltbox"].allowed_effects = {"consumption", "speed", "pollution"}
      data.raw.furnace["se-space-transport-belt-beltbox"].module_specification = {module_slots = 2}
      data.raw.furnace["se-space-transport-belt-beltbox"].crafting_speed = 30.0
    end
end

-----Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP-----

if data.raw["recipe"]["yir_coins_gen1_recipe"] then
  data.raw["recipe"]["yir_coins_gen1_recipe"].energy_required = 1
  for i,v in ipairs({"yir_cw_flourit","yir_cw_uranite","yir_cw_upempty","yir_cw_upclosed"}) do
      data.raw["cargo-wagon"][v].inventory_size = 80
      data.raw["cargo-wagon"][v].max_speed = 4.0
      data.raw["cargo-wagon"][v].max_health = 4000
      data.raw["cargo-wagon"][v].braking_force = 4
      data.raw["cargo-wagon"][v].equipment_grid = "vehicle-equipment-grid"
      data.raw["cargo-wagon"][v].flags = {"placeable-neutral", "player-creation", "placeable-off-grid"}
  end
  for i,v in ipairs({"yir_cw_flourit_4a","yir_cw_uran_4a","yir_cw_empty_4a","yir_cw_trans_4a","yir_cw_4a_urana","yir_cw_4a_cellsu"}) do
      data.raw["cargo-wagon"][v].inventory_size = 150
      data.raw["cargo-wagon"][v].max_speed = 4.0
      data.raw["cargo-wagon"][v].max_health = 4000
      data.raw["cargo-wagon"][v].braking_force = 4
      data.raw["cargo-wagon"][v].equipment_grid = "vehicle-equipment-grid"
      data.raw["cargo-wagon"][v].flags = {"placeable-neutral", "player-creation", "placeable-off-grid"}
  end
    data.raw["locomotive"]["yir_atom_header"].max_health = 8000
    data.raw["locomotive"]["yir_atom_header"].max_speed = 4.0
    data.raw["locomotive"]["yir_atom_header"].braking_force = 40
    data.raw["locomotive"]["yir_atom_header"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["locomotive"]["yir_atom_header"].burner.burnt_inventory_size = 1
    data.raw["locomotive"]["yir_atom_header"].flags = {"placeable-neutral", "player-creation", "placeable-off-grid"}
    data.raw["locomotive"]["yir_atom_mitte"].burner.burnt_inventory_size = 2
    data.raw["locomotive"]["yir_atom_mitte"].max_health = 8000
    data.raw["locomotive"]["yir_atom_mitte"].max_speed = 4.0
    data.raw["locomotive"]["yir_atom_mitte"].braking_force = 75
    data.raw["locomotive"]["yir_atom_mitte"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["locomotive"]["yir_atom_mitte"].flags = {"placeable-neutral", "player-creation", "placeable-off-grid"}
end

if data.raw["assembling-machine"]["ye_fassembly1"] then
    data.raw["assembling-machine"]["ye_fassembly1"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["ye_fassembly1"].ingredient_count = 255
    data.raw["assembling-machine"]["ye_fassembly2"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["ye_fassembly2"].ingredient_count = 255
    data.raw["assembling-machine"]["ye_fassembly2"].crafting_speed = 5.0
    data.raw["assembling-machine"]["ye_fassembly_sp"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["ye_fassembly_sp"].ingredient_count = 255
    data:extend{
      {type = "recipe-category", name = "basic-crafting-0"},
      {type = "recipe-category", name = "crafting-0"},
    }
    for _,name in pairs{"ye_fassembly1", "ye_fassembly2", "ye_fassembly_sp"} do
      local categories = data.raw["assembling-machine"][name].crafting_categories
      table.insert(categories, "basic-crafting")
      table.insert(categories, "basic-crafting-0")
      table.insert(categories, "crafting-0")
      table.insert(categories, "crafting-with-fluid")
      table.insert(categories, "crafting")
      table.insert(categories, "advanced-crafting")
    end
  data.raw["assembling-machine"]["ye_farm"].module_specification = {module_slots = 4}
  data.raw["assembling-machine"]["ye_farm"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["ye_farm"].crafting_speed = 3.0
  data.raw["assembling-machine"]["ye_meatfarm"].module_specification = {module_slots = 4}
  data.raw["assembling-machine"]["ye_meatfarm"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["ye_meatfarm"].crafting_speed = 3.0
  data.raw["assembling-machine"]["ye_pool"].module_specification = {module_slots = 4}
  data.raw["assembling-machine"]["ye_pool"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["ye_pool"].crafting_speed = 3.0
  data.raw["assembling-machine"]["ye_icemaker"].module_specification = {module_slots = 4}
  data.raw["assembling-machine"]["ye_icemaker"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  data.raw["assembling-machine"]["ye_icemaker"].crafting_speed = 3.0

end

if data.raw["car"]["heli-entity-_-"] then
    data.raw["recipe"]["heli-recipe"].ingredients = {{"engine-unit", 150},{"steel-plate", 150},{"iron-gear-wheel", 250},{"gun-turret", 10}}
    data.raw["car"]["heli-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["car"]["heli-entity-_-"].max_health = 7500
    data.raw["car"]["heli-placement-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["car"]["heli-placement-entity-_-"].max_health = 7500
    data.raw["car"]["heli-flying-collision-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["car"]["heli-body-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["car"]["heli-shadow-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["car"]["heli-burner-entity-_-"].equipment_grid = "vehicle-large-equipment-grid"
end

if deadlock_stacking then
	deadlock_stacking.create("rail", nil, "deadlock-stacking-1", 64)
	data.raw.furnace["express-transport-belt-beltbox"].allowed_effects = {"consumption", "speed", "pollution"}
  data.raw.furnace["express-transport-belt-beltbox"].module_specification = {module_slots = 2}
  data.raw.furnace["express-transport-belt-beltbox"].crafting_speed = 30.0
  data.raw.furnace["fast-transport-belt-beltbox"].allowed_effects = {"consumption", "speed", "pollution"}
  data.raw.furnace["fast-transport-belt-beltbox"].module_specification = {module_slots = 2}
  data.raw.furnace["fast-transport-belt-beltbox"].crafting_speed = 10.0
end

if data.raw["item"]["warehouse-basic"] then
  data.raw["container"]["warehouse-basic"].max_health = 3500
  data.raw["container"]["warehouse-basic"].inventory_size = 2000
  for i,v in ipairs({"warehouse-passive-provider","warehouse-storage","warehouse-active-provider","warehouse-requester","warehouse-buffer"}) do
    data.raw["logistic-container"][v].max_health = 3500
    data.raw["logistic-container"][v].inventory_size = 2000
  end
end

if data.raw.item["beacon-2"] then
  data.raw.item["beacon-2"].stack_size = 50
  data.raw.item["beacon-3"].stack_size = 50
end

if data.raw.item["subspace-item-injector"] then
  data.raw["container"]["subspace-item-injector"].inventory_size = 2000
  data.raw["logistic-container"]["subspace-item-extractor"].inventory_size = 2000
  data.raw.recipe["subspace-electricity-injector"].ingredients =  {{"steel-chest", 1},{"electronic-circuit", 50}}
  data.raw.recipe["subspace-electricity-extractor"].ingredients =  {{"steel-chest", 1},{"electronic-circuit", 50}}
end

--KS Power-------------------------------------------------------------------------------------------------------

if data.raw["burner-generator"]["big-burner-generator"] then
  data.raw["burner-generator"]["big-burner-generator"].burner.effectivity = 0.95
  data.raw["burner-generator"]["burner-generator"].burner.effectivity = 0.85
end

if data.raw["recipe"]["solid-plastic"] then
  data.raw["recipe"]["solid-plastic"].category = "chemistry"
    data.raw["recipe"]["solid-plastic"]["normal"].ingredients ={{type="fluid", name="liquid-plastic", amount=5}}
    data.raw["recipe"]["solid-plastic"]["expensive"].ingredients ={{type="fluid", name="liquid-plastic", amount=10}}
    data:extend({{type = "recipe",name = "bob-resin-wood",category = "crafting-machine",subgroup = "bob-resource",energy_required = 1,ingredients = {{ "wood", 1},},result = "resin"}})
    data:extend({{type = "recipe",name = "rocket-fuel",category = "chemistry",energy_required = 30,ingredients = {{"rocket-fuel-capsule", 1},{ "rocket-oxidizer-capsule", 1}},result = "rocket-fuel"}})
    data.raw["assembling-machine"]["advanced-chemical-plant"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["advanced-chemical-plant-2"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["gas-refinery"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["gas-refinery-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["gas-refinery-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["gas-refinery-4"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["angels-chemical-plant"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["angels-chemical-plant-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["angels-chemical-plant-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["angels-chemical-plant-4"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["angels-electrolyser"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["angels-electrolyser-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["angels-electrolyser-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["angels-electrolyser-4"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["gas-refinery-small"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["gas-refinery-small-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["gas-refinery-small-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["gas-refinery-small-4"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["separator"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["separator-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["separator-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["separator-4"].module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["steam-cracker"].module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["steam-cracker-2"].module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["steam-cracker-3"].module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["steam-cracker-4"].module_specification = {module_slots = 6}
    local productivity_item_list = { "liquid-ferric-chloride-solution", "liquid-cupric-chloride-solution", "dirt-water-separation", "dirt-water-separation-2", "water-separation", "water-separation-2", "water-gas-shift-1", "water-gas-shift-2", "carbon-separation-1", "carbon-separation-2", "coke-purification", "coal-crushed", "solid-coke", "coke-purification-2", "solid-coke-sulfur", "pellet-coke", "coal-cracking-1", "coal-cracking-2", "coal-cracking-3", "gas-separation", "gas-refining", "gas-fractioning", "gas-fractioning-synthesis", "gas-fractioning-condensates", "gas-fractioning-residual", "condensates-refining", "gas-synthesis-separation", "gas-synthesis-methanation", "oil-separation", "oil-refining", "advanced-oil-refining", "residual-oil-refining", "condensates-oil-refining", "steam-cracking-naphtha", "steam-cracking-mineral-oil", "steam-cracking-fuel-oil", "mineral-oil-lubricant", "steam-cracking-methane", "steam-cracking-ethane", "steam-cracking-butane", "catalyst-steam-cracking-butane", "catalyst-steam-cracking-naphtha", "liquid-polyethylene-catalyst", "gas-formaldehyde-catalyst", "liquid-phenol-catalyst", "gas-propene-synthesis", "liquid-ethylbenzene-catalyst", "liquid-bisphenol-a", "cumene-process", "liquid-ethylene-carbonate", "gas-ethylene-oxide", "water-saline-separation", "solid-salt-separation", "gas-chlor-methane", "gas-hydrogen-chloride", "liquid-hydrochloric-acid", "gas-allylchlorid", "gas-epichlorhydrin", "liquid-glycerol", "solid-sodium-perchlorate", "liquid-hydrochloric-acid-solid-sodium-sulfate", "solid-sodium-hydroxide-solid-sodium-sulfate", "angels-hydrogen-sulfide-enrichment", "angels-heavy-water-extraction", "angels-heavy-water-cooling", "angels-heavy-water-separation", "angels-heavy-water-separation-2", "solid-plastic", "solid-resin", "solid-rubber", "solid-calcium-chloride", "gas-acid-catalyst", "solid-sulfur", "gas-sulfur-dioxide", "gas-sulfur-dioxide-calcium-sulfate", "liquid-sulfuric-acid", "liquid-hydrofluoric-acid", "liquid-hydrogen-fluoride", "gas-hydrogen-fluoride", "angels-sulfur-scrubber", "air-separation", "gas-nitrogen-dioxide", "gas-ammonium-chloride", "gas-urea", "liquid-nitric-acid", "gas-monochloramine", "gas-methylamine", "gas-dimethylamine", "gas-dimethylhydrazine", "solid-sodium-nitrate-processing", "sodium-nitrate-acid-processing", "gas-phosgene", "rocket-oxidizer-capsule", "rocket-fuel-capsule"}
  for _, module in pairs(data.raw.module) do
      if module.effect and module.limitation then
        for effect_name in pairs(module.effect) do
            if effect_name == "productivity"then
            for _, item in pairs( productivity_item_list) do
                    table.insert(module.limitation,    item)
            end
              break
            end
        end
      end
  end

end

