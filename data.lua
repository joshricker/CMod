--require("prototypes.technology.robotspeed")
require("prototypes.technology.robotcapacity")
require("prototypes.technology.logslots")
require("prototypes.technology.loaders")
--require("prototypes.technology.flamethrower-damage")
require("prototypes.technology.crafting-speed")
--require("prototypes.technology.laser-turret-damage")
require("prototypes.technology.run-speed")
require("prototypes.technology.trash-slots")
require("prototypes.technology.tool-belts")
--require("prototypes.technology.bullet-damage")
require("prototypes.waterfill.waterfill")
require("prototypes.energy-void.energy-void")
--transport
require("prototypes.transport.pipe-1")
require("prototypes.transport.pipe-ground-1")
require("prototypes.transport.pipe-ground-1-30")
require("prototypes.transport.pipe-ground-1-50")
require("prototypes.transport.transport-belt-ground-1-30")
require("prototypes.transport.transport-belt-ground-2-30")
require("prototypes.transport.transport-belt-ground-3-30")
require("prototypes.transport.transport-belt-ground-1-50")
require("prototypes.transport.transport-belt-ground-2-50")
require("prototypes.transport.transport-belt-ground-3-50")
require("prototypes.transport.tech")
require("prototypes.groups.item-groups-transport")
--Comp Solars and accumulators
require("prototypes.compact-solar.advanced-accumulator")
require("prototypes.compact-solar.elite-accumulator")
require("prototypes.compact-solar.ultimate-accumulator")
require("prototypes.compact-solar.advanced-solar")
require("prototypes.compact-solar.elite-solar")
require("prototypes.compact-solar.ultimate-solar")
require("prototypes.compact-solar.compact-solar-technology")

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
    type = "equipment-grid",
    name = "vehicle-equipment-grid",
    width = 7,
    height = 7,
    equipment_categories = {"armor", "vehicle", "farl-equipment"}
  },
   {
    type = "equipment-grid",
    name = "vehicle-large-equipment-grid",
    width = 12,
    height = 12,
    equipment_categories = {"armor", "vehicle", "farl-equipment"}
  }
})

data.raw.tile['stone-path'].decorative_removal_probability = 1
data.raw.tile['concrete'].decorative_removal_probability = 1
data.raw.tile['hazard-concrete-right'].decorative_removal_probability = 1
data.raw.tile['hazard-concrete-left'].decorative_removal_probability = 1

data.raw.player.player.inventory_size = 100
data.raw.player.player.build_distance = 4096
data.raw.player.player.drop_item_distance = 4096
data.raw.player.player.reach_distance = 4096
data.raw.player.player.reach_resource_distance = 4096
data.raw.item["sulfur"].stack_size = 200
data.raw.item["uranium-ore"].stack_size = 200
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["copper-ore"].stack_size = 200
data.raw.item["coal"].stack_size = 200
data.raw.item["stone"].stack_size = 200
data.raw.item["raw-wood"].stack_size = 500
data.raw.item["copper-cable"].stack_size = 500
data.raw.item["stone-brick"].stack_size = 200
data.raw.item["iron-plate"].stack_size = 200
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["copper-plate"].stack_size = 200
data.raw.item["pipe"].stack_size = 100
data.raw.item["steam-engine"].stack_size = 50
data.raw.item["hazard-concrete"].stack_size = 1000
data.raw.item["landfill"].stack_size = 10000
data.raw.item["concrete"].stack_size = 1000
data.raw["recipe"]["landfill"].result_count = 20
data.raw["gun"]["tank-machine-gun"].attack_parameters = {type = "projectile",ammo_category = "bullet",cooldown = 4,movement_slow_down_factor = 0.7,damage_modifier = 3,shell_particle = {name = "shell-particle",direction_deviation = 0.1,speed = 0.1,speed_deviation = 0.03,center = {0, 0},creation_distance = -0.6875,starting_frame_speed = 0.4,starting_frame_speed_deviation = 0.1},projectile_center = {-0.15625, -0.07812},projectile_creation_distance = 1,range = 35,sound = make_heavy_gunshot_sounds()}
data.raw["gun"]["artillery-wagon-cannon"]["attack_parameters"].range = 12 * 32
data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 4
data.raw["technology"]["logistic-system"]["unit"]["ingredients"] = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}}
data.raw["technology"]["artillery"]["unit"]["ingredients"] = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}}
data.raw["technology"]["military-4"]["unit"]["ingredients"] = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}}
data.raw["technology"]["tanks"]["unit"]["ingredients"] = {{"science-pack-1", 1},{"science-pack-2", 1},{"military-science-pack", 1}}
data.raw["technology"]["military-3"]["unit"]["ingredients"] = {{"science-pack-1", 1},{"science-pack-2", 1},{"military-science-pack", 1}}

