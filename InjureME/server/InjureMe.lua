class "InjureMe"

function InjureMe:__init()
	Events:Subscribe("PlayerChat", PlayerChat)
end

function PlayerChat(args, player)
	local words = args.text:split(" ")
	if #words ~= 2 and #words ~= 1 then
		return
	end
 
	local value = tonumber(words[2])
 
	if words[1] == "/injureme" and value then
		if value <= 0 or value > 1 then
			Chat:Send(args.player, "Use a value above 0 and below 1.", Color(255, 0, 255))
			return false
		elseif args.player:InVehicle() then
			local currentvehiclehealth = args.player:GetVehicle():GetHealth()
			local health = currentvehiclehealth - value
			args.player:GetVehicle():SetHealth(health)
			Chat:Send(args.player, "That's gonna cost.", Color(0, 255, 0))
		return false
		else
			local currenthealth = args.player:GetHealth()
			local health = currenthealth - value
			args.player:SetHealth(health)
			Chat:Send(args.player, "You hit yourself for " ..tostring(value).. " damage.", Color(255, 0, 0))
			return false
		end
	elseif words[1] == "/healme" then
		if args.player:InVehicle() then
			args.player:GetVehicle():SetHealth(1)
			Chat:Send(args.player, "Vehicle Repaired.", Color(0, 255, 0))
		return false
		else args.player:SetHealth(1)
			Chat:Send(args.player,"Ah, much better!", Color(0, 255, 0))
		return false
	end
	elseif words[1] == "/killme" then
		args.player:SetHealth(0)
		Chat:Send(args.player,"Oops, That was not medicine!", Color(255, 0, 0))
		return false
	else
		return true
	end
end

InjureMe = InjureMe()