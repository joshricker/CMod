require ("circuit-connector-sprites")
require ("prototypes.compact-solar.accumulator_ain")
local hit_effects = require ("prototypes.hit-effects")
local explosion_animations = require("prototypes.explosion-animations")
local sounds = require("prototypes.sounds")
data:extend(
{
  {
    type = "item",
    name = "cm-ultimate-accumulator",
    icon = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator-icon.png",
    icon_size = 32,

    subgroup = "energy",
    order = "e-b",
    place_result = "cm-ultimate-accumulator",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "cm-ultimate-accumulator",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"cm-elite-accumulator", 10},
      {"steel-plate", 45},
      {"battery", 45}
    },
    result = "cm-ultimate-accumulator"
  },
  {
    type = "accumulator",
    name = "cm-ultimate-accumulator",
    icon = "__CMod__/graphics/ultimate-accumulator/ultimate-accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "cm-ultimate-accumulator"},
    max_health = 1500,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5GJ",
      usage_priority = "tertiary",
      input_flow_limit = "300MW",
      output_flow_limit = "300MW"
    },
    picture = accumulator_picture({r=0.5, g=0.4, b=0.7, a=1}),
    charge_animation = accumulator_charge({r=0.5, g=0.4, b=0.7, a=1}),
    water_reflection = accumulator_reflection(),

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 15, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 15, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound =
      {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.5
      },
      --persistent = true,
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  }
}
)
