##Kills players who join midgame when Hardcore is on
gamerule showDeathMessages false
tag @a[tag=JoinBlue] add hardcoreKilled
tag @a[tag=JoinYellow] add hardcoreKilled
execute as @a[tag=JoinBlue] run kill @s
execute as @a[tag=JoinYellow] run kill @s
execute as @a[tag=JoinBlue] run scoreboard players remove @s deaths 1
execute as @a[tag=JoinYellow] run scoreboard players remove @s deaths 1
bossbar set rr:startgame players @a[team=Lobby]
gamerule showDeathMessages true