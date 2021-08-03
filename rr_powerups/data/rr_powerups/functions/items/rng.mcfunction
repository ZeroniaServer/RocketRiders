execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllTipped] run summon marker 0 0 0 {Tags:["rngArrow","rng1"]}
tag @e[type=marker,tag=rng1,sort=random,limit=1] add rngSelected
execute if entity @e[type=marker,tag=rngSelected,tag=rngPowerup] run function rr_powerups:items/powerup/rng
execute if entity @e[type=marker,tag=rngSelected,tag=rngArrow] run function rr_powerups:items/arrow/rng
function rr_powerups:items/tetris
execute unless entity @s[tag=doStacking] run schedule function items:scheduleantidupe 1t append
kill @e[type=marker,tag=rng1]

##Actionbar notifications
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run tag @s add DelayActionbar
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run scoreboard players set @s actionbardelay 0
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=1}] as @a[team=Blue,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[type=marker,scores={capturePoint=1}] as @a[team=Blue,tag=fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run tag @s add DelayActionbar
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run scoreboard players set @s actionbardelay 0
execute if entity @s[tag=!noHotbarWarn] if entity @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow,tag=fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
tag @s remove noHotbarWarn