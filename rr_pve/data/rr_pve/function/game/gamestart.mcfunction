#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[x=0,type=armor_stand,tag=rr_pve,limit=1] PlayerCap 2
scoreboard players operation @e[x=0,type=armor_stand,tag=rr_pve,limit=1] PlayerCap *= @s PlayerCap
execute if score $blue_team_count global >= @e[x=0,type=armor_stand,tag=rr_pve,limit=1] PlayerCap run tag @s add BlueFull
#execute if predicate custom:periodic_tick/3 unless predicate game:gamemode_components/red_for_blue if entity @s[tag=!BlueFull] as @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:blue_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
#execute if predicate custom:periodic_tick/3 if predicate game:gamemode_components/red_for_blue if entity @s[tag=!BlueFull] as @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:red_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate game:joinable_match_phase if entity @s[tag=BlueFull] run tag @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] add join_pad.show_barrier

#Bots in Pregame Queue
execute if predicate game:phase/staging/queue/countdown unless entity @e[x=0,type=armor_stand,tag=Bot] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_five_yellow
execute if predicate game:phase/staging/queue/countdown run scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 20
execute if predicate game:phase/staging/queue/countdown run scoreboard players set @e[x=0,type=armor_stand,tag=Bot] BotHP 3

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute if predicate game:phase/staging/queue/waiting unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if predicate game:phase/staging/queue/waiting unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame value 0
execute if predicate game:phase/staging/queue/waiting unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame color white

#Countdown
execute if predicate game:phase/staging/queue/waiting if entity @a[x=0,predicate=custom:team/blue] run function game:set_phase/staging.queue.countdown
execute if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate game:phase/staging/queue unless entity @a[x=0,predicate=custom:team/blue] run kill @e[x=0,type=armor_stand,tag=Bot]
execute if predicate game:phase/staging/queue/countdown if entity @s[scores={count=590..600}] run kill @e[x=0,type=armor_stand,tag=Bot]
execute if predicate game:phase/staging/queue/countdown if score @s count matches 600 run function game:start_match
