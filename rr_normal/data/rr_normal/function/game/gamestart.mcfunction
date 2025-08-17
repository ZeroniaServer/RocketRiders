#Items
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run function game:givegear
execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run function game:givegear

#Spawnpoints
execute if predicate game:game_started as @a[x=0,team=Blue,nbt=!{respawn:{pos:[I;12,64,-66]}}] run spawnpoint @s 12 64 -66 0
execute if predicate game:game_started as @a[x=0,team=Yellow,nbt=!{respawn:{pos:[I;12,64,66]}}] run spawnpoint @s 12 64 66 -180

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score @s gametime matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0,tag=!servermodeJoin] remove JoinBlue
tag @a[x=0,tag=!servermodeJoin] remove JoinYellow

#Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings,scores={servermode=0..}] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,scores={servermode=0..}] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown,scores={servermode=0..}] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute unless predicate game:game_started if entity @s[tag=EditedSettings,scores={servermode=-1}] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings,scores={servermode=-1}] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,scores={servermode=-1}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=600},tag=!GameEnd] run function custom:set_global/game_started {bool:true}