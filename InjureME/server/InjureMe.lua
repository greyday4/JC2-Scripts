class "InjureMe"

function InjureMe:__init()

	self.version = "0.0.1"
	self.author = "tally"
	
	print("Version " ..tostring(self.version).. " loaded. Written by " ..tostring(self.author).. ".")

	Events:Subscribe("PlayerChat", PlayerChat)

end

function PlayerChat(args, player)
	local words = args.text:split(" ")
	if #words ~= 2 and #words ~= 1 then
		return
	end
 
	local value = tonumber(words[2])
 
	if words[1] == "injureme" then
		args.player:SetHealth(0.1)
		Chat:Send(args.player,"Stop hitting yourself!", Color(255, 0, 0))
		return false
	else
		return true
	end
end

InjureMe = InjureMe()