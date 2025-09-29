scoreboard players reset $game_paused global
scoreboard players add $game_duration global 80

function game:place_arena

tp @a[x=0,team=Blue] 12 64 -66 0 0
tp @a[x=0,team=Yellow] 12 64 66 180 0
tp @a[x=0,team=Spectator] 12 100 0.5 90 90
gamemode survival @a[x=0,predicate=custom:on_blue_or_yellow_team]
gamemode spectator @a[x=0,team=Spectator]

clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_armor

scoreboard players add @s Rounds 1
tellraw @a[x=0,team=!Lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute as @a[x=0,team=!Lobby] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
