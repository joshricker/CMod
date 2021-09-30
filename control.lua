function initPlayer(player)
    if player.character == nil then return end
    if global == nil then
        global = {}
    end
    if global.donePlayers == nil then
        global.donePlayers = {}
    end
    if global.donePlayers[player] ~= nil then return end
    global.donePlayers[player] = true

    if game.item_prototypes["yi_construction-robot"] then
        player.insert{name = "yi_construction-robot", count = 100}
    else
        player.insert{name = "construction-robot", count = 100}
    end
    if game.item_prototypes["get-chest"] then
        player.insert{name = "get-chest", count = 10}
        player.insert{name = "put-chest", count = 10}
    end
    player.insert{name = "landfill", count = 10000}
    player.insert{name = "cm-waterfill", count = 10000}
    local armorInventory = player.get_inventory(defines.inventory.character_armor)
    armorInventory.insert("power-armor")
    local armorGrid = armorInventory.find_item_stack("power-armor").grid
    local equipment = {
       "fusion-reactor-equipment",
       "exoskeleton-equipment",
       "energy-shield-mk2-equipment",
       "personal-roboport-mk2-equipment",
       "personal-roboport-mk2-equipment",
       "battery-mk2-equipment",
       "battery-mk2-equipment",
    }
    for _, v in pairs(equipment) do
        armorGrid.put{name = v}
    end
    player.get_inventory(defines.inventory.character_guns).insert{name = "submachine-gun", count = 1}
    player.get_inventory(defines.inventory.character_ammo).insert{name = "piercing-rounds-magazine", count = 200}
end

function onPlayerCreated(event)
    local player = game.players[event.player_index]
    initPlayer(player)
end

script.on_event({defines.events.on_player_created}, onPlayerCreated)

function onModInit()
    if remote.interfaces["freeplay"] then
        remote.call("freeplay", "set_disable_crashsite", true)
        remote.call("freeplay", "set_skip_intro", true)
    end
end

function cm_generate_standardized_ores()
  if not settings.global["spawn_standardized_ore_patches"].value then return end
  local surface = game.surfaces['nauvis']
  local force = game.forces.neutral
  local origin_spawn = force.get_spawn_position(surface)
  local radius = 130
  function sanitize_starting_area()
    local oreList = {"coal","angels-ore1","angels-ore2","angels-ore3","angels-ore4","angels-ore5","angels-ore6","crude-oil","uranium-ore","iron-ore","copper-ore","stone","angels-fissure","angels-natural-gas"}
    local area = {{-150,-150}, {150,150}}
    for i, ore in pairs(oreList) do
        for k, entity in pairs (surface.find_entities_filtered{area = area, name = ore}) do
            entity.destroy()
        end
    end
  end
  sanitize_starting_area()
  local cmxoreoffset = 32
  local cmyoreoffset = 32
  local cmoilx = 0
  function cmgenstatingore(cmname, cmsizex, cmsizey)
    if cmname == "crude-oil" or cmname == "angels-natural-gas" then
      for y=1,cmsizey do
        surface.create_entity({name=cmname, amount=settings.global["standardized_ore_oil_amount"].value, position={-radius+cmxoreoffset+1+cmoilx, -radius+cmyoreoffset}})
        cmoilx=cmoilx+cmsizex
      end
    cmyoreoffset = cmsizey+cmyoreoffset+settings.global["standardized_ore_gap"].value
    cmoilx = 0
    else
      for x=0,cmsizex do
        for y=0,cmsizey do
          surface.create_entity({name=cmname, amount=settings.global["standardized_ore_amount"].value, position={-radius+cmxoreoffset+x, -radius+cmyoreoffset+y}})
        end
      end
      cmyoreoffset = cmsizey+cmyoreoffset+settings.global["standardized_ore_gap"].value
    end
  end
  cmgenstatingore("coal", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
  if game.item_prototypes["stone"] then
  	if game.item_prototypes["angels-ore1"] then
  	else
     cmgenstatingore("stone", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
  end
    end
  if game.item_prototypes["angels-ore1"] then
    if settings.global["standardized_ore_double_iron"].value then 
      cmgenstatingore("angels-ore1", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value*2+2)
    else
      cmgenstatingore("angels-ore1", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    end
    cmgenstatingore("angels-ore3", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("angels-ore6", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("angels-ore5", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("crude-oil", settings.global["standardized_ore_oil_gap"].value, settings.global["standardized_ore_oil_count"].value)
    if game.item_prototypes["catalyst-metal-blue"] then
        cmgenstatingore("angels-natural-gas", settings.global["standardized_ore_oil_gap"].value, settings.global["standardized_ore_oil_count"].value)
    end
  elseif game.item_prototypes["y-res1"] then
    if settings.global["standardized_ore_double_iron"].value then 
      cmgenstatingore("iron-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value*2+2)
    else
      cmgenstatingore("iron-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    end
    cmgenstatingore("copper-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("y-res1", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("y-res2", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("crude-oil", settings.global["standardized_ore_oil_gap"].value, settings.global["standardized_ore_oil_count"].value)
  
  else
    if settings.global["standardized_ore_double_iron"].value then 
      cmgenstatingore("iron-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value*2+2)
    else
      cmgenstatingore("iron-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    end
    cmgenstatingore("copper-ore", settings.global["standardized_ore_x"].value, settings.global["standardized_ore_y"].value)
    cmgenstatingore("crude-oil", settings.global["standardized_ore_oil_gap"].value, settings.global["standardized_ore_oil_count"].value)
  end
end

remote.add_interface("CMod",
{
  gen = function()
    cm_generate_standardized_ores()
  end
})

script.on_init(function()
    cm_generate_standardized_ores()
    onModInit()
end)
