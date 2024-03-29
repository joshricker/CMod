data:extend
({
  {
    type = "technology",
    name = "inserter-capacity-bonus-8",
    icon = "__CMod__/graphics/icons/insterter_capacity.png",
    icon_size = 128,
    prerequisites = {"inserter-capacity-bonus-7"},
	effects =
	{
	  {
		type = "inserter-stack-size-bonus",
		modifier = 2
	  },
	  {
		type = "stack-inserter-capacity-bonus",
		modifier = 25
	  }
	},
    unit =
    {
      count_formula = "200+2^(L-4)*50",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  }
})
