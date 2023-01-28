data:extend({
   {
      type = "bool-setting",
      name = "lite_mode",
      setting_type = "startup",
      default_value = false,
   },
   {
      type = "bool-setting",
      name = "spawn_standardized_ore_patches",
      setting_type = "runtime-global",
      default_value = false,
   },
   {
      type = "bool-setting",
      name = "standardized_ore_double_iron",
      setting_type = "runtime-global",
      default_value = true,
      order = "ca",
   },
   {
      type = "int-setting",
      name = "standardized_ore_amount",
      setting_type = "runtime-global",
      default_value = 4000,
      minimum_value = 1,
      maximum_value = 100000,
      order = "a",
   },
   {
      type = "int-setting",
      name = "standardized_ore_gap",
      setting_type = "runtime-global",
      default_value = 5,
      minimum_value = 0,
      maximum_value = 50,
      order = "ba",
   },
   {
      type = "int-setting",
      name = "standardized_ore_x",
      setting_type = "runtime-global",
      default_value = 29,
      minimum_value = 1,
      maximum_value = 75,
      order = "cb",
   },
   {
      type = "int-setting",
      name = "standardized_ore_y",
      setting_type = "runtime-global",
      default_value = 22,
      minimum_value = 1,
      maximum_value = 75,
      order = "cc",
   },   
   {
      type = "int-setting",
      name = "standardized_ore_oil_amount",
      setting_type = "runtime-global",
      default_value = 1000000,
      minimum_value = 1000,
      maximum_value = 10000000,
      order = "aa",
   },
   {
      type = "int-setting",
      name = "standardized_ore_oil_count",
      setting_type = "runtime-global",
      default_value = 5,
      minimum_value = 0,
      maximum_value = 15,
      order = "bb",
   },
   {
      type = "int-setting",
      name = "standardized_ore_oil_gap",
      setting_type = "runtime-global",
      default_value = 6,
      minimum_value = 0,
      maximum_value = 100,
      order = "bc",
   },
   {
      type = "bool-setting",
      name = "start_with_bots",
      setting_type = "runtime-global",
      default_value = false,
      order = "zb"
   },
})