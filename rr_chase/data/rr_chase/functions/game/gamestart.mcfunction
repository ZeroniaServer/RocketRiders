#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap 2
scoreboard players operation @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[type=armor_stand,tag=rr_chase,limit=1] PlayerCap run tag @s add BlueFull
execute if entity @s[tag=!BlueFull] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute if entity @s[tag=BlueFull,tag=EditedSettings] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a

#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear
execute if entity @s[tag=GameStarted] as @a[tag=JoinBlue] run function items:util/givearrows

#Spawnpoints
execute if entity @s[tag=GameStarted] as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0

#Hardcore compatibility
execute if entity @s[tag=GameStarted,tag=Hardcore] run function modifiers:hardcorekill

#Tag Removal
tag @a remove JoinBlue

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame color blue

#Countdown
execute if entity @s[tag=EditedSettings] if score @s bluesCount matches 2.. run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] if score @s bluesCount matches 0..1 run function game:restartcountdown
execute if entity @s[tag=!GameStarted] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 10000
execute as @a[team=!Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted
execute if entity @s[scores={count=600},tag=!GameEnd] run tp @a[team=Blue] 12 64 -66 0 0
execute if entity @s[scores={count=600},tag=!GameEnd] run spawnpoint @a[team=Blue] 12 64 -66 0
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @a[team=Blue] add onBlue
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run tag @s remove fullOffhand