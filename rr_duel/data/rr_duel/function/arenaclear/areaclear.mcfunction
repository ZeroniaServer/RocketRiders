tag @s remove FakeGameEnd
scoreboard players set @s fakeendtimer 0

function game:set_phase/match.pause
function arenaclear:brute_force/start

tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
tp @a[x=0,predicate=custom:team/blue] -95 202 60 0 0
tp @a[x=0,predicate=custom:team/yellow] -95 202 96 180 0
tp @a[x=0,predicate=custom:team/spectator] -95 213 78 90 90
fill -89 202 66 -101 211 66 minecraft:barrier strict
fill -89 202 90 -101 211 90 minecraft:barrier strict
execute as @a[x=0,predicate=custom:team/blue,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,predicate=custom:team/yellow,predicate=custom:is_on_fire] at @s run function game:putoutfire
gamemode adventure @a[x=0,predicate=custom:team/any_arena_team]

summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

function items:tetrisreset

execute as @e[x=0,type=!player,predicate=custom:in_arena,predicate=!custom:has_vehicle] run function custom:entity/kill_entity_and_passengers

scoreboard players set @e[x=0,type=marker,tag=ArenaClearChecker] ClearArena 90
tag @e[x=0,type=marker,tag=ArenaClearChecker] add PlacerClear

execute store result score @s MaxItemTime run function game:config/get_item_delay_ticks
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
