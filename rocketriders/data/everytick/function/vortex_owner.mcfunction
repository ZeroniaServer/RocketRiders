##Identify egg as a Vortex & apply custom name to the egg

scoreboard players set $team var -1
execute store success score $team var on origin if entity @s[team=!Blue]
execute if score $team var matches 0 run tag @s add BlueVortex
execute if score $team var matches 1 run tag @s add YellowVortex

function custom:set_entity_name_with_owner {text_component:{text:"Vortex"}}

#Veteran tracking
execute on origin run advancement grant @s[tag=!VortexSpawned] only achievements:rr_challenges/veteran VortexSpawned
execute on origin run tag @s add VortexSpawned
