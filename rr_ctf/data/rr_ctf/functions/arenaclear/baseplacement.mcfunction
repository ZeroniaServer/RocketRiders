function arenaclear:baseplacement
execute if entity @s[tag=Molerat] run fill 4 52 -8 20 58 8 air
execute as @e[tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
function arenaclear:detailplacement

fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air


function rr_ctf:arenaclear/flagplacement