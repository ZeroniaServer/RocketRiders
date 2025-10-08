tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

scoreboard players set $game_paused global 1
function arenaclear:brute_force/start

tp @a[x=0,team=Blue] -95 202 60 0 0
tp @a[x=0,team=Yellow] -95 202 96 180 0
tp @a[x=0,team=Spectator] -95 213 78 -90 90
fill -89 202 66 -101 211 66 minecraft:barrier strict
fill -89 202 90 -101 211 90 minecraft:barrier strict
execute as @a[x=0,team=Blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,team=Yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_armor
gamemode adventure @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team]

summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

function items:tetrisreset

execute as @e[x=0,type=!player,predicate=custom:belowroof,predicate=!custom:has_vehicle] run function custom:kill_entity_and_passengers

scoreboard players set @e[x=0,type=marker,tag=ArenaClearChecker] ClearArena 90
tag @s remove Countdown
tag @e[x=0,type=marker,tag=ArenaClearChecker] add PlacerClear

scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= $20 constant
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
