finishedGameover = false;

-- Game over voiceline code steal lol :)))))))
function onGameOver()
	playSound('springtrapLines/springDeath' .. math.random(1, 7))
	return Function_Continue;
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end