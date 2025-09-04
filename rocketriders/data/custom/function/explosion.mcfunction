# arguments: power, modifiers

$data modify storage rocketriders:main explosion set value {explosion_power:$(power),modifiers:{copy_name:false,nbt:{},run:"function custom:nothing",force_particle_emitter:true,can_crack_deepslate_bricks:true,ramp_power_near_portals:"auto"}}
$data modify storage rocketriders:main explosion.modifiers merge value $(modifiers)

# Set explosion power
execute store result score $intended_explosion_power var store result score $actual_explosion_power var run data get storage rocketriders:main explosion.explosion_power
execute if predicate game:modifiers/clutter_collector/on if predicate custom:in_clutter_collection_zone run scoreboard players set $actual_explosion_power var 0
execute if score $actual_explosion_power var matches 1.. unless predicate game:portal_type/none if data storage rocketriders:main explosion.modifiers{ramp_power_near_portals:"auto"} run function custom:_explosion_/ramp_power
execute store result storage rocketriders:main explosion.modifiers.nbt.ExplosionRadius float 1 run scoreboard players get $actual_explosion_power var

# Copy name
execute unless data storage rocketriders:main explosion.modifiers.nbt.CustomName run data modify storage rocketriders:main explosion.modifiers.nbt.CustomName set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:{selector:"@s"}}]}]}]}
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.CustomName.extra[0].extra[0] set from block 0 184 -16 Items[0].components.minecraft:custom_name
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s[type=!player] run data modify storage rocketriders:main explosion.modifiers.nbt.CustomName.extra[0].extra[0] set from block 0 184 -16 Items[0].components.minecraft:custom_name.hover_event.name

# Assign kill credit
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin on origin on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID

# Create creeper and trigger vortices
scoreboard players operation $vortex_trigger_radius var = $intended_explosion_power var
scoreboard players operation $vortex_trigger_radius var *= $400 constant
execute store result storage rocketriders:main explosion.modifiers.vortex_trigger_radius float 0.01 run scoreboard players operation $vortex_trigger_radius var /= $3 constant
summon creeper ~ ~ ~ {Tags:["explosion.this","explosion"],data:{explosion:{}},NoGravity:true,Fuse:0,Silent:true,CustomNameVisible:false,NoAI:true,CanPickUpLoot:false,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0}],active_effects:[]}
execute as @e[distance=..0.01,type=creeper,tag=explosion.this,limit=1] if function custom:_explosion_/remove_tag run function custom:_explosion_/modify with storage rocketriders:main explosion.modifiers

# Force particle emitter if the power is less than 2
execute if score $actual_explosion_power var matches ..1 if data storage rocketriders:main explosion.modifiers{force_particle_emitter:true} run particle minecraft:explosion_emitter

# Crusade cracks
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks if predicate rr_crusade:tnt_near_castle if data storage rocketriders:main explosion.modifiers{can_crack_deepslate_bricks:true} run function custom:_explosion_/crack_deepslate_bricks

return 1
