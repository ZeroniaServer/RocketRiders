# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/vortex] run return fail

## Set up data
data modify entity @s data.vortex set value {brain:{}}
execute if score @s entity.age matches 0..19 run scoreboard players remove @s entity.age 20
execute unless score @s entity.age matches -20..-1 run scoreboard players set @s entity.age 0

execute unless predicate game:game_rules/impact_utilities/on if entity @s[tag=vortex.feathered] run tag @s add vortex.neutral_landmine
execute if predicate game:game_rules/impact_utilities/on if predicate {condition:"minecraft:random_chance",chance:0.01} run tag @s add vortex.feathered
execute if predicate game:game_rules/impact_utilities/on if entity @s[tag=vortex.feathered] if predicate rr:has_achievements on origin run advancement grant @s[predicate=custom:team/any_playing_team] only achievements:rr_challenges/zzzzzzhuh

data modify storage rocketriders:main vortex.name set value "a Vortex"
execute if entity @s[tag=vortex.feathered] run data modify storage rocketriders:main vortex.name set value "a... Feathery Vortex?"
execute unless entity @s[tag=vortex.feathered] on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Vortex"], write_to:"storage rocketriders:main vortex.name"}
data modify entity @s CustomName set from storage rocketriders:main vortex.name

## Spawn behaviour
execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~

execute store success score $feathered var if entity @s[tag=vortex.feathered]
tag @s add vortex.this
execute at @s summon item_display run function entities:vortex/init/body
tag @s remove vortex.this

execute on origin run tag @s add vortex.origin 
execute if score $feathered var matches 0 at @s run playsound minecraft:entity.shulker.hurt_closed master @a[x=0,tag=vortex.origin] ~ ~ ~ 0.7 0 0.25
execute if score $feathered var matches 0 at @s run playsound minecraft:block.sculk_sensor.clicking master @a[x=0,tag=vortex.origin] ~ ~ ~ 1 1 0.25
execute if score $feathered var matches 1 at @s run playsound minecraft:entity.chicken.hurt master @a[x=0,tag=vortex.origin] ~ ~ ~ 2 0 0.25

execute if score $feathered var matches 0 at @s run playsound minecraft:entity.shulker.hurt_closed master @a[x=0,tag=!vortex.origin] ~ ~ ~ 0.7 0 0.05
execute if score $feathered var matches 0 at @s run playsound minecraft:block.sculk_sensor.clicking master @a[x=0,tag=!vortex.origin] ~ ~ ~ 1 1 0.05
execute if score $feathered var matches 1 at @s run playsound minecraft:entity.chicken.hurt master @a[x=0,tag=!vortex.origin] ~ ~ ~ 2 0 0.05
execute on origin run tag @s remove vortex.origin