data.raw["ammo"]["firearm-magazine"].magazine_size = 50
data.raw["ammo"]["firearm-magazine"]["ammo_type"].action ={{type = "direct",action_delivery ={{type = "instant",source_effects ={{type = "create-explosion",entity_name = "explosion-gunshot"}},target_effects = {{ type = "create-entity",entity_name = "explosion-hit" }, {type = "damage",damage = { amount = 6,type = "physical"}}}}}}}
data.raw["ammo"]["piercing-rounds-magazine"].magazine_size = 50
data.raw["ammo"]["piercing-rounds-magazine"]["ammo_type"].action ={{type = "direct",action_delivery ={{type = "instant",source_effects ={{type = "create-explosion",entity_name = "explosion-gunshot"}},target_effects = {{ type = "create-entity",entity_name = "explosion-hit" }, {type = "damage",damage = { amount = 12,type = "physical"}}}}}}}
data.raw["ammo"]["uranium-rounds-magazine"].magazine_size = 50
data.raw["ammo"]["artillery-shell"].stack_size = 100

data.raw["boiler"]["heat-exchanger"].energy_consumption = "40MW"
data.raw["generator"]["steam-turbine"].fluid_usage_per_tick = 4

data.raw["fluid-wagon"]["fluid-wagon"].capacity = 150000
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

data.raw["electric-turret"]["laser-turret"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "laser",starting_speed = 1.0,},}}

data.raw["locomotive"]["locomotive"].equipment_grid = "vehicle-equipment-grid"
data.raw["car"]["car"].equipment_grid = "vehicle-equipment-grid"
data.raw["car"]["tank"].equipment_grid = "vehicle-large-equipment-grid"
data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid = "vehicle-equipment-grid"

data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 200
data.raw["offshore-pump"]["offshore-pump"].fluid_box = {base_area = 10,base_level = 1,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, 1} },},}

data.raw["pump"]["pump"].pumping_speed = 2000
data.raw["pump"]["pump"].fluid_box = {base_area = 10,height = 2,pipe_covers = pipecoverspictures(),pipe_connections = {{ position = {0, -1.5}, type="output" },{ position = {0, 1.5}, type="input" },}}

data.raw["inserter"]["long-handed-inserter"].extension_speed = 0.14
data.raw["inserter"]["fast-inserter"].extension_speed = 0.14

data.raw.item["loader"].flags = {"goes-to-quickbar"}
data.raw.item["fast-loader"].flags = {"goes-to-quickbar"}
data.raw.item["express-loader"].flags = {"goes-to-quickbar"}

function loader_base(name)
return
{
  direction_in =
  {
    sheet =
    {
      filename = "__CMod__/graphics/entity/"..name.."-structure.png",
      priority = "extra-high",
      width = 64,
      height = 64
    }
  },
  direction_out =
  {
    sheet =
    {
      filename = "__CMod__/graphics/entity/"..name.."-structure.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      y = 64
    }
  }
}
end

data.raw.item["loader"].icon =  "__CMod__/graphics/icons/loader.png"
data.raw.item["fast-loader"].icon =  "__CMod__/graphics/icons/fast-loader.png"
data.raw.item["express-loader"].icon =  "__CMod__/graphics/icons/express-loader.png"

data.raw["loader"]["loader"]["structure"] = loader_base("loader")
data.raw["loader"]["fast-loader"]["structure"] = loader_base("fast-loader")
data.raw["loader"]["express-loader"]["structure"] = loader_base("express-loader")

data.raw["loader"]["loader"].speed = 0.045
data.raw["loader"]["fast-loader"].speed = 0.075
data.raw["loader"]["express-loader"].speed = 0.1

data.raw.item["loader"].subgroup = "transport-loader"
data.raw.item["loader"].order = "a"
data.raw.item["fast-loader"].subgroup = "transport-loader"
data.raw.item["fast-loader"].order = "b"
data.raw.item["express-loader"].subgroup = "transport-loader"
data.raw.item["express-loader"].order = "c"

data.raw["artillery-turret"]["artillery-turret"].ammo_stack_limit = 100

--data.raw["night-vision-equipment"]["night-vision-equipment"].tint = {r = 0, g = 0, b = 0, a = 0}



if data.raw["recipe"]["solid-plastic"] then
    data.raw["recipe"]["solid-plastic"]["normal"].ingredients ={{type="fluid", name="liquid-plastic", amount=4}}
    data.raw["recipe"]["solid-plastic"]["expensive"].ingredients ={{type="fluid", name="liquid-plastic", amount=12}}
end
-----Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki----------Yuoki-----

