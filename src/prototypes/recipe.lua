local requiredPump = "pump"
if lib.isBobsPumpAvailable() then
	requiredPump = "bob-pump-4"
end

local basicIngredients = {
  {type="item", name=requiredPump, amount=4},
  {type="item", name="concrete", amount=100},
}
if lib.isSpaceAgeModLoaded() then
  basicIngredients[#basicIngredients+1] = {type="item", name="tungsten-plate", amount=15}
end

data:extend({
  {
    type = "recipe",
    name = "intake-manifold",
    energy_required = 3,
    enabled = false,
    ingredients = basicIngredients,
    results = {{type="item", name="manifold-pump-intake", amount=1}}
  },
  {
    type = "recipe",
    name = "outlet-manifold",
    energy_required = 3,
    enabled = false,
    ingredients = basicIngredients,
    results = {{type="item", name="manifold-pump-outlet", amount=1}}
  },
})
