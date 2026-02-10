# Fail if the nearest vortex to this projectile is not this vortex (the nearest vortex to the projectile should be the one that gets triggered by it, not the first vortex that gets arbitrarily processed)
execute positioned as @s as @n[predicate=entities:type/vortex/brain] unless entity @s[tag=vortex.this] run return fail

# Otherwise, succeed and destroy projectile
execute if entity @s[type=#arrows] run kill @s
execute if entity @s[type=fireball] run kill @s
execute if entity @s[type=small_fireball] run kill @s
execute if entity @s[type=dragon_fireball] run kill @s

execute if entity @s[type=#custom:wind_charge] run particle minecraft:gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena]
execute if entity @s[type=#custom:wind_charge] at @s run playsound minecraft:entity.breeze.wind_burst master @a[x=0]
execute if entity @s[type=#custom:wind_charge] run kill @s

execute if entity @s[type=snowball,predicate=entities:type/shield_projectile] run function entities:type/shield_projectile/actions/break
execute if entity @s[type=snowball,predicate=entities:type/icbm] run function entities:type/icbm/actions/explode
execute if entity @s[type=snowball,predicate=entities:type/stinging_shield_projectile] run function entities:type/stinging_shield_projectile/actions/break

execute if entity @s[type=lingering_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] facing entity @s feet run summon minecraft:area_effect_cloud ^ ^ ^0.5 {potion_contents:{potion:"minecraft:water"}}
execute if entity @s[type=lingering_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:awkward"}}}}] facing entity @s feet run summon minecraft:area_effect_cloud ^ ^ ^0.5 {potion_contents:{potion:"minecraft:awkward",custom_color:16747545}}
execute if entity @s[type=#custom:potion] positioned as @s run playsound minecraft:entity.splash_potion.break neutral @a[x=0] ~ ~ ~
execute if entity @s[type=#custom:potion] run kill @s

execute if entity @s[type=ender_pearl] facing entity @s feet on origin run tp @s ^ ^ ^0.5
execute if entity @s[type=ender_pearl] on origin positioned as @s run playsound minecraft:entity.player.teleport player @a[x=0]
execute if entity @s[type=ender_pearl,predicate=!entities:type/canopy_projectile/body] run kill @s
execute if entity @s[type=ender_pearl,predicate=entities:type/canopy_projectile/body] run function entities:type/canopy_projectile/actions/break

execute if entity @s[type=trident] run data modify entity @s DealtDamage set value true

execute if entity @s[type=firework_rocket] run kill @s

return 1