if data.raw["assembling-machine"]["y-crusher"] then

    require("prototypes.smart-stack.inserter-vfast-ns")
    require("prototypes.smart-stack.inserter-vfast")
    require("prototypes.tele-bots.tele-bots-technology")
    require("prototypes.tele-bots.robot-logic_3")
    require("prototypes.tele-bots.robot-cons_3")


    data.raw["assembling-machine"]["y-crusher"].module_specification = {module_slots = 2}
    data.raw["assembling-machine"]["y-crusher"].crafting_speed = 2.0
    data.raw["assembling-machine"]["y-crusher"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

    data.raw["recipe"]["y-water-gen-fluid-recipe"].results= {{type="fluid", name="water", amount=20000, },}

    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].buffer_capacity = "500MJ"
    data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].input_flow_limit = "500MW"
    data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"].cooldown = 5
    data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"].damage_modifier = 10
    data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"]["ammo_type"].energy_consumption = "6750KJ"
    data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "cyan-laser",starting_speed = 3.75,},}}

    data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].buffer_capacity = "10MJ"
    data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].input_flow_limit = "10MW"
    data.raw["electric-turret"]["y-laser-def-s4"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "white-laser",starting_speed = 1.75,},}}

    data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].buffer_capacity = "10MJ"
    data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].input_flow_limit = "10MW"
    data.raw["electric-turret"]["y_turret_laser22f12"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "cyan-laser",starting_speed = 1.75,},}}

    data.raw["radar"]["yi_radar"].max_distance_of_nearby_sector_revealed = 10
    data.raw["recipe"]["y-wash-dirt-recipe"].results={{type="item", name="stone", amount=8, },{type="item", name="y-crystal2", amount=5, },{type="fluid", name="y-con_water", amount=60 }}
    data.raw["recipe"]["y_mc_e2_mining_drill_recipe"].ingredients = {{"y-mining-drill-e2",1},{"y_rwtechsign",700},}

    data.raw["roboport"]["yi_roboport"].energy_source = {type = "electric",usage_priority = "secondary-input",input_flow_limit = "75MW",buffer_capacity = "800MJ"}
    data.raw["recipe"]["yi_roboport_recipe"].ingredients = {{ type = "item", name = "y_structure_element" , amount = 14, },{ type = "item", name = "yi_magnetron" , amount = 2, },{ type = "item", name = "y_blocked_capa" , amount = 2, },{ type = "item", name = "y-basic-t1-mf" , amount = 2, },{ type = "item", name = "y_rwtechsign" , amount = 10, }}
    data.raw["logistic-robot"]["yi_logistic-robot"].max_payload_size = 10
    data.raw["logistic-robot"]["yi_logistic-robot"].speed = 0.50
    data.raw["logistic-robot"]["yi_logistic-robot"].energy_per_tick = "0.01kJ"
    data.raw["logistic-robot"]["yi_logistic-robot"].speed_multiplier_when_out_of_energy = 0.5
    data.raw["logistic-robot"]["yi_logistic-robot"].energy_per_move = "1kJ"
    data.raw["logistic-robot"]["yi_logistic-robot"].min_to_charge = 0.2
    data.raw["logistic-robot"]["yi_logistic-robot"].max_to_charge = 0.7
    data.raw["logistic-robot"]["yi_logistic-robot"].max_energy = "7.5MJ"
    data.raw["construction-robot"]["yi_construction-robot"].max_payload_size = 10
    data.raw["construction-robot"]["yi_construction-robot"].speed = 0.50
    data.raw["construction-robot"]["yi_construction-robot"].energy_per_tick = "0.01kJ"
    data.raw["construction-robot"]["yi_construction-robot"].speed_multiplier_when_out_of_energy = 0.5
    data.raw["construction-robot"]["yi_construction-robot"].energy_per_move = "1kJ"
    data.raw["construction-robot"]["yi_construction-robot"].min_to_charge = 0.2
    data.raw["construction-robot"]["yi_construction-robot"].max_to_charge = 0.7
    data.raw["construction-robot"]["yi_construction-robot"].max_energy = "7.5MJ"
    
    --data.raw["land-mine"]["yi_mine_plasma"].action ={type = "direct",action_delivery ={type = "instant",source_effects ={{type = "nested-result",affects_target = true,action ={type = "area",perimeter = 12,collision_mask = { "player-layer" },action_delivery ={type = "instant",target_effects ={type = "damage",damage = { amount = 1000, type = "plasma"}}}},},{ type = "create-entity", entity_name = "explosion" },{ type = "damage", damage = { amount = 1000, type = "explosion"}}}}}
    --data.raw["land-mine"]["yi_mine_impact"].action ={type = "direct",action_delivery ={type = "instant",source_effects ={{type = "nested-result",affects_target = true,action ={type = "area",perimeter = 12,collision_mask = { "player-layer" },action_delivery ={type = "instant",target_effects ={type = "damage",damage = { amount = 400, type = "impact"},damage = { amount = 400, type = "poison"}}}},},{ type = "create-entity", entity_name = "explosion" },{ type = "damage", damage = { amount = 1000, type = "explosion"}}}}}
    

