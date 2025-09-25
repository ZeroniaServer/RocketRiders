# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/spell_emitter] run return fail

# Do nothing if no spell type is set
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run particle minecraft:instant_effect{color:0x000000} ~ ~ ~ 1 1 1 0 50
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run particle minecraft:instant_effect{color:0xFF00FF} ~ ~ ~ 1 1 1 0 50
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run return run kill @s

## Set up data
data modify entity @s data.spell_emitter set value {}

data modify storage rocketriders:main spell.name set value "Spell Emitter"

## Spawn behaviour
#execute if entity @s[tag=spell_type.fire] run particle minecraft:instant_effect{color:0xFF7F00} ~ ~ ~ 1 1 1 0 10
#execute if entity @s[tag=spell_type.fire] run particle minecraft:instant_effect{color:0x7F1F00} ~ ~ ~ 1 1 1 0 10

#execute if entity @s[tag=spell_type.health] run particle minecraft:instant_effect{color:0xFF007F} ~ ~ ~ 1 1 1 0 10
#execute if entity @s[tag=spell_type.health] run particle minecraft:instant_effect{color:0x7F0000} ~ ~ ~ 1 1 1 0 10

#execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x7F7F7F} ~ ~ ~ 1 1 1 0 10
#execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x3F3F3F} ~ ~ ~ 1 1 1 0 10

#execute if entity @s[tag=spell_type.wind] run particle minecraft:instant_effect{color:0x7FFFFF} ~ ~ ~ 1 1 1 0 10
#execute if entity @s[tag=spell_type.wind] run particle minecraft:instant_effect{color:0x3F7F7F} ~ ~ ~ 1 1 1 0 10

# Instantly change to health spell entity
execute if entity @s[tag=spell_type.health] run data remove entity @s data.spell_emitter
execute if entity @s[tag=spell_type.health] run return run function entities:spell/init
