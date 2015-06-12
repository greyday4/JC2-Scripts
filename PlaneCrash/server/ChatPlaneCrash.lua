class "Planecrash"

function Planecrash:__init()
	HeliVehicles = {[3] = true, [14] = true, [37] = true, [57] = true, [62] = true, [64] = true, [65] = true, [67] = true}
	PlaneVehicles =	{[24] = true, [30] = true, [34] = true, [39] = true, [51] = true, [59] = true, [81] = true, [85] = true}
	AirVehicles = {[3] = true, [14] = true, [37] = true, [57] = true, [62] = true, [64] = true, [65] = true, [67] = true, [24] = true, [30] = true, [34] = true, [39] = true, [51] = true, [59] = true, [81] = true, [85] = true}
	planehealth = 0.1
	helihealth = 0.01
	Events:Subscribe("PlayerChat", PlayerChat)
	math.random()
end

function PlayerChat(args, player)
	local words = args.text:split(" ") 
	local Weather = DefaultWorld:GetWeatherSeverity()
	local Positionx = string.format("%i", args.player:GetPosition().x + 16384)
	local Positionz = string.format("%i", args.player:GetPosition().z + 16384)
 
	if words[1] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[1] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[2] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[2] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[3] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[3] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[4] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[4] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[5] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[5] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[6] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[6] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[7] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[7] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[8] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[8] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[9] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[9] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[10] == "mayday" and PlaneVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(planehealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	elseif words[10] == "mayday" and HeliVehicles[args.player:GetVehicle():GetModelId()] then
		args.player:GetVehicle():SetHealth(helihealth)
		args.player:GetVehicle():SetDeathRemove(true)
		Chat:Broadcast("Last blackbox broadcast puts " ..tostring(args.player) .." at " ..tostring(Positionx).. ", " ..tostring(Positionz).. ".", Color(255, 255, 255))
		return true
	else
		return true
	end
end

Planecrash = Planecrash()