function game:set_phase/match.play.battle
scoreboard players add $play_time match_data 80

function game:place_arena

tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
execute as @a[x=0,predicate=custom:team/any_arena_team] run function custom:player/teleport_to_start

scoreboard players add @s Rounds 1
tellraw @a[x=0,predicate=!custom:team/lobby] [{"text":"\nBeginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":true},{"text":"."}]
execute as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
tag @s remove CriteriaTrue