end

-----Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP----------Yuoki Rail With UP-----

if data.raw["recipe"]["yir_coins_gen1_recipe"] then
    data.raw["recipe"]["yir_coins_gen1_recipe"].energy_required = 1
    require("prototypes.equipment.vehicle-equipment")
    data.raw["cargo-wagon"]["yir_cw_flourit"].inventory_size = 80
    data.raw["cargo-wagon"]["yir_cw_flourit"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_flourit"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_flourit"].braking_force = 4
    data.raw["cargo-wagon"]["yir_cw_flourit"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_uranite"].inventory_size = 80
    data.raw["cargo-wagon"]["yir_cw_uranite"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_uranite"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_uranite"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_uranite"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_upempty"].inventory_size = 80
    data.raw["cargo-wagon"]["yir_cw_upempty"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_upempty"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_upempty"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_upempty"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_upclosed"].inventory_size = 80
    data.raw["cargo-wagon"]["yir_cw_upclosed"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_upclosed"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_upclosed"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_upclosed"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_flourit_4a"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_flourit_4a"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_flourit_4a"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_flourit_4a"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_flourit_4a"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_uran_4a"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_uran_4a"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_uran_4a"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_uran_4a"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_uran_4a"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_empty_4a"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_empty_4a"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_empty_4a"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_empty_4a"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_empty_4a"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_trans_4a"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_trans_4a"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_trans_4a"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_trans_4a"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_trans_4a"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_4a_urana"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_4a_urana"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_4a_urana"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_4a_urana"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_4a_urana"].equipment_grid = "vehicle-equipment-grid"
    data.raw["cargo-wagon"]["yir_cw_4a_cellsu"].inventory_size = 150
    data.raw["cargo-wagon"]["yir_cw_4a_cellsu"].max_speed = 4.0
    data.raw["cargo-wagon"]["yir_cw_4a_cellsu"].max_health = 4000
    data.raw["cargo-wagon"]["yir_cw_4a_cellsu"].braking_force = 4
	data.raw["cargo-wagon"]["yir_cw_4a_cellsu"].equipment_grid = "vehicle-equipment-grid"
    data.raw["locomotive"]["yir_atom_header"].max_health = 8000
    data.raw["locomotive"]["yir_atom_header"].max_speed = 4.0
    data.raw["locomotive"]["yir_atom_header"].braking_force = 40
    data.raw["locomotive"]["yir_atom_header"].equipment_grid = "vehicle-large-equipment-grid"
    data.raw["locomotive"]["yir_atom_mitte"].max_health = 8000
    data.raw["locomotive"]["yir_atom_mitte"].max_speed = 4.0
    data.raw["locomotive"]["yir_atom_mitte"].braking_force = 40
    data.raw["locomotive"]["yir_atom_mitte"].equipment_grid = "vehicle-large-equipment-grid"
    require("prototypes.4aw-cargowagons.4aw_ironore")
    require("prototypes.4aw-cargowagons.4aw_copperore")
    require("prototypes.4aw-cargowagons.4aw_stoneore")
    require("prototypes.4aw-cargowagons.4aw_coalore")
    require("prototypes.4aw-cargowagons.4aw_saphiriteore")
    require("prototypes.4aw-cargowagons.4aw_jivoliteore")
    require("prototypes.4aw-cargowagons.4aw_stiratiteore")
    require("prototypes.4aw-cargowagons.4aw_crotinniumore")
    require("prototypes.4aw-cargowagons.4aw_rubyteore")
    require("prototypes.4aw-cargowagons.4aw_bobmoniumore")
end

if data.raw["assembling-machine"]["ye_fassembly1"] then
    data.raw["assembling-machine"]["ye_fassembly1"].module_specification =  {module_slots = 4}
    data.raw["assembling-machine"]["ye_fassembly1"].ingredient_count = 8
    data.raw["assembling-machine"]["ye_fassembly2"].module_specification =  {module_slots = 5}
    data.raw["assembling-machine"]["ye_fassembly2"].ingredient_count = 10
    data.raw["assembling-machine"]["ye_fassembly_sp"].module_specification =    {module_slots = 6}
    data.raw["assembling-machine"]["ye_fassembly_sp"].ingredient_count = 12
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