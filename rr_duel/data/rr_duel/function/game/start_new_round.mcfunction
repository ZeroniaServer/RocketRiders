scoreboard players reset $game_paused global
scoreboard players add $game_duration global 80

function game:place_arena

tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
tp @a[x=0,predicate=custom:team/spectator] 12 100 0.5 90 90
gamemode survival @a[x=0,predicate=custom:team/any_playing_team]
gamemode spectator @a[x=0,predicate=custom:team/spectator]

execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory

scoreboard players add @s Rounds 1
tellraw @a[x=0,predicate=!custom:team/lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
tag @s remove CriteriaTrue