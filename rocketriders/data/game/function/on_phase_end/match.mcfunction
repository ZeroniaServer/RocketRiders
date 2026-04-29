##
gamemode adventure @a[x=0,predicate=custom:team/any_arena_team]

scoreboard players reset $match_time global
scoreboard players reset $match_play_time global
scoreboard players reset $initial_blue_team_count global
scoreboard players reset $initial_yellow_team_count global
tag @s remove BlueWon
tag @s remove YellowWon
tag @s remove BlueWonFirst
tag @s remove YellowWonFirst
tag @s remove BothWon
scoreboard players reset $blue_single_portal var
scoreboard players reset $yellow_single_portal var
scoreboard players reset $1v1_duel_time_out_period global

gamerule minecraft:mob_griefing false
execute if predicate game:modifiers/spam_click/on as @a[x=0] run attribute @s minecraft:attack_speed base reset
function achievements:scoresreset

scoreboard players add @a[x=0,predicate=custom:team/any_playing_team] GamesPlayed 1
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/playerdata/save

tag @a[x=0] remove Winner
tag @a[x=0] remove Loser
scoreboard players reset @a[x=0] invCount

execute as @a[x=0] run function everytick:score_reset
scoreboard players add @a[x=0,predicate=custom:team/any_arena_team] LeaveGame 1
tp @a[x=0,predicate=custom:team/blue] -36 211 61.0 90 0
tp @a[x=0,predicate=custom:team/yellow] -36 211 96.0 90 0
tp @a[x=0,predicate=custom:team/spectator] -43 211 78 90 0
setblock -57 203 78 air

#Brute Force Arena Clear
function arenaclear:brute_force/start

#Server mode specifics
execute if predicate rr:server_mode/cubekrowd_voting if entity @s[tag=!forcenormal] run function servermode:makesets
execute if predicate rr:server_mode/cubekrowd_duels run schedule function servermode:forceclear 3t

##For repeating settings
execute unless score $match_repeat_amount global matches 1.. unless predicate game:repeat_settings/forever run scoreboard players reset $extra_match_repetitions config
execute if predicate game:repeat_settings/on unless score $mcancel CmdData matches 1 unless entity @s[predicate=game:item_pool/__all_normal_missiles_disabled,predicate=game:item_pool/__all_heavy_missiles_disabled,predicate=game:item_pool/__all_lightning_missiles_disabled,predicate=game:item_pool/__all_utilities_disabled] run function arenaclear:areaclear
scoreboard players set $mcancel CmdData 0

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_end/match
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_end/match
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_end/match
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_end/match
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_end/match
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_end/match
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_end/match
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_end/match
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_end/match
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_end/match
