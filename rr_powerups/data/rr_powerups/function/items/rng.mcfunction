execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenTipped] run summon marker 0 0 0 {Tags:["rngArrow","rng1"]}
tag @e[x=0,type=marker,tag=rng1,sort=random,limit=1] add rngSelected
tag @a[x=0,predicate=custom:team/any_playing_team] add getItem
tag @s add tetrisTime
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngPowerup] run function rr_powerups:items/powerup/rng
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngArrow] run function rr_powerups:items/arrow/rng
function rr_powerups:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
kill @e[x=0,type=marker,tag=rng1]

##Actionbar notifications
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run tag @s add DelayActionbar
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run scoreboard players set @s actionbardelay 0
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue,tag=fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue,tag=wasFullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue,tag=wasFullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run tag @s add DelayActionbar
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run scoreboard players set @s actionbardelay 0
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow,tag=fullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow,tag=fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=!noHotbarWarn] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow,tag=wasFullHotbar] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noHotbarWarn,tag=!noFullHotbarSound] if entity @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow,tag=wasFullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
tag @s remove noHotbarWarn