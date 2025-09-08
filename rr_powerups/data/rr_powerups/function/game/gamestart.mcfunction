#Items
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run function custom:update_armor

#Spawnpoints
execute if predicate game:game_started as @a[x=0,team=Blue,nbt=!{respawn:{pos:[I;12,64,-66]}}] run spawnpoint @s 12 64 -66 0
execute if predicate game:game_started as @a[x=0,team=Yellow,nbt=!{respawn:{pos:[I;12,64,66]}}] run spawnpoint @s 12 64 66 -180

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score @s gametime matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0,tag=!servermodeJoin] remove JoinBlue
tag @a[x=0,tag=!servermodeJoin] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute unless predicate game:game_ended if score @s count matches 600 run function custom:set_global/game_started {bool:true}