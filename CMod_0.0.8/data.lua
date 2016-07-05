require("prototypes.technology.robotspeed")
require("prototypes.technology.robotcapacity")
require("prototypes.technology.logslots")
require("prototypes.entity.inserter-vfast")
require("prototypes.crafting.inserter-vfast")
require("prototypes.technology.loaders")
require("prototypes.technology.flamethrower-damage")
require("prototypes.technology.crafting-speed")
require("prototypes.technology.laser-turret-damage")
require("prototypes.technology.run-speed")
--Comp Solars and accumulators
require("prototypes.entity.advanced-accumulator")
require("prototypes.item.advanced-accumulator")
require("prototypes.crafting.advanced-accumulator")
require("prototypes.technology.advanced-accumulator")
require("prototypes.entity.elite-accumulator")
require("prototypes.item.elite-accumulator")
require("prototypes.crafting.elite-accumulator")
require("prototypes.technology.elite-accumulator")
require("prototypes.entity.ultimate-accumulator")
require("prototypes.item.ultimate-accumulator")
require("prototypes.crafting.ultimate-accumulator")
require("prototypes.technology.ultimate-accumulator")
require("prototypes.entity.advanced-solar")
require("prototypes.item.advanced-solar")
require("prototypes.crafting.advanced-solar")
require("prototypes.technology.advanced-solar")
require("prototypes.entity.elite-solar")
require("prototypes.item.elite-solar")
require("prototypes.crafting.elite-solar")
require("prototypes.technology.elite-solar")
require("prototypes.entity.ultimate-solar")
require("prototypes.item.ultimate-solar")
require("prototypes.crafting.ultimate-solar")
require("prototypes.technology.ultimate-solar")
--Tele bots
require("prototypes.technology.telebots")
require("prototypes.entity.robot-logic_3")
require("prototypes.entity.robot-cons_3")
require("prototypes.entity.roboport_3")
require("prototypes.crafting.robot-logic_3")
require("prototypes.crafting.robot-cons_3")
require("prototypes.crafting.roboport_3")

data.raw.player.player.inventory_size = 100
data.raw.player.player.build_distance = 60
data.raw.player.player.drop_item_distance = 60
data.raw.player.player.reach_distance = 60
data.raw.player.player.reach_resource_distance = 60

data.raw["locomotive"]["diesel-locomotive"].reversing_power_modifier = 1.0
data.raw["electric-turret"]["laser-turret"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "laser",starting_speed = 1.0,},}}

data.raw["assembling-machine"]["y-crusher"].module_specification = {module_slots = 2}
data.raw["assembling-machine"]["y-crusher"].crafting_speed = 2.0
data.raw["assembling-machine"]["y-crusher"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

data.raw["loader"]["loader"].speed = 0.045
data.raw["loader"]["fast-loader"].speed = 0.075
data.raw["loader"]["express-loader"].speed = 0.1



data.raw["inserter"]["y-inserter-fast"].extension_speed = 0.45
data.raw["inserter"]["y-inserter-fast"].rotation_speed = 0.3
data.raw["inserter"]["y-inserter-s4"].extension_speed = 0.5
data.raw["inserter"]["y-inserter-s4"].rotation_speed = 0.2
data.raw["inserter"]["y-inserter-smart"].extension_speed = 0.25
data.raw["inserter"]["y-inserter-smart"].rotation_speed = 0.25

data.raw["recipe"]["y-water-gen-fluid-recipe"].results= {{type="fluid", name="water", amount=2000, },}

data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].buffer_capacity = "200MJ"
data.raw["electric-turret"]["y-weapon-ztt"]["energy_source"].input_flow_limit = "200MW"
data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"].cooldown = 5
data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"].damage_modifier = 10
data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"]["ammo_type"].energy_consumption = "3250KJ"
data.raw["electric-turret"]["y-weapon-ztt"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "cyan-laser",starting_speed = 3.75,},}}

data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].buffer_capacity = "10MJ"
data.raw["electric-turret"]["y-laser-def-s4"]["energy_source"].input_flow_limit = "10MW"
data.raw["electric-turret"]["y-laser-def-s4"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "white-laser",starting_speed = 1.75,},}}

data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].buffer_capacity = "10MJ"
data.raw["electric-turret"]["y_turret_laser22f12"]["energy_source"].input_flow_limit = "10MW"
data.raw["electric-turret"]["y_turret_laser22f12"]["attack_parameters"]["ammo_type"].action = {type = "direct",action_delivery ={{type = "projectile",projectile = "cyan-laser",starting_speed = 1.75,},}}

data.raw["radar"]["yi_radar"].max_distance_of_nearby_sector_revealed = 10
data.raw["recipe"]["y-wash-dirt-recipe"].results={{type="item", name="stone", amount=8, },{type="item", name="y-crystal2", amount=5, },{type="fluid", name="y-con_water", amount=60 }}

data.raw["roboport"]["yi_roboport"].energy_usage = "150kW"
data.raw["roboport"]["yi_roboport"].charging_energy = "2MW"
data.raw["roboport"]["yi_roboport"].energy_source = {type = "electric", usage_priority = "secondary-input", input_flow_limit = "10MW", buffer_capacity = "48MJ"}

data.raw["roboport"]["5d-roboport-2"].energy_usage = "150kW"
data.raw["roboport"]["5d-roboport-2"].charging_energy = "2MW"
data.raw["roboport"]["5d-roboport-2"].energy_source = {type = "electric", usage_priority = "secondary-input", input_flow_limit = "10MW", buffer_capacity = "48MJ"}

data.raw["pipe"]["5d-pipe-mk2"].fluid_box = {base_area = 0.5,pipe_connections ={{ position = {0, -1} },{ position = {1, 0} },{ position = {0, 1} },{ position = {-1, 0} }},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2"].fluid_box ={base_area = 0.5,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 10}},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2-30"].fluid_box ={base_area = 0.5,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 30}},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2-50"].fluid_box ={base_area = 0.5,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 50}},}

data.raw["pipe"]["5d-pipe-mk3"].fluid_box = {base_area = 0.3,pipe_connections ={{ position = {0, -1} },{ position = {1, 0} },{ position = {0, 1} },{ position = {-1, 0} }},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3"].fluid_box ={base_area = 0.3,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 10}},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3-30"].fluid_box ={base_area = 0.3,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 30}},}
data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3-50"].fluid_box ={base_area = 0.3,pipe_covers = pipecoverspictures(),pipe_connections ={{ position = {0, -1} },{position = {0, 1},max_underground_distance = 50}},}

data.raw["transport-belt"]["5d-mk4-transport-belt"].speed = 0.25
data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].speed = 0.25
data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].speed = 0.25
data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].speed = 0.25
data.raw["splitter"]["5d-mk4-splitter"].speed = 0.35

data.raw["transport-belt"]["5d-mk5-transport-belt"].speed = 0.45
data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].speed = 0.45
data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].speed = 0.45
data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].speed = 0.45
data.raw["splitter"]["5d-mk5-splitter"].speed = 0.55

data:extend({
{
    type  = "item-subgroup",
    name  = "loaders",
    group = "logistics",
    order = "ba",
},
})

data.raw.item["loader"].subgroup = "loaders"
data.raw.item["fast-loader"].subgroup = "loaders"
data.raw.item["express-loader"].subgroup = "loaders"

data.raw["night-vision-equipment"]["night-vision-equipment"].tint = {r = 0, g = 0, b = 0, a = 0}

