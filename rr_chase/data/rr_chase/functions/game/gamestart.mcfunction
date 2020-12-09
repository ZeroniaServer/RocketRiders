#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[tag=rr_chase,type=armor_stand,limit=1] PlayerCap 2
scoreboard players operation @e[tag=rr_chase,type=armor_stand,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[tag=rr_chase,type=armor_stand,limit=1] PlayerCap run tag @s add BlueFull
execute as @s[tag=!BlueFull] as @e[tag=bluejoinpad,tag=!CancelJoin,type=area_effect_cloud] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @s[tag=BlueFull,tag=EditedSettings] as @e[tag=bluejoinpad,tag=!CancelJoin,type=area_effect_cloud] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a

#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue
execute as @s[tag=GameStarted] as @a[tag=JoinBlue] run function items:util/givearrows

#Tag Removal
tag @a remove JoinBlue

#Bossbar
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 1 run bossbar set rr:startgame color blue

#Countdown
execute as @s[tag=EditedSettings] if score @s bluesCount matches 2.. run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] if score @s bluesCount matches 0..1 run function game:restartcountdown
execute as @s[tag=!GameStarted] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 10000
execute as @a[team=!Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted
execute as @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run attribute @s minecraft:generic.knockback_resistance base set 0.0
execute as @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run tag @s remove fullOffhand