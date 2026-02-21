# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/spell_emitter] run return fail

# Instantly die if not play phase
execute unless predicate game:phase/match/play run return run kill @s

# Instantly die if no origin exists
scoreboard players set $origin_exists var 0
execute on origin run scoreboard players set $origin_exists var 1
execute if score $origin_exists var matches 0 run return run kill @s

# Instantly die if no spell type is set
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] at @s run particle minecraft:instant_effect{color:0x000000} ~ ~ ~ 1 1 1 0 50
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] at @s run particle minecraft:instant_effect{color:0xFF00FF} ~ ~ ~ 1 1 1 0 50
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run return run kill @s

## Set up data
data modify entity @s data.spell_emitter set value {}

data modify storage rocketriders:main spell_emitter.name set value "Spell Emitter"
