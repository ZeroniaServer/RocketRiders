# Teleport to owner
tag @s add spell_emitter.this
execute on origin at @s anchored eyes positioned ^ ^ ^0.5 run tp @e[limit=1,tag=spell_emitter.this] ~ ~ ~ ~ ~
tag @s remove spell_emitter.this

# Instantly transform into a damage spell entity if spell type is damage
execute if entity @s[tag=spell_type.damage] run data remove entity @s data.spell_emitter
execute if entity @s[tag=spell_type.damage] run return run function entities:type/spell/init

# Emit projectiles
execute if score @s entity.age matches 1 positioned as @s run function entities:type/spell_emitter/tick/emit
execute if score @s entity.age matches 6 positioned as @s run function entities:type/spell_emitter/tick/emit
execute if score @s entity.age matches 11 positioned as @s run function entities:type/spell_emitter/tick/emit

# Expire
execute if score @s entity.age matches 11.. run kill @s
