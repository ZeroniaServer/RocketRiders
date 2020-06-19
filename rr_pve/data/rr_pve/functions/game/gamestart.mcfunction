#Cancel Yellow
function game:cancelyellow

execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] run scoreboard players set @e[tag=Bot] botarrowitems 20

#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute unless entity @s[tag=GameEnd] if entity @a[team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute as @s[scores={count=590..600},tag=!GameEnd] run kill @e[tag=Bot]
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted