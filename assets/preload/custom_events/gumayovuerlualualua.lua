finishedGameover = false;

function onCreate()    
    setPropertyFromClass('GameOverSubstate', 'characterName', 'glitchtrapRetry');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'intro3');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'intro3');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'intro3');

end

function onGameOverConfirm(reset)
	finishedGameover = true;
end

function onGameOver()
   cameraSetTarget('boyfriend');
end

function onUpdate()
        setProperty('timeBarBG.visible', false);
        setProperty('timeBar.visible', false);
        setProperty('timeTxt.visible', false)
end

function onStartCountdown()
      clearUnusedMemory();
end

function onDestroy()
      clearUnusedMemory();
end

function goodNoteHit(noteID, noteDir, noteType, noteSustain)
    if noteSustain then
        setProperty('health', getProperty('health')-getPropertyFromGroup('notes', noteID, 'hitHealth'));
    end
end

function onPause()
     return Function_Stop;
end