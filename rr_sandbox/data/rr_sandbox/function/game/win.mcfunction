##Record tags
tag @s add BothWon

##Close dialogs
dialog clear @a[x=0]

##Effects
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s slowness
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s levitation
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s wither
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s blindness
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s instant_health 1 100 true
execute as @a[x=0,predicate=custom:team/blue] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/yellow] at @s run stopsound @s
execute as @a[x=0] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 100 1
execute unless predicate game:game_rules/disable_titles/on run title @a[x=0,predicate=!custom:team/lobby] title ["",{"text":"Sandbox Ended","color":"red","bold":false}]
execute unless predicate game:game_rules/disable_titles/on run title @a[x=0,predicate=!custom:team/lobby] subtitle ""
execute unless predicate game:game_rules/disable_titles/on run tellraw @a[x=0] ["",{"text":"Sandbox Ended","color":"red","bold":true}]

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID

##Change Phase
function game:set_phase/match.closing.tie_window
