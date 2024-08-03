#After game ends
scoreboard players add @s fakeendtimer 1
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data~{nova:1b}]
tag @s[scores={fakeendtimer=1}] remove gaveFirstItem
scoreboard players operation @s[scores={fakeendtimer=1}] MaxItemTime = @s[scores={fakeendtimer=1}] MaxItemSec
scoreboard players operation @s[scores={fakeendtimer=1}] MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
execute if entity @s[scores={fakeendtimer=1}] run function game:endstats
execute if entity @s[scores={fakeendtimer=1}] run tag @a[x=0] remove nearcanopy
execute if entity @s[scores={fakeendtimer=1}] run gamemode spectator @a[x=0,team=Blue]
execute if entity @s[scores={fakeendtimer=1}] run gamemode spectator @a[x=0,team=Yellow]
execute if entity @s[scores={fakeendtimer=1..2}] run tp @a[x=0,team=Blue] 12 64 -66 0 0
execute if entity @s[scores={fakeendtimer=1..2}] run tp @a[x=0,team=Yellow] 12 64 66 180 0
execute if entity @s[scores={fakeendtimer=1}] as @a[x=0] run attribute @s minecraft:player.block_break_speed modifier remove rocketriders:instamine
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] blindness
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] glowing
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] speed
execute if entity @s[scores={fakeendtimer=1}] as @a[x=0] run function everytick:score_reset
execute if entity @s[scores={fakeendtimer=320}] run scoreboard players set @a[x=0] kills 0
execute if entity @s[scores={fakeendtimer=320}] run scoreboard players set @a[x=0] deaths 0
execute if entity @s[scores={fakeendtimer=320}] run tag @a[x=0] remove Winner
execute if entity @s[scores={fakeendtimer=320}] run tag @a[x=0] remove Loser
execute if entity @s[scores={fakeendtimer=320}] run tag @s remove BlueWon
execute if entity @s[scores={fakeendtimer=320}] run tag @s remove YellowWon
execute if entity @s[scores={fakeendtimer=320}] run tag @a[x=0] remove beenOnBlue
execute if entity @s[scores={fakeendtimer=320}] run tag @a[x=0] remove beenOnYellow
execute if entity @s[scores={fakeendtimer=320}] run tag @a[x=0] remove beenOnBoth
execute if entity @s[scores={fakeendtimer=320}] run scoreboard players reset $highest VortexID
execute if entity @s[scores={fakeendtimer=320}] run scoreboard players reset $count VortexID
execute if entity @s[scores={fakeendtimer=320}] run scoreboard players add @s Rounds 1
execute if entity @s[scores={fakeendtimer=320}] run tellraw @a[x=0,team=!Lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute if entity @s[scores={fakeendtimer=320}] as @a[x=0,team=!Lobby] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute if entity @s[scores={fakeendtimer=320}] run function rr_duel:arenaclear/areaclear