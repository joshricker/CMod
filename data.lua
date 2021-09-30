require("prototypes.groups.item-groups-transport")
require("prototypes.technology.robotcapacity")
require("prototypes.technology.crafting-speed")
require("prototypes.technology.run-speed")
require("prototypes.waterfill.waterfill")
require("prototypes.energy-void.energy-void")
--transport
require("prototypes.transport.pipe-ground-1-30")
require("prototypes.transport.pipe-ground-1-50")
require("prototypes.transport.transport-belt-ground-1-30")
require("prototypes.transport.transport-belt-ground-2-30")
require("prototypes.transport.transport-belt-ground-3-30")
require("prototypes.transport.transport-belt-ground-1-50")
require("prototypes.transport.transport-belt-ground-2-50")
require("prototypes.transport.transport-belt-ground-3-50")
require("prototypes.transport.tech")
require("prototypes.labs.labs")
--Comp Solars and accumulators
require("prototypes.compact-solar.advanced-accumulator")
require("prototypes.compact-solar.elite-accumulator")
require("prototypes.compact-solar.ultimate-accumulator")
require("prototypes.compact-solar.advanced-solar")
require("prototypes.compact-solar.elite-solar")
require("prototypes.compact-solar.ultimate-solar")
require("prototypes.compact-solar.compact-solar-technology")

if data.raw["assembling-machine"]["y-crusher"] then
    require("prototypes.smart-stack.inserter-vfast-ns")
    require("prototypes.smart-stack.inserter-vfast")
    require("prototypes.tele-bots.tele-bots-technology")
    require("prototypes.tele-bots.robot-logic_3")
    require("prototypes.tele-bots.robot-cons_3")
end

if data.raw["recipe"]["yir_coins_gen1_recipe"] then
    require("prototypes.equipment.vehicle-equipment")
    require("prototypes.4aw-cargowagons.4aw_ironore")
    require("prototypes.4aw-cargowagons.4aw_copperore")
    require("prototypes.4aw-cargowagons.4aw_stone")
    require("prototypes.4aw-cargowagons.4aw_coal")
    require("prototypes.4aw-cargowagons.4aw_saphiriteore")
    require("prototypes.4aw-cargowagons.4aw_jivoliteore")
    require("prototypes.4aw-cargowagons.4aw_stiratiteore")
    require("prototypes.4aw-cargowagons.4aw_crotinniumore")
    require("prototypes.4aw-cargowagons.4aw_rubyteore")
    require("prototypes.4aw-cargowagons.4aw_bobmoniumore")
end
data.raw["gun"]["artillery-wagon-cannon"]["attack_parameters"].range = 12 * 32
data.raw.tool["automation-science-pack"].stack_size = 2000
data.raw.tool["logistic-science-pack"].stack_size = 2000
data.raw.tool["chemical-science-pack"].stack_size = 2000
data.raw.tool["military-science-pack"].stack_size = 2000
data.raw.tool["production-science-pack"].stack_size = 2000
data.raw.tool["utility-science-pack"].stack_size = 2000
data.raw.tool["space-science-pack"].stack_size = 2000
data.raw.item["sulfur"].stack_size = 200
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
data.raw.item["beacon"].stack_size = 50
data.raw["fluid"]["steam"].auto_barrel = true

data.raw["utility-sounds"]["default"]["armor_insert"] = {{filename = "__CMod__/sounds/xp-hardware-insert.ogg"}}
data.raw["utility-sounds"]["default"]["armor_remove"] = {{filename = "__CMod__/sounds/xp-hardware-remove.ogg"}}

if data.raw["fluid"]["lithia-water"] then
  for i,v in ipairs({"hydrogen", "oxygen", "nitrogen", "chlorine", "hydrogen-chloride", "nitrogen-dioxide", "liquid-air"}) do
      data.raw["fluid"][v].auto_barrel = true
  end
end
if data.raw["item"]["raw-rare-metals"] then
	data.raw.item["wood"].stack_size = 500
	else
		if data.raw["fluid"]["ammonia"] then
  			for i,v in ipairs({"ammonia", "nitric-oxide", "nitrogen-dioxide"}) do
      			data.raw["fluid"][v].auto_barrel = true
  			end
		end
end

if data.raw["recipe"]["solid-plastic"] then
  data.raw["recipe"]["solid-plastic"].category = "chemistry"
    data.raw["recipe"]["solid-plastic"]["normal"].ingredients ={{type="fluid", name="liquid-plastic", amount=5}}
    data.raw["recipe"]["solid-plastic"]["expensive"].ingredients ={{type="fluid", name="liquid-plastic", amount=10}}
    data:extend({{type = "recipe",name = "bob-resin-wood",category = "crafting-machine",subgroup = "bob-resource",energy_required = 1,ingredients = {{ "wood", 1},},result = "resin"}})
    data:extend({{type = "recipe",name = "rocket-fuel",category = "chemistry",energy_required = 30,ingredients = {{"rocket-fuel-capsule", 1},{ "rocket-oxidizer-capsule", 1}},result = "rocket-fuel"}})
    data.raw["assembling-machine"]["advanced-chemical-plant"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["advanced-chemical-plant-2"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["gas-refinery"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["gas-refinery-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["gas-refinery-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["gas-refinery-4"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["angels-chemical-plant"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["angels-chemical-plant-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["angels-chemical-plant-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["angels-chemical-plant-4"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["angels-electrolyser"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["angels-electrolyser-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["angels-electrolyser-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["angels-electrolyser-4"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["gas-refinery-small"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["gas-refinery-small-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["gas-refinery-small-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["gas-refinery-small-4"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["separator"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["separator-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["separator-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["separator-4"]. module_specification = {module_slots = 6}
    data.raw["assembling-machine"]["steam-cracker"]. module_specification = {module_slots = 3}
    data.raw["assembling-machine"]["steam-cracker-2"]. module_specification = {module_slots = 4}
    data.raw["assembling-machine"]["steam-cracker-3"]. module_specification = {module_slots = 5}
    data.raw["assembling-machine"]["steam-cracker-4"]. module_specification = {module_slots = 6}
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