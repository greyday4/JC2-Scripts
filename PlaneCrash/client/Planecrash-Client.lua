class "Planecrash"

function Planecrash:__init()

	Events:Subscribe("ModulesLoad", self.ModulesLoad)
	Events:Subscribe("ModuleUnload", self.ModuleUnload)

	self.version = "0.0.2"
	self.author = "tally"
	
	print("Version " ..tostring(self.version).. " loaded. Written by " ..tostring(self.author).. ".")
end

function Planecrash:ModulesLoad()
	Events:Fire( "HelpAddItem",
        {
            name = "Plane Crash Events",
            text = 
                "A script with a single command (default is) '/secretcrash'.\n" ..
                "This will cause you to crash your plane/helicopter and broadcast your location so people know from where to rescue you.\n" ..
				"\nThe second module allows players to type 'mayday' in chat and for a similar effect to ensue, this allows for better Roleplay.\n" ..
				"\n:: Written by tally."
        } )
end

function Planecrash:ModuleUnload()
    Events:Fire( "HelpRemoveItem",
        {
            name = "Plane Crash Events"
        } )
end

Planecrash = Planecrash()