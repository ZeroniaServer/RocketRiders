function everytick:leave_game
function game:gamestart
execute as @e[tag=GameStarted] at @s run function game:ingame
function everytick:regen_system
execute if entity @e[tag=Selection,scores={setvision=1..}] run effect give @a night_vision 1000000 100 true
effect give @a saturation 1000000 0 true
function everytick:bookwarp
function everytick:cancel_utility
function everytick:player_portal
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,scores={doStacking=0..1}] run function items:antidupe
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function items:wrongarrows
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,scores={doStacking=1}] run scoreboard players set @s HasArrows 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,scores={doStacking=2}] run function items:antiantidupe
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s invCount 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=doHotbarLimit] run function items:invcount
execute as @a[team=Lobby] run function everytick:score_reset
function everytick:general_settings_or_hotfixes
function custom:joinpad_enddimension
function everytick:infobar
execute as @e[tag=GameEnd] run function game:gameend
kill @e[tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[tag=Selection] unless entity @s[tag=EditedSelections] run function arenaclear:customizer

#lobby credits
execute unless entity @e[tag=Selection,tag=GameStarted] run function lobby:credits/cycle