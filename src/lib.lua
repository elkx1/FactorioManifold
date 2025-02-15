local M = {}

M.copyPrototype = function(type, name, newName)
  if not data.raw[type][name] then error("type "..type.." "..name.." doesn't exist") end
  local p = table.deepcopy(data.raw[type][name])
  p.name = newName
  if p.minable and p.minable.result then
    p.minable.result = newName
  end
  if p.place_result then
    p.place_result = newName
  end
  if p.result then
    p.result = newName
  end
  if p.results then
		for _,result in pairs(p.results) do
			if result.name == name then
				result.name = newName
			end
		end
	end
  return p
end

-- Funtions for use during prototype stage to determine mod extensions to use
M.isBobsPumpAvailable = function()
	return data.raw["pump"]["bob-pump-4"] ~= nil
end

M.isSpaceAgeModLoaded = function()
	return mods["space-age"] ~= nil
end

return M