class "InjureMe"

function InjureMe:__init()
	self.version = "0.0.2"
	self.author = "tally"
	
	Events:Subscribe("ModuleLoad", self.ModuleLoad)
    Events:Subscribe("ModuleUnload", self.ModuleUnload)
	
	print("Version " ..tostring(self.version).. " loaded. Written by " ..tostring(self.author).. " for Wham!.")
end

function InjureMe:ModuleLoad()
	Events:Fire( "HelpAddItem",
        {
            name = "Injure Me",
            text = 
                "A basic script with commands to set player and vehicle health.\n\n" ..
                "To heal yourself type '/healme'.\n" ..
				"To repair a vehicle type '/healme' while in a vehicle.\n" ..
				"\nTo damage yourself type '/injureme <value>'.\n" ..
				"To damage a vehicle type '/injureme <value>' while in a vehicle.\n" ..
				"\nTo kill yourself type '/killme'.\n" ..
				"\n:: Written by tally for Wham!"
        } )
end

function InjureMe:ModuleUnload()
    Events:Fire( "HelpRemoveItem",
        {
            name = "Injure Me"
        } )
end

InjureMe = InjureMe()