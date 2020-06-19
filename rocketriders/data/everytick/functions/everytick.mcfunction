function everytick:new_player
function everytick:leave_game
execute as @e[tag=Selection] run function everytick:general_settings_or_hotfixes
execute as @e[tag=Selection] run function everytick:team_count
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s invCount 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=doHotbarLimit] run function items:invcount
execute as @e[tag=Selection] run function game:gamestart
execute as @e[tag=GameStarted] at @s run function game:ingame
execute as @e[tag=Selection] run function everytick:regen_system
execute if entity @e[tag=Selection,scores={setvision=1..}] run effect give @a night_vision 1000000 100 true
effect give @a saturation 1000000 0 true
function everytick:bookwarp
function everytick:cancel_utility
function everytick:player_portal
execute as @a unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] at @s if entity @s[y=-2000,dy=1980,scores={ThrowPlat=..0}] run function game:void
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=!doStacking] run function items:antidupe
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function items:wrongarrows/wrongarrows
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=doStacking] run function items:antiantidupe
execute as @a[team=Lobby] run function everytick:score_reset
execute as @e[tag=GameEnd] run function game:gameend
kill @e[tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[tag=Selection] unless entity @s[tag=EditedSettings] run function arenaclear:customizer

#lobby credits
execute unless entity @e[tag=Selection,tag=GameStarted] run function lobby:credits/cycle

#Ties
execute as @e[tag=SuddenDeath] run function game:suddendeath