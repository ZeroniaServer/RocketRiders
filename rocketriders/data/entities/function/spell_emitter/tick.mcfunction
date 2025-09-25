
# Teleport to owner
tag @s add spell_emitter.this
execute on origin at @s anchored eyes positioned ^ ^ ^ run tp @e[limit=1,tag=spell_emitter.this] ~ ~ ~ ~ ~
tag @s remove spell_emitter.this

# Emit projectiles
execute positioned as @s run function entities:spell_emitter/tick/emit

# Expire
execute if score @s entity.age matches 11.. run kill @s
