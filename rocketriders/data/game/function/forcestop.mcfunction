##Operator function for forcing a match to end
execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] run return run execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function game:forcestop

clear @a[x=0,predicate=custom:team/any_playing_team] *
effect clear @a[x=0,predicate=custom:team/any_playing_team]
dialog clear @a[x=0]
scoreboard players reset $1v1_duel_time_out_period global
scoreboard players reset $force_countdown global
tag @s remove gaveFirstItem
worldborder warning distance 0
execute as @a[x=0] run function everytick:score_reset
bossbar set rr:startgame max 30
tag @a[x=0] remove deathchamp
tag @a[x=0] remove flagschamp
tag @a[x=0] remove killschamp
tag @a[x=0] remove spawnchamp
schedule clear lobby:cancelsettings/counter

# during match
execute if predicate game:phase/match run return run function game:set_phase/staging.configuration

# during staging
execute as @a[x=0] run attribute @s minecraft:attack_speed base reset
scoreboard players add @a[x=0,predicate=custom:team/any_arena_team] LeaveGame 1
tp @a[x=0,predicate=custom:team/blue] -36 211 61.0 90 0
tp @a[x=0,predicate=custom:team/yellow] -36 211 96.0 90 0
tp @a[x=0,predicate=custom:team/spectator] -43 211 78 90 0
execute if predicate rr:server_mode/cubekrowd_voting if entity @s[tag=!forcenormal] run function servermode:makesets
execute if predicate rr:server_mode/cubekrowd_duels run schedule function servermode:forceclear 3t
function game:set_phase/staging.configuration
execute unless score $match_repeat_amount global matches 1.. unless predicate game:repeat_settings/forever run scoreboard players reset $extra_match_repetitions config
execute if predicate game:repeat_settings/on unless score $mcancel CmdData matches 1 unless entity @s[predicate=game:item_pool_meta/all_normal_missiles_disabled,predicate=game:item_pool_meta/all_heavy_missiles_disabled,predicate=game:item_pool_meta/all_lightning_missiles_disabled,predicate=game:item_pool_meta/all_utilities_disabled] run function arenaclear:areaclear
scoreboard players set $mcancel CmdData 0
return 1
