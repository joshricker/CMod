local CMItemSilo = util.table.deepcopy(data.raw["item"]["rocket-silo"])
CMItemSilo.name = "cm-rocket-silo-mk2"
CMItemSilo.icon = "__CMod__/graphics/icons/cm-rocket-silo.png"
CMItemSilo.order = "f[rocket-silo]"
CMItemSilo.place_result = "cm-rocket-silo-mk2"
data:extend({CMItemSilo})

local CMSilo = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
CMSilo.name = "cm-rocket-silo-mk2"
CMSilo.crafting_speed = 2
CMSilo.icon = "__CMod__/graphics/icons/cm-rocket-silo.png"
CMSilo.place_result = "cm-rocket-silo-mk2"
CMSilo.rocket_result_inventory_size = 100
CMSilo.module_specification = {module_slots = 6, module_info_icon_shift = {0, 3.3}}
CMSilo.minable = {mining_time = 3, result = "cm-rocket-silo-mk2"}
CMSilo.max_health = 50000
CMSilo.rocket_parts_required = 5000
data:extend({CMSilo})


local CMRecipeSilo = util.table.deepcopy(data.raw["recipe"]["rocket-silo"])
CMRecipeSilo.name = "cm-rocket-silo-mk2"
CMRecipeSilo.enabled = true
CMRecipeSilo.ingredients ={{"rocket-silo", 50}}
CMRecipeSilo.icon = "__CMod__/graphics/icons/cm-rocket-silo.png"
CMRecipeSilo.icon_size = 64
CMRecipeSilo.result = "cm-rocket-silo-mk2"
CMRecipeSilo.requester_paste_multiplier = 1
data:extend({CMRecipeSilo})


local CMSatellite = util.table.deepcopy(data.raw["item"]["satellite"])
CMSatellite.name = "cm-satellite"
CMSatellite.icon = "__CMod__/graphics/icons/cm-satellite.png"
CMSatellite.order = "o[satellite]"
CMSatellite.requester_paste_multiplier = 1
CMSatellite.rocket_launch_product = {"space-science-pack", 50000}
data:extend({CMSatellite})

local CMCraftingSatellite = util.table.deepcopy(data.raw["recipe"]["satellite"])
CMCraftingSatellite.name = "cm-satellite"
CMCraftingSatellite.enabled = true
CMCraftingSatellite.ingredients ={{"low-density-structure", 100},{"cm-elite-solar", 50},{"cm-elite-accumulator", 50},{"radar", 5},{"processing-unit", 100},{"rocket-fuel", 50}}
CMCraftingSatellite.result= "cm-satellite"
data:extend({CMCraftingSatellite})