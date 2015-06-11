class "InjureMe"

function InjureMe:__init()
	self.version = "0.0.2"
	self.author = "tally"
	
	print("Version " ..tostring(self.version).. " loaded. Written by " ..tostring(self.author).. "for Wham!.")
end

InjureMe = InjureMe()