##Regeneration timer - regenerates health at a customized rate
scoreboard players add @s[scores={regenTimer=0..59}] regenTimer 1
execute if entity @s[scores={regenTimer=10}] run function custom:game_rules/natural_health_regeneration/on
execute if entity @s[scores={regenTimer=20}] run function custom:game_rules/natural_health_regeneration/off
execute if entity @s[scores={regenTimer=40}] run function custom:game_rules/natural_health_regeneration/on
execute if entity @s[scores={regenTimer=50}] run function custom:game_rules/natural_health_regeneration/off
scoreboard players set @s[scores={regenTimer=60..}] regenTimer 0
