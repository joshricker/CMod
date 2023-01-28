
require("prototypes.technology.robotcapacity")
require("prototypes.technology.crafting-speed")
require("prototypes.technology.run-speed")
require("prototypes.waterfill.waterfill")

require("prototypes.rocket-silo")
--transport

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

require("prototypes.advanced-equipment.advanced-equipment")
require("prototypes.advanced-equipment.vehicle-equipment")
if data.raw["module"]["speed-module-8"] then
  require("prototypes.advanced-equipment.advanced-equipment-recipes-bobs")
  else
    require("prototypes.advanced-equipment.advanced-equipment-recipes")
end

require("prototypes.void-chest.void-chest")
require("prototypes.void-pipe.void-pipe")

--for i, a in pairs(data.raw["fluid"]) do
--    a.auto_barrel = true
--end
  

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
data.raw.item["solid-fuel"].stack_size = 200
require("prototypes.labs.labs")
require("prototypes.transport.pipe-ground-1-30")
require("prototypes.transport.pipe-ground-1-50")
require("prototypes.transport.transport-belt-ground-1-30")
require("prototypes.transport.transport-belt-ground-2-30")
require("prototypes.transport.transport-belt-ground-3-30")
require("prototypes.transport.transport-belt-ground-1-50")
require("prototypes.transport.transport-belt-ground-2-50")
require("prototypes.transport.transport-belt-ground-3-50")
data.raw["gun"]["artillery-wagon-cannon"]["attack_parameters"].range = 12 * 32
require("prototypes.energy-void.energy-void")
require("prototypes.transport.tech")
require("prototypes.groups.item-groups-transport")
data.raw.gun["submachine-gun"].attack_parameters.sound = {{filename = "__CMod__/sounds/submachinegun.ogg", volume = 1 }}
data.raw.character.character.inventory_size = 180


if not settings.startup["lite_mode"].value then
  require("prototypes.technology.insterter-capacity-bonus")
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
end

if data.raw["assembling-machine"]["y-crusher"] then
    data.raw.item["yi_beacon"].se_allow_in_space = true
end

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

