#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap 2
scoreboard players operation @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap run tag @s add BlueFull
execute if entity @s[tag=!BlueFull] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle dust 3 3 3 1 ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[predicate=!custom:belowroof]
execute if entity @s[tag=BlueFull,tag=EditedSettings] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 1 force @a[predicate=!custom:belowroof]

#Items
execute as @a[tag=JoinBlue] run function rr_chase:chasegear/givegear
execute if entity @s[tag=GameStarted] as @a[tag=JoinBlue] run function items:util/givearrows

#Spawnpoints
execute if entity @s[tag=GameStarted] as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] as @a[tag=JoinBlue] run function rr_chase:chasegear/sabermsg
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]

#Tag Removal
tag @a remove JoinBlue

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame color green

#Countdown
execute if entity @s[tag=EditedSettings] if score @s bluesCount matches 2.. run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] if score @s bluesCount matches 0..1 run function game:restartcountdown
execute if entity @s[tag=!GameStarted] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 10000
execute as @a[team=!Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute if entity @s[scores={count=600},tag=!SMActive] as @a[team=Blue] run function rr_chase:chasegear/sabermsg
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted
execute if entity @s[scores={count=600},tag=!GameEnd] run tp @a[team=Blue] 12 64 -66 0 0
execute if entity @s[scores={count=600},tag=!GameEnd] run spawnpoint @a[team=Blue] 12 64 -66 0
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @a[team=Blue] add onBlue
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run tag @s remove fullOffhand