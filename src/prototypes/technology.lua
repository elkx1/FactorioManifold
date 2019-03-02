data:extend({
  {
    type = "technology",
    name = "manifold",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 32,
    prerequisites = {"fluid-handling"},
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "intake-manifold"
      },
	  {
        type = "unlock-recipe",
        recipe = "outlet-manifold"
      },
	  {
        type = "unlock-recipe",
        recipe = "intake-manifold-from-outlet"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "d-a-a"
  }
})
