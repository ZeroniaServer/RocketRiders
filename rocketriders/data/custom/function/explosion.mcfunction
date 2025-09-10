# arguments: power, modifiers

$data modify storage rocketriders:main explosion set value {explosion_power:$(power),modifiers:{copy_name:false,nbt:{},run:"function custom:nothing",force_particle_emitter:true,can_crack_deepslate_bricks:true,trigger_vortices:true,ramp_power_near_portals:"auto",secondary_origin:""}}
$data modify storage rocketriders:main explosion.modifiers merge value $(modifiers)
data modify storage rocketriders:main explosion.modifiers.nbt merge value {data:{explosion:{}}}

# Preserve pre_death_projectile
execute if predicate custom:pre_death_projectile run data modify storage rocketriders:main explosion.modifiers.nbt.data.pre_death_projectile set value true

# Set explosion power
execute store result score $intended_explosion_power var store result score $actual_explosion_power var run data get storage rocketriders:main explosion.explosion_power
execute if predicate game:modifiers/clutter_collector/on if predicate custom:in_clutter_collection_zone run scoreboard players set $actual_explosion_power var 0
execute if score $actual_explosion_power var matches 1.. unless predicate game:portal_type/none if data storage rocketriders:main explosion.modifiers{ramp_power_near_portals:"auto"} run function custom:_explosion_/ramp_power
execute store result storage rocketriders:main explosion.modifiers.nbt.ExplosionRadius float 1 run scoreboard players get $actual_explosion_power var

# Set name
execute if data storage rocketriders:main explosion.modifiers.name run data modify storage rocketriders:main explosion.name set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
execute if data storage rocketriders:main explosion.modifiers.name run data modify storage rocketriders:main explosion.name.extra[0].extra[0] set from storage rocketriders:main explosion.modifiers.name
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s run data modify storage rocketriders:main explosion.name set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:{selector:"@s"}}]}]}]}
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s[type=player] run data modify storage rocketriders:main explosion.name.extra[0].extra[0] set from block 0 184 -16 Items[0].components.minecraft:custom_name
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} if entity @s[type=!player] run data modify storage rocketriders:main explosion.name.extra[0].extra[0] set from block 0 184 -16 Items[0].components.minecraft:custom_name.hover_event.name
data modify storage rocketriders:main explosion.modifiers.nbt.CustomName set from storage rocketriders:main explosion.name

# Assign kill credit
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary on origin on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.damage_origin.primary set from entity @s UUID
execute if data storage rocketriders:main explosion.modifiers.secondary_origin unless data storage rocketriders:main explosion.modifiers{secondary_origin:""} run function custom:_explosion_/get_secondary_origin_uuid with storage rocketriders:main explosion.modifiers

# Create creeper and trigger vortices
execute unless data storage rocketriders:main explosion.modifiers{trigger_vortices:true} run data modify storage rocketriders:main explosion.modifiers.vortex_trigger_radius set value 0
execute if data storage rocketriders:main explosion.modifiers{trigger_vortices:true} store result storage rocketriders:main explosion.modifiers.vortex_trigger_radius float 1.33333 run scoreboard players get $intended_explosion_power var
summon creeper ~ ~ ~ {Tags:["explosion.this","explosion"],data:{explosion:{}},NoGravity:true,Fuse:0,Silent:true,CustomNameVisible:false,NoAI:true,CanPickUpLoot:false,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0}],active_effects:[]}
execute as @e[distance=..0.01,type=creeper,tag=explosion.this,limit=1] if function custom:_explosion_/remove_tag run function custom:_explosion_/modify with storage rocketriders:main explosion.modifiers

# Force particle emitter if the power is less than 2
execute if score $actual_explosion_power var matches ..1 if data storage rocketriders:main explosion.modifiers{force_particle_emitter:true} run particle minecraft:explosion_emitter

# Crusade cracks
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks if predicate rr_crusade:tnt_near_castle if data storage rocketriders:main explosion.modifiers{can_crack_deepslate_bricks:true} run function custom:_explosion_/crack_deepslate_bricks

return 1
