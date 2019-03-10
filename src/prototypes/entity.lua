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
	entity.energy_usage = "60kW"
    entity.pumping_speed = 250
	return entity
end

local intakeManifold = makeManifold("manifold-pump-intake")
intakeManifold.fluid_box =
    {
      base_area = 1,
      height = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" },
		{ position = {1.0, 0.5}, type="input" },
		{ position = {1.0, -0.5}, type="input" },
		{ position = {-1.0, 0.5}, type="input" },
		{ position = {-1.0, -0.5}, type="input" }
      },
    }


local outletManifold = makeManifold("manifold-pump-outlet")
outletManifold.fluid_box =
    {
      base_area = 1,
      height = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" },
		{ position = {1.0, 0.5}, type="output" },
		{ position = {1.0, -0.5}, type="output" },
		{ position = {-1.0, 0.5}, type="output" },
		{ position = {-1.0, -0.5}, type="output" }
      },
    }
	
data:extend({
  intakeManifold,
  outletManifold
})
