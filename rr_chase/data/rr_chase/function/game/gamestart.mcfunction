#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap 2
scoreboard players operation @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap run tag @s add BlueFull
execute if entity @s[tag=BlueFull,tag=EditedSettings] run tag @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] add join_pad.show_barrier

#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute if predicate game:game_started as @a[x=0,tag=JoinBlue] run function items:util/givearrows

#Spawnpoints
execute if predicate game:game_started run spawnpoint @a[x=0,team=Blue] 12 64 -66 0

#Notify Join
execute if predicate game:game_started unless predicate rr:is_cubekrowd as @a[x=0,tag=JoinBlue] run function rr_chase:chasegear/sabermsg
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue

#Bossbar
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more players...","color":"white"}]
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame value 15
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame color green

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if score @s bluesCount matches 2.. run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] if score @s bluesCount matches 0..1 run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if score @s bluesCount matches 1.. run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] if score @s bluesCount matches 0 run function game:restartcountdown

execute unless predicate game:game_started as @a[x=0,team=Blue] run attribute @s minecraft:knockback_resistance base set 10000
execute as @a[x=0,team=!Blue] run attribute @s minecraft:knockback_resistance base set 0.0
execute if score @s count matches 600 unless predicate rr:is_cubekrowd as @a[x=0,team=Blue] run function rr_chase:chasegear/sabermsg
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]
execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set $game_started global 1
execute unless predicate game:game_ended if score @s count matches 600 run tp @a[x=0,team=Blue] 12 64 -66 0 0
execute unless predicate game:game_ended if score @s count matches 600 run spawnpoint @a[x=0,team=Blue] 12 64 -66 0
execute unless predicate game:game_ended if score @s count matches 600 run tag @a[x=0,team=Blue] add onBlue
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetect"]}
execute unless predicate game:game_ended if score @s count matches 600 as @a[x=0,team=Blue] run attribute @s minecraft:knockback_resistance base set 0.0
execute unless predicate game:game_ended if score @s count matches 600 as @a[x=0,team=Blue] run tag @s remove fullOffhand