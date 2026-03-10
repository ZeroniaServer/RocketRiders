##
gamemode spectator @a[x=0,predicate=custom:team/spectator]
gamemode adventure @a[x=0,predicate=custom:team/any_playing_team]

scoreboard players set $match_time global 0
scoreboard players set $match_play_time global 0

scoreboard objectives add UUIDTracker dummy
scoreboard objectives add KillerUUID dummy

bossbar set rr:startgame value 30
bossbar set rr:startgame max 30
function game:randomsplash
execute as @a[x=0] at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2
tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if predicate game:modifiers/sonar/on run tellraw @a[x=0,predicate=custom:team/spectator,tag=!JoinSpec] [{color:"gray",text:""},{color:"yellow",text:"⚠"}," The Sonar modifier is enabled! Non-spectating players cannot see the whole arena."]
tp @a[x=0,predicate=custom:team/spectator] 12 100 0.5 90 90
effect clear @a[x=0,predicate=custom:team/any_playing_team] resistance
effect give @a[x=0,predicate=custom:team/any_playing_team] fire_resistance 10 100 true
#Hotfix for losing shield upon game starting
execute if predicate game:match_components/main_item/crusade_kit_dependent as @a[x=0,predicate=custom:team/any_playing_team,predicate=rr_crusade:kit/knight] run loot replace entity @s weapon.offhand loot items:misc/knight_shield
execute as @a[x=0,predicate=custom:team/any_playing_team] run function game:notify_join
execute unless predicate game:phase/match/closing run tag @a[x=0] remove CalculateWin
execute unless predicate game:phase/match/closing run tag @a[x=0] remove CalculateLoss
#Hotfix for bug where jumping in queue rooms disqualifies you from Ground Bound achievement
scoreboard players set @a[x=0,predicate=custom:team/any_playing_team] jumps 0
#Enabling damage gamerules
function custom:game_rules/drowning_damage/on
function custom:game_rules/fire_damage/on
scoreboard players operation $initial_blue_team_count global = $blue_team_count global
scoreboard players operation $initial_yellow_team_count global = $yellow_team_count global
function lobby:credits/restart
function custom:game_rules/mob_griefing/on
kill @e[x=0,type=#arrows]
scoreboard players reset $force_countdown global


## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match
