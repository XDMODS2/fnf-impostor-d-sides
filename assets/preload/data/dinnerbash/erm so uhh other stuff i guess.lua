function onUpdate()

score = getProperty('songScore')
health = getProperty('health')
misses = getProperty('songMisses') 
raping = getProperty('ratingName')
raping2 = getProperty('ratingPercent')
fc = getProperty('ratingFC')

if fc == 'null' then
fc = '?'
end

if dadName == 'Logo2' then

	makeLuaText('mother', 'Score: ' ..score.. ' | Misses: ' ..misses.. ' / 8 | Rating: ' ..raping.. ' (' ..fc.. ') ', 700, 300, 677)
	setTextAlignment('mother', 'center')
	setObjectCamera('mother', 'Hud')
	addLuaText('mother')
        setTextSize('mother', 20)
        setTextBorder('mother', 1.25, '000000')

        setProperty('iconP2.x', 260)

setProperty('scoreTxt.visible', false) 
if misses > 8 then
setProperty('mother.visible', false) 
       setProperty('health', getProperty('health') - 200)
else
if dadName == 'black run' or songName == 'Double-kill' then
setProperty('healthBar.visible', true) setProperty('healthBarBG.visible', true) 
else

setProperty('healthBar.visible', false) setProperty('healthBarBG.visible', false) 
       setProperty('health', 1)
setProperty('mother.visible', true) 
end
end
end
end