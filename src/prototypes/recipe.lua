local requiredPump = "pump"
if lib.isBobsPumpAvailable() then
	requiredPump = "bob-pump-4"
end

data:extend({
  {
    type = "recipe",
    name = "intake-manifold",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {requiredPump, 4},
      {"concrete", 100}
    },
    result = "manifold-pump-intake"
  },
  
  {
    type = "recipe",
    name = "outlet-manifold",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"manifold-pump-intake", 1}
    },
    result = "manifold-pump-outlet"
  },
  
  {
    type = "recipe",
    name = "intake-manifold-from-outlet",
    energy_required = 3,
    enabled = false,
	allow_as_intermediate = false,
    allow_intermediates = false,
    ingredients =
    {
      {"manifold-pump-outlet", 1}
    },
    result = "manifold-pump-intake"
  },
})