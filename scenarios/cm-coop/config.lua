function load_config(dummy_load)
  local config = global
  if dummy_load then
    config = {}
  end

  config.setup_finished = false

  config.map_config =
  {
    average_team_displacement = 1024,
    map_height = 0,
    map_width = 0,
    map_seed = 0,
    starting_area_size =
    {
      options = {"none", "very-low", "low", "normal", "high", "very-high"},
      selected = "very-high"
    },
    always_day = false,
    biters_disabled = true,
    peaceful_mode = true,
    evolution_factor = 0,
    technology_price_multiplier = 1,
    duplicate_starting_area_entities = true,
    spawn_standardized_ore_patches = true,
    standardized_ore_amount = 4000,
    standardized_ore_double_iron = true,
    standardized_ore_gap = 5,
    standardized_ore_x = 29,
    standardized_ore_y = 29,
    standardized_ore_oil_amount = 600000,
    standardized_ore_oil_count = 3,
    standardized_ore_oil_gap = 10
  }

  config.game_config =
  {
    game_mode =
    {
      options = {"conquest", "space_race", "last_silo_standing", "freeplay", "production_score", "oil_harvest"},
      selected = "production_score"
    },
    disband_on_loss = false,
    time_limit = 0,
    required_production_score = 0,
    required_oil_barrels = 1000,
    required_satellites_sent = 1,
    oil_only_in_center = false,
    allow_spectators = false,
    spectator_fog_of_war = true,
    no_rush_time = 0,
    base_exclusion_time = 0,
    reveal_team_positions = true,
    reveal_map_center = false,
    team_walls = true,
    team_turrets = false,
    turret_ammunition =
    {
      options = {"firearm-magazine"},
      selected = "firearm-magazine"
    },
    team_artillery = false,
    give_artillery_remote = false,
    auto_new_round_time = 0,
    protect_empty_teams = true,
    enemy_building_restriction = false,
    neutral_chests = false
  }

  local items = game.item_prototypes

  local entity_name = "gun-turret"
  local prototype = game.entity_prototypes[entity_name]
  if not prototype then
    config.game_config.team_turrets = nil
    config.game_config.turret_ammunition = nil
  else
    local category = prototype.attack_parameters.ammo_category
    if category then
      local ammos = {}
      for name, item in pairs (items) do
        if item.type == "ammo" then
          local ammo = item.get_ammo_type()
          if ammo and ammo.category == category then
            table.insert(ammos, name)
          end
        end
      end
      config.game_config.turret_ammunition.options = ammos
      if not items["firearm-magazine"] then
        config.game_config.turret_ammunition.selected = ammos[1] or ""
      end
    end
  end

  config.team_config =
  {
    max_players = 0,
    friendly_fire = true,
    share_chart = true,
    diplomacy_enabled = true,
    who_decides_diplomacy =
    {
      options = {"all_players", "team_leader"},
      selected = "all_players"
    },
    team_joining =
    {
      options = {"player_pick", "random", "auto_assign"},
      selected = "player_pick"
    },
    spawn_position =
    {
      options = {"random", "fixed", "team_together"},
      selected = "team_together"
    },
    research_level =
    {
      options = {"none"},
      selected = "none"
    },
    unlock_combat_research = false,
    defcon_mode = false,
    defcon_timer = 5,
    starting_equipment =
    {
      options = {"none", "small", "medium", "large"},
      selected = "small"
    },
    starting_chest =
    {
      options = {"none", "small", "medium", "large"},
      selected = "medium"
    },
    starting_chest_multiplier = 2
  }

  local packs = {}
  local sorted_packs = {}
  local techs = game.technology_prototypes
  for k, tech in pairs (techs) do
    for k, ingredient in pairs (tech.research_unit_ingredients) do
      if not packs[ingredient.name] then
        packs[ingredient.name] = true
        local order = tostring(items[ingredient.name].order) or "Z-Z"
        local added = false
        for k, t in pairs (sorted_packs) do
          if order < t.order then
            table.insert(sorted_packs, k, {name = ingredient.name, order = order})
            added = true
            break
          end
        end
        if not added then
          table.insert(sorted_packs, {name = ingredient.name, order = order})
        end
      end
    end
  end

  for k, t in pairs (sorted_packs) do
    table.insert(config.team_config.research_level.options, t.name)
  end

  config.research_ingredient_list = {}
  for k, research in pairs (config.team_config.research_level.options) do
    config.research_ingredient_list[research] = false
  end

  config.colors =
  {
    { name = "orange" , color = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 }},
    { name = "purple" , color = { r = 0.485, g = 0.111, b = 0.659, a = 0.5 }},
    { name = "red"    , color = { r = 0.815, g = 0.024, b = 0.0  , a = 0.5 }},
    { name = "green"  , color = { r = 0.093, g = 0.768, b = 0.172, a = 0.5 }},
    { name = "blue"   , color = { r = 0.155, g = 0.540, b = 0.898, a = 0.5 }},
    { name = "yellow" , color = { r = 0.835, g = 0.666, b = 0.077, a = 0.5 }},
    { name = "pink"   , color = { r = 0.929, g = 0.386, b = 0.514, a = 0.5 }},
    { name = "white"  , color = { r = 0.8  , g = 0.8  , b = 0.8  , a = 0.5 }},
    { name = "black"  , color = { r = 0.1  , g = 0.1  , b = 0.1,   a = 0.5 }},
    { name = "gray"   , color = { r = 0.4  , g = 0.4  , b = 0.4,   a = 0.5 }},
    { name = "brown"  , color = { r = 0.300, g = 0.117, b = 0.0,   a = 0.5 }},
    { name = "cyan"   , color = { r = 0.275, g = 0.755, b = 0.712, a = 0.5 }},
    { name = "acid"   , color = { r = 0.559, g = 0.761, b = 0.157, a = 0.5 }},
  }

  config.color_map = {}
  for k, color in pairs (config.colors) do
    config.color_map[color.name] = k
  end

  config.teams =
  {
    {name = game.backer_names[math.random(#game.backer_names)], color = "orange", team = "-"},
    {name = game.backer_names[math.random(#game.backer_names)], color = "purple", team = "-"}
  }

  config.inventory_list =
  {
    none =
    {
      ["iron-plate"] = 8,
      ["burner-mining-drill"] = 1,
      ["stone-furnace"] = 1
    },
    small =
    {
      ["iron-plate"] = 200,
      ["pipe"] = 100,
      ["pipe-to-ground"] = 20,
      ["copper-plate"] = 200,
      ["iron-gear-wheel"] = 200,
      ["electronic-circuit"] = 200,
      ["transport-belt"] = 400,
      ["repair-pack"] = 20,
      ["inserter"] = 100,
      ["small-electric-pole"] = 50,
      ["stone-furnace"] = 50,
      ["burner-inserter"] = 100,
      ["assembling-machine-1"] = 20,
      ["electric-mining-drill"] = 20,
      ["boiler"] = 5,
      ["steam-engine"] = 10,
      ["offshore-pump"] = 4,
      ["raw-wood"] = 500
    },
    medium =
    {
      ["iron-plate"] = 200,
      ["pipe"] = 100,
      ["pipe-to-ground"] = 40,
      ["iron-gear-wheel"] = 100,
      ["copper-plate"] = 100,
      ["steel-plate"] = 100,
      ["electronic-circuit"] = 400,
      ["transport-belt"] = 400,
      ["underground-belt"] = 20,
      ["splitter"] = 20,
      ["repair-pack"] = 20,
      ["inserter"] = 150,
      ["small-electric-pole"] = 100,
      ["medium-electric-pole"] = 50,
      ["fast-inserter"] = 50,
      ["long-handed-inserter"] = 50,
      ["burner-inserter"] = 100,
      ["electric-mining-drill"] = 40,
      ["stone-furnace"] = 100,
      ["assembling-machine-1"] = 40,
      ["assembling-machine-2"] = 40,
      ["boiler"] = 10,
      ["steam-engine"] = 20,
      ["chemical-plant"] = 20,
      ["oil-refinery"] = 5,
      ["pumpjack"] = 8,
      ["offshore-pump"] = 4,
      ["raw-wood"] = 500
    },
    large =
    {
      ["iron-plate"] = 200,
      ["pipe"] = 100,
      ["pipe-to-ground"] = 20,
      ["copper-plate"] = 200,
      ["steel-plate"] = 200,
      ["electronic-circuit"] = 400,
      ["iron-gear-wheel"] = 250,
      ["transport-belt"] = 400,
      ["underground-belt"] = 40,
      ["splitter"] = 40,
      ["repair-pack"] = 20,
      ["inserter"] = 200,
      ["burner-inserter"] = 50,
      ["small-electric-pole"] = 50,
      ["electric-mining-drill"] = 50,
      ["stone-furnace"] = 100,
      ["steel-furnace"] = 50,
      ["electric-furnace"] = 20,
      ["assembling-machine-1"] = 50,
      ["assembling-machine-2"] = 40,
      ["assembling-machine-3"] = 20,
      ["fast-inserter"] = 100,
      ["long-handed-inserter"] = 100,
      ["medium-electric-pole"] = 50,
      ["substation"] = 10,
      ["big-electric-pole"] = 10,
      ["boiler"] = 10,
      ["steam-engine"] = 20,
      ["chemical-plant"] = 20,
      ["oil-refinery"] = 5,
      ["pumpjack"] = 10,
      ["offshore-pump"] = 2,
      ["raw-wood"] = 500
    }
  }
  if dummy_load then
    return config
  end
end

function give_equipment(player)

  local setting = global.team_config.starting_equipment.selected

  if setting == "none" then
    player.insert{name = "pistol", count = 1}
    player.insert{name = "firearm-magazine", count = 10}
    return
  end

  if setting == "small" then
    player.insert{name = "submachine-gun", count = 1}
    player.insert{name = "piercing-rounds-magazine", count = 40}
    player.insert{name = "cm-waterfill", count = 10000}
    player.insert{name = "landfill", count = 10000}
    player.insert{name = "power-armor", count = 1}
    local armor = player.get_inventory(defines.inventory.player_armor)[1].grid
    armor.put({name = "fusion-reactor-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "energy-shield-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    player.insert{name="construction-robot", count=50}
    if game.item_prototypes["y_quantrinum_hammer"] then
      player.insert{name="y_quantrinum_hammer", count=20}
    else
      player.insert{name = "steel-axe", count = 10}
    end
    return
  end

  if setting == "medium" then
    player.insert{name = "submachine-gun", count = 1}
    player.insert{name = "piercing-rounds-magazine", count = 40}
    player.insert{name = "cm-waterfill", count = 10000}
    player.insert{name = "landfill", count = 10000}
    player.insert{name = "power-armor", count = 1}
    local armor = player.get_inventory(defines.inventory.player_armor)[1].grid
    armor.put({name = "fusion-reactor-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "energy-shield-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    player.insert{name="construction-robot", count=50}
    if game.item_prototypes["y_quantrinum_hammer"] then
      player.insert{name="y_quantrinum_hammer", count=20}
    else
      player.insert{name = "steel-axe", count = 10}
    end
    return
  end

  if setting == "large" then
    player.insert{name = "submachine-gun", count = 1}
    player.insert{name = "piercing-rounds-magazine", count = 40}
    player.insert{name = "cm-waterfill", count = 10000}
    player.insert{name = "landfill", count = 10000}
    player.insert{name = "power-armor", count = 1}
    local armor = player.get_inventory(defines.inventory.player_armor)[1].grid
    armor.put({name = "fusion-reactor-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "energy-shield-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    player.insert{name="construction-robot", count=50}
    if game.item_prototypes["y_quantrinum_hammer"] then
      player.insert{name="y_quantrinum_hammer", count=20}
    else
      player.insert{name = "steel-axe", count = 10}
    end
    return
  end

end
function get_starting_area_radius(as_tiles)
  if not global.map_config.starting_area_size then return 0 end
  local starting_area_chunk_radius =
  {
    ["none"] = 3,
    ["very-low"] = 3,
    ["low"] = 4,
    ["normal"] = 5,
    ["high"] = 6,
    ["very-high"] = 7
  }
  return as_tiles and starting_area_chunk_radius[global.map_config.starting_area_size.selected] * 32 or starting_area_chunk_radius[global.map_config.starting_area_size.selected]
end

function parse_config_from_gui(gui, config)
  local config_table = gui.config_table
  if not config_table then
    error("Trying to parse config from gui with no config table present")
  end
  for name, value in pairs (config) do
    if config_table[name.."_box"] then
      local text = config_table[name.."_box"].text
      local n = tonumber(text)
      if text == "" then n = 0 end
      if n ~= nil then
        if n > 4294967295 then
          game.players[config_table.player_index].print({"value-too-big", {name}})
          return
        end
        if n < 0 then
          game.players[config_table.player_index].print({"value-below-zero", {name}})
          return
        end
        config[name] = n
      else
        game.players[config_table.player_index].print({"must-be-number", {name}})
        return
      end
    end
    if type(value) == "boolean" then
      if config_table[name] then
        config[name] = config_table[name.."_boolean"].state
      end
    end
    if type(value) == "table" then
      local menu = config_table[name.."_dropdown"]
      if not menu then game.print("Error trying to read drop down menu of gui element "..name)return end
      config[name].selected = config[name].options[menu.selected_index]
    end
  end
  return true
end

local localised_names =
{
  peaceful_mode = {"gui-map-generator.peaceful-mode"},
  map_height = {"gui-map-generator.map-width-simple"},
  map_width = {"gui-map-generator.map-height-simple"},
  map_seed = {"gui-map-generator.map-seed-simple"},
  starting_area_size = {"gui-map-generator.starting-area"},
  technology_price_multiplier = {"gui-map-generator.technology-price-multiplier"}
}

-- "" for no tooltip
local localised_tooltips =
{
  game_mode =
  {
    "", {"game_mode_tooltip"},
    "\n", {"conquest_description"},
    "\n", {"space_race_description"},
    "\n", {"last_silo_standing_description"},
    "\n", {"freeplay_description"},
    "\n", {"production_score_description"},
    "\n", {"oil_harvest_description"}
  },
  friendly_fire = "",
  map_width = "",
  map_height = "",
  always_day = "",
  peaceful_mode = "",
  evolution_factor = "",
  starting_area_size = "",
  duplicate_starting_area_entities = "",
  friendly_fire = "",
  technology_price_multiplier = ""
}

function make_config_table(gui, config)
  local config_table = gui.config_table
  if config_table then
    config_table.clear()
  else
    config_table = gui.add{type = "table", name = "config_table", column_count = 2}
    config_table.style.column_alignments[2] = "right"
  end
  local items = game.item_prototypes
  for k, name in pairs (config) do
    local label = config_table.add{type = "label", name = k}
    if tonumber(name) then
      local input = config_table.add{type = "textfield", name = k.."_box"}
      input.text = name
      input.style.maximal_width = 100
    elseif tostring(type(name)) == "boolean" then
      config_table.add{type = "checkbox", name = k.."_boolean", state = name}
    else
      local menu = config_table.add{type = "drop-down", name = k.."_dropdown"}
      local index
      for j, option in pairs (name.options) do
        if items[option] then
          menu.add_item(items[option].localised_name)
        else
          menu.add_item(localised_names[option] or {option})
        end
        if option == name.selected then index = j end
      end
      menu.selected_index = index or 1
    end
    label.caption = {"", localised_names[k] or {k}, {"colon"}}
    label.tooltip = localised_tooltips[k] or {k.."_tooltip"}
  end
end
