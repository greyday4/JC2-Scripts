class "deathmessage"

function deathmessage:__init()
	Events:Subscribe("LocalPlayerDeath", wasted)
end

function deathmessage:wasted()
	Render:DrawText(Render.size / 2, "Wasted", Color.Red)
end