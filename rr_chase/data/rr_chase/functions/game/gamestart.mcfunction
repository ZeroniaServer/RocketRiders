#Cancel Yellow
function game:cancelyellow

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