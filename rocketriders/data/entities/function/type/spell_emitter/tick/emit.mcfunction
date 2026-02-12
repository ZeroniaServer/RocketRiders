# Get projectile data
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.05
execute if predicate custom:coin_flip positioned as @s run tp @s ^0.0015 ^ ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^-0.0015 ^ ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^0.0015 ^ ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^-0.0015 ^ ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^ ^0.0015 ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^ ^-0.0015 ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^ ^0.0015 ^
execute if predicate custom:coin_flip positioned as @s run tp @s ^ ^-0.0015 ^
data modify storage rocketriders:main spell_emitter.motion set from entity @s Pos
data modify storage rocketriders:main spell_emitter.origin set from entity @s Owner

# Return to origin position
tp @s ~ ~ ~

# Emit projectile
execute if entity @s[tag=spell_type.fire] run function entities:type/spell_emitter/tick/small_fireball with storage rocketriders:main spell_emitter
execute if entity @s[tag=spell_type.wind] run function entities:type/spell_emitter/tick/wind_charge with storage rocketriders:main spell_emitter
