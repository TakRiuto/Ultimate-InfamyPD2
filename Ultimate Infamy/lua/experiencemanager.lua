function ExperienceManager:update_progress()
	if self:current_rank() == 25 then
		ExperienceManager.LEVEL_CAP = Application:digest_value(193, true)
	end
end

OL1_EM_UP = OL1_EM_UP or ExperienceManager.update_progress
function ExperienceManager:update_progress()
	OL1_EM_UP(self)
	self:SyncXpData()
end

OL1_EM_GE = OL1_EM_GE or ExperienceManager.give_experience
function ExperienceManager:give_experience(xp, force_or_debug)
	local data = OL1_EM_GE(self,xp, force_or_debug)
	self:SyncXpData()
	return data
end

local UltimateInfamy = { level = 99 , rank = 0 , points = 0 , xp = 0 }
function SyncXpDataLoad()
	local  file = io.open(SavePath .. "UltimateInfamySave.json", "r")
	if not file   then return false end
	local  fileT= file:read("*all"):gsub("%[%]","{}") 
		   file : close()
	if 	   fileT == "" then return end
	
	UltimateInfamy = json.decode(fileT)
end
SyncXpDataLoad()

function SyncXpDataSave()
	local  file = io.open(SavePath .. "UltimateInfamySave.json", "w")
	if not file then return false end
		   file:write(json.encode( UltimateInfamy ))
		   file:close()
end

function ExperienceManager:SyncXpData()
	local xp 	= self:xp_gained()
	local total	= self:total()
	local level = self:current_level()
	local rank	= self:current_rank()
	local points= self:next_level_data_current_points()
	local pointt= self:next_level_data_points()
	local levels_gained = self:get_levels_gained_from_xp(total)

	if level < 100 then return end

	if   UltimateInfamy.level > level 
	and  UltimateInfamy.rank == rank then 
		self:_set_current_level(UltimateInfamy.level)
		self:_set_next_level_data_current_points(UltimateInfamy.points)
		OL1_EM_UP(self)
	else 
		UltimateInfamy = { xp = xp , rank = rank , level = level , points = points }
		SyncXpDataSave()
	end
	
end
