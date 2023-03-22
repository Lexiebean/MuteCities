OLDMusicVolume = 0

local MuteCities = CreateFrame("Frame")

MuteCities:RegisterEvent("ZONE_CHANGED_NEW_AREA")

MuteCities:SetScript("OnEvent", function()
	if event == "ZONE_CHANGED_NEW_AREA" then
	
		local CurrentZone = GetZoneText();
		if CurrentZone == "Stormwind City" or CurrentZone == "Orgrimmar" then
			OLDMusicVolume = GetCVar("MusicVolume")
			SetCVar("MusicVolume", 0)
		else
			SetCVar("MusicVolume", OLDMusicVolume)
		end
	end
end)