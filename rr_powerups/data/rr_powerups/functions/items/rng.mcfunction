execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllTipped] run summon marker 0 0 0 {Tags:["rngArrow","rng1"]}
tag @e[tag=rng1,sort=random,limit=1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=rngPowerup,type=marker] run function rr_powerups:items/powerup/rng
execute if entity @e[tag=rngSelected,tag=rngArrow,type=marker] run function rr_powerups:items/arrow/rng
function rr_powerups:items/tetris
schedule function rr_powerups:items/scheduleantidupe 1t append
kill @e[tag=rng1,type=marker]

##Actionbar notifications
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run tag @s add DelayActionbar
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run scoreboard players set @s actionbardelay 0
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=1},type=marker] as @a[team=Blue,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run tag @s add DelayActionbar
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run scoreboard players set @s actionbardelay 0
execute as @s[tag=!noHotbarWarn] if entity @e[scores={capturePoint=2},type=marker] as @a[team=Yellow,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
tag @s remove noHotbarWarn