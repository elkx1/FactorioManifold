local ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
}

local prerequisites = {
  "fluid-handling",
  "concrete",
  "production-science-pack",
}

if lib.isSpaceAgeModLoaded() then
  ingredients[#ingredients+1] = {"space-science-pack", 1}
  ingredients[#ingredients+1] = {"metallurgic-science-pack", 1}
  prerequisites[#prerequisites+1] = "metallurgic-science-pack"
end

data:extend({
  {
    type = "technology",
    name = "manifold",
    icon = "__base__/graphics/icons/pump.png",
    prerequisites = prerequisites,
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
    },
    unit =
    {
      count = 500,
      ingredients = ingredients,
      time = 30
    },
    order = "d-a-a"
  }
})
