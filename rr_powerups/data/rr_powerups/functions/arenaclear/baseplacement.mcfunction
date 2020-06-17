function arenaclear:baseplacement
execute if entity @s[tag=Molerat] run fill 4 52 -8 20 58 8 air
execute as @e[tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
function arenaclear:detailplacement