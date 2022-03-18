function onCreate()
    makeLuaSprite('lol', 'your', -150, -100)
    setObjectCamera('lol', 'hud')
    screenCenter('lol', 'xy')
    setProperty('lol.visible', false)
    --freddy is coming to ur house and also check your bathroom and below the bed :D williamDumbass is in there and freddy trying to escape?(!!!?#?!_2(_)2)($3($($($(

    makeLuaSprite('fazIPnotReal', 'fazbars/fazbars', -150, -450)
    addLuaSprite('fazIPnotReal', false)
    scaleObject('fazIPnotReal', 2.9, 2.9);
    
    setPropertyFromClass('ClientPrefs', 'camZooms', true)
    
    makeLuaSprite('ready', 'fazbars/ready', 0, 0)
    screenCenter('ready', 'xy')
    setObjectCamera('ready', 'hud')
    setProperty('ready.visible', false)
    addLuaSprite('ready', true)
    
    makeLuaSprite('set', 'fazbars/set', 0, 0)
    screenCenter('set', 'xy')
    setObjectCamera('set', 'hud')
    setProperty('set.visible', false)
    addLuaSprite('set', true)
    
    makeLuaSprite('go', 'fazbars/go', 0, 0)
    screenCenter('go', 'xy')
    setObjectCamera('go', 'hud')
    setProperty('go.visible', false)
    addLuaSprite('go', true)
    
    addLuaSprite('lol', true)
    
end

function onCountdownTick(counter)
	if counter == 0 then
			addLuaSprite('ready', true, 'elasticIn');
			setProperty('ready.visible', true)
			playSound('intro1');
			doTweenX('readyx', 'ready.scale', 0.9, crochet/1000);
			doTweenY('readyy', 'ready.scale', 0.9, crochet/1000);
	end
	if counter == 1 then
			addLuaSprite('set', true, 'elasticIn');
			setProperty('set.visible', true)
			removeLuaSprite('ready');
			playSound('intro2');
			doTweenX('setx', 'set.scale', 0.9, crochet/1000);
			doTweenY('sety', 'set.scale', 0.9, crochet/1000);
	end
	if counter == 2 then
			addLuaSprite('go', true, 'elasticIn');
			setProperty('go.visible', true)
			removeLuaSprite('set');
			playSound('intro3');
			doTweenX('gox', 'go.scale', 1.1, crochet/1000);
			doTweenY('goy', 'go.scale', 1.1, crochet/1000);
	end
	if counter == 3 then
			removeLuaSprite('go');
	end
		setProperty('countdownReady.visible', false)
		setProperty('countdownSet.visible', false)
		setProperty('countdownGo.visible', false)
end

function noteMissPress(direction)
	playSound('miss_faz')
end

function noteMiss(id, direction, noteType, isSustainNote)
	playSound('miss_faz')
end

function onBeatHit()
   if curBeat % 2 == 0 then
      doTweenX('readyx', 'boyfriend.scale', 0.9, crochet/500);
      doTweenY('readyy', 'boyfriend.scale', 0.9, crochet/500);
	end

   if curBeat % 4 == 0 then
      doTweenX('r', 'boyfriend.scale', 1.1, crochet/500);
      doTweenY('e', 'boyfriend.scale', 1.1, crochet/500);
    end
end