if data.raw.container["subspace-item-injector"] then
  
  data.raw.container["subspace-item-injector"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw.container["subspace-item-injector"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.container["subspace-item-injector"]["picture"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/item-injector.png",
        width = 254,
        height = 242,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.4),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/item-injector-hr.png",
            width = 506,
            height = 483,
            shift = util.by_pixel_hr(0.0, 0.6),
            scale = 0.18,
        },
    },
    {
        filename = "__subspace_storage__/graphics/entity/item-shadow.png",
        width = 111,
        height = 201,
        scale = 0.36,
        shift = util.by_pixel(63.54, 7.38),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/item-shadow-hr.png",
            width = 222,
            height = 401,
            shift = util.by_pixel_hr(127.44, 14.94),
            scale = 0.18,
            draw_as_shadow = true,
        }}}


  data.raw["logistic-container"]["subspace-item-extractor"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["logistic-container"]["subspace-item-extractor"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["logistic-container"]["subspace-item-extractor"]["picture"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/item-extractor.png",
        width = 254,
        height = 242,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.36),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/item-extractor-hr.png",
            width = 506,
            height = 483,
            shift = util.by_pixel_hr(0.0, 0.54),
            scale = 0.18,
        }
    },
    {
        filename = "__subspace_storage__/graphics/entity/item-shadow.png",
        width = 111,
        height = 201,
        scale = 0.36,
        shift = util.by_pixel(63.54, 7.38),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/item-shadow-hr.png",
            width = 222,
            height = 401,
            shift = util.by_pixel_hr(127.44, 14.94),
            scale = 0.18,
            draw_as_shadow = true,
     }}}


  data.raw["storage-tank"]["subspace-fluid-injector"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["storage-tank"]["subspace-fluid-injector"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["storage-tank"]["subspace-fluid-injector"]["fluid_box"].pipe_connections = {{type = "input", position = {0, -2}}, {type = "input", position = {0, 2}}, {type = "input", position = {2, 0}}, {type = "input", position = {-2, 0}}}
  data.raw["storage-tank"]["subspace-fluid-injector"]["pictures"]["picture"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/fluid-injector.png",
        width = 256,
        height = 268,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.0),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/fluid-injector-hr.png",
            width = 512,
            height = 534,
            shift = util.by_pixel_hr(0.0, 0.0),
            scale = 0.18,
        }
    },
    {
        filename = "__subspace_storage__/graphics/entity/fluid-shadow.png",
        width = 354,
        height = 226,
        scale = 0.36,
        shift = util.by_pixel(19.8, 9),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/fluid-shadow-hr.png",
            width = 708,
            height = 453,
            shift = util.by_pixel_hr(40, 18.135),
            scale = 0.18,
            draw_as_shadow = true,
      }}}


   data.raw["assembling-machine"]["subspace-fluid-extractor"].fluid_boxes = {
     {
       production_type = "output",
       pipe_covers = pipecoverspictures(),
       base_area = 250,
       base_level = 1,
       pipe_connections = {
         { type = "output", position = {-2, 0} },
         { type = "output", position = {2, 0} },
         { type = "output", position = {0, 2} },
         { type = "output", position = {0, -2} },
       },
    },
    off_when_no_fluid_recipe = false,
  }
  data.raw["assembling-machine"]["subspace-fluid-extractor"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["assembling-machine"]["subspace-fluid-extractor"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["assembling-machine"]["subspace-fluid-extractor"]["animation"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/fluid-extractor.png",
        width = 256,
        height = 268,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.0),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/fluid-extractor-hr.png",
            width = 512,
            height = 534,
            shift = util.by_pixel_hr(0.0, 0.0),
            scale = 0.18,
        },
    },
    {
        filename = "__subspace_storage__/graphics/entity/fluid-shadow.png",
        width = 354,
        height = 226,
        scale = 0.36,
        shift = util.by_pixel(19.8, 9),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/fluid-shadow-hr.png",
            width = 708,
            height = 453,
            shift = util.by_pixel_hr(40.0, 18.18),
            scale = 0.18,
            draw_as_shadow = true,
        }}}

  data.raw.accumulator["subspace-electricity-injector"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw.accumulator["subspace-electricity-injector"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.accumulator["subspace-electricity-injector"]["picture"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/electricity-injector.png",
        width = 256,
        height = 251,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.54),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/electricity-injector-hr.png",
            width = 512,
            height = 502,
            shift = util.by_pixel_hr(0.0, 1.08),
            scale = 0.18,
        },
    },
    {
        filename = "__subspace_storage__/graphics/entity/electricity-shadow.png",
        width = 345,
        height = 229,
        scale = 0.36,
        shift = util.by_pixel(21.42, 4.5),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/electricity-shadow-hr.png",
            width = 693,
            height = 457,
            shift = util.by_pixel_hr(42.66, 9.18),
            scale = 0.18,
            draw_as_shadow = true,
        }}}

  data.raw.accumulator["subspace-electricity-extractor"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw.accumulator["subspace-electricity-extractor"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.accumulator["subspace-electricity-extractor"]["picture"].layers = {
    {
        filename = "__subspace_storage__/graphics/entity/electricity-extractor.png",
        width = 256,
        height = 251,
        scale = 0.36,
        shift = util.by_pixel(0.0, 0.54),
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/electricity-extractor-hr.png",
            width = 512,
            height = 502,
            shift = util.by_pixel_hr(0.0, 1.8),
            scale = 0.18,
        },
    },
    {
        filename = "__subspace_storage__/graphics/entity/electricity-shadow.png",
        width = 345,
        height = 229,
        scale = 0.36,
        shift = util.by_pixel(21.42, 4.5),
        draw_as_shadow = true,
        hr_version = {
            filename = "__subspace_storage__/graphics/entity/electricity-shadow-hr.png",
            width = 693,
            height = 457,
            shift = util.by_pixel_hr(42.66, 9.18),
            scale = 0.18,
            draw_as_shadow = true,
        }}}
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