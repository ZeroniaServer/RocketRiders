# Get motion vector (1m/s)
execute positioned 0. 0. 0. run tp @s ^ ^ ^0.05
data modify storage rocketriders:main spell_emitter.motion set from entity @s Pos
data modify storage rocketriders:main spell_emitter.rotation set from entity @s Rotation
tp @s ~ ~ ~
data modify storage rocketriders:main spell_emitter.origin set from entity @s Owner

# Return to origin position
tp @s ~ ~ ~

# Emit projectile
execute if score @s entity.age matches 1 if entity @s[tag=spell_type.damage] positioned as @s run function entities:spell_emitter/tick/wither_skull with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 1 if entity @s[tag=spell_type.fire] positioned as @s run function entities:spell_emitter/tick/small_fireball with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 1 if entity @s[tag=spell_type.wind] positioned as @s run function entities:spell_emitter/tick/wind_charge with storage rocketriders:main spell_emitter

execute if score @s entity.age matches 6 if entity @s[tag=spell_type.damage] positioned as @s run function entities:spell_emitter/tick/wither_skull with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 6 if entity @s[tag=spell_type.fire] positioned as @s run function entities:spell_emitter/tick/small_fireball with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 6 if entity @s[tag=spell_type.wind] positioned as @s run function entities:spell_emitter/tick/wind_charge with storage rocketriders:main spell_emitter

execute if score @s entity.age matches 11 if entity @s[tag=spell_type.damage] positioned as @s run function entities:spell_emitter/tick/wither_skull with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 11 if entity @s[tag=spell_type.fire] positioned as @s run function entities:spell_emitter/tick/small_fireball with storage rocketriders:main spell_emitter
execute if score @s entity.age matches 11 if entity @s[tag=spell_type.wind] positioned as @s run function entities:spell_emitter/tick/wind_charge with storage rocketriders:main spell_emitter
