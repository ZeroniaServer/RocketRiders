# Fail if the nearest vortex to this projectile is not this vortex (the nearest vortex to the projectile should be the one that gets triggered by it, not the first vortex that gets arbitrarily processed)
execute positioned as @s as @n[predicate=entities:vortex/brain] unless entity @s[tag=vortex.this] run return fail

# Otherwise, succeed and destroy projectile
execute if entity @s[type=#arrows] run kill @s
execute if entity @s[type=fireball] run kill @s
execute if entity @s[type=small_fireball] run kill @s
execute if entity @s[type=dragon_fireball] run kill @s
execute if entity @s[type=snowball] run kill @s
execute if entity @s[type=egg] run kill @s

execute if entity @s[type=lingering_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] facing entity @s feet run summon minecraft:area_effect_cloud ^ ^ ^0.5 {potion_contents:{potion:"minecraft:water"}}
execute if entity @s[type=lingering_potion,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:awkward"}}}}] facing entity @s feet run summon minecraft:area_effect_cloud ^ ^ ^0.5 {potion_contents:{potion:"minecraft:awkward",custom_color:16747545}}
execute if entity @s[type=#custom:potion] positioned as @s run playsound minecraft:entity.splash_potion.break neutral @a[x=0] ~ ~ ~
execute if entity @s[type=#custom:potion] run kill @s

execute if entity @s[type=ender_pearl] facing entity @s feet on origin run tp @s ^ ^ ^0.5
execute if entity @s[type=ender_pearl] on origin positioned as @s run playsound minecraft:entity.player.teleport player @a[x=0]
execute if entity @s[type=ender_pearl] run kill @s

execute if entity @s[type=trident] run data modify entity @s DealtDamage set value true

execute if entity @s[type=firework_rocket] run kill @s

return 1
