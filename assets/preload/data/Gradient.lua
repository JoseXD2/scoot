function onBeatHit()
	if Lightning then
		Lightning = math.random(1,3)
		if Lightning == 1 then
			objectPlayAnimation('bluelight','spawn', true)
		elseif Lightning == 2 then
			objectPlayAnimation('bluelight','spawn1', true)
		elseif Lightning == 3 then
			objectPlayAnimation('bluelight','spawn2', true)
		end
	end
end