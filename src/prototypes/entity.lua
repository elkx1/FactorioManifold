local function copyPump(toName)
	-- Use Bob's mods pump if available, otherwise base game pump
	if lib.isBobsPumpAvailable() then
		return lib.copyPrototype("pump", "bob-pump-4", toName)
	else
		return lib.copyPrototype("pump", "pump", toName)
	end
end

local function makeManifold(name)
	local entity = copyPump(name)
	entity.energy_usage = "145kW"
    entity.pumping_speed = 250
	return entity
end

local intakeManifold = makeManifold("manifold-pump-intake")
intakeManifold.fluid_box =
    {
      base_area = 1,
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { direction = defines.direction.north, position = {0, -0.5}, flow_direction = "output" },
        { direction = defines.direction.west, position = {0, -0.5}, flow_direction = "input" },
        { direction = defines.direction.west, position = {0, 0.5}, flow_direction = "input" },
        { direction = defines.direction.east, position = {0, -0.5}, flow_direction = "input" },
        { direction = defines.direction.east, position = {0, 0.5}, flow_direction = "input" },
        { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input" },
      },
    }


local outletManifold = makeManifold("manifold-pump-outlet")
outletManifold.fluid_box =
    {
      base_area = 1,
      volume = 400,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { direction = defines.direction.north, position = {0, -0.5}, flow_direction = "output" },
        { direction = defines.direction.west, position = {0, -0.5}, flow_direction = "output" },
        { direction = defines.direction.west, position = {0, 0.5}, flow_direction = "output" },
        { direction = defines.direction.east, position = {0, -0.5}, flow_direction = "output" },
        { direction = defines.direction.east, position = {0, 0.5}, flow_direction = "output" },
        { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input" },
      },
    }
	
data:extend({
  intakeManifold,
  outletManifold
})
