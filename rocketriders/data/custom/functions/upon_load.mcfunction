scoreboard objectives add disableTips trigger
scoreboard objectives add leaveSpec trigger
scoreboard objectives add Rounds dummy
scoreboard objectives add endFireball dummy
scoreboard objectives add hideParkourTips trigger

data merge block -61 206 58 {Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Obsidian Shield"}'}
data merge block -80 204 135 {Text2:'{"color":"green","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"TomaTwo"}'}
data merge block -80 204 21 {Text2:'{"color":"green","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Chronullifier"}'}
data merge block 16 204 62 {Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Shield"}'}
data merge block 18 204 21 {Text2:'{"color":"green","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Catapult"}'}
data merge block 14 204 94 {Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Canopy"}'}
data merge block -70 205 49 {Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Vortex"}'}
data merge block 18 204 135 {Text2:'{"color":"yellow","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @s ~ ~ ~ 1 1"},"text":"Hurricane"}'}

scoreboard objectives add bMissileCount dummy
scoreboard objectives add yMissileCount dummy
scoreboard players add @e[tag=Selection,type=armor_stand] bMissileCount 0
scoreboard players add @e[tag=Selection,type=armor_stand] yMissileCount 0

execute unless data storage rocketriders:bmissilepos x run data modify storage rocketriders:bmissilepos x set value []
execute unless data storage rocketriders:bmissilepos y run data modify storage rocketriders:bmissilepos y set value []
execute unless data storage rocketriders:bmissilepos z run data modify storage rocketriders:bmissilepos z set value []

execute unless data storage rocketriders:ymissilepos x run data modify storage rocketriders:ymissilepos x set value []
execute unless data storage rocketriders:ymissilepos y run data modify storage rocketriders:ymissilepos y set value []
execute unless data storage rocketriders:ymissilepos z run data modify storage rocketriders:ymissilepos z set value []