function game:gamestart
execute as @e[tag=GameStarted] at @s run function game:ingame
function everytick:regen_system
execute if entity @e[tag=Selection,scores={setvision=1..}] run effect give @a night_vision 1000000 100 true
effect give @a saturation 1000000 0 true
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function items:wrongarrows
execute as @a[team=Lobby] run function everytick:level_actionbar
function everytick:bookwarp
function everytick:cancel_utility
function everytick:leave_game
function everytick:score_reset
function everytick:general_settings_or_hotfixes
function custom:joinpad_enddimension
function everytick:infobar
execute as @e[tag=GameEnd] run function game:gameend
kill @e[tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[tag=Selection] unless entity @s[tag=EditedSelections] run function arenaclear:customizer