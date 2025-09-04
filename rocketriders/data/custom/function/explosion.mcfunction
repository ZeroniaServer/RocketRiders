# arguments: power, modifiers

# Summon creeper
summon creeper ~ ~ ~ {Tags:["explosion.this","explosion"],data:{explosion:{}},NoGravity:true,Fuse:0,Silent:true,CustomNameVisible:false,NoAI:true,CanPickUpLoot:false,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0}],active_effects:[]}

# Get modifiers
$data modify storage rocketriders:main explosion set value {explosion_power:$(power),modifiers:{copy_name:false,nbt:{},run:"function custom:nothing",force_particle_emitter:true,can_crack_deepslate_bricks:true,ramp_power_near_portals:"auto"}}
$data modify storage rocketriders:main explosion.modifiers merge value $(modifiers)

# Set explosion power
execute store result score $explosion_power var run data get storage rocketriders:main explosion.explosion_power
execute if score $explosion_power var matches 1.. if predicate game:modifiers/clutter_collector/on if predicate custom:in_clutter_collection_zone run scoreboard players set $explosion_power var 0
execute if score $explosion_power var matches 1.. unless predicate game:portal_type/none if data storage rocketriders:main explosion.modifiers{ramp_power_near_portals:"auto"} run function custom:_explosion_/ramp_power
execute store result storage rocketriders:main explosion.modifiers.nbt.ExplosionRadius float 1 run scoreboard players get $explosion_power var

# Copy name
execute if data storage rocketriders:main explosion.modifiers{copy_name:true} run data modify storage rocketriders:main explosion.modifiers.nbt.CustomName set from entity @s CustomName

# Remove hover event and insertion from death message
data modify storage rocketriders:main explosion.name set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
data modify storage rocketriders:main explosion.name.extra[0].extra[0] set from storage rocketriders:main explosion.modifiers.nbt.CustomName
data modify storage rocketriders:main explosion.modifiers.nbt.CustomName set from storage rocketriders:main explosion.name

# Assign kill credit
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin on origin on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin on origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin if entity @s[type=player] run data modify storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin set from entity @s UUID

# Modify creeper
execute as @e[distance=..0.01,type=creeper,tag=explosion.this,limit=1] if function custom:_explosion_/remove_tag run function custom:_explosion_/modify with storage rocketriders:main explosion.modifiers

# Force particle emitter if the power is less than 2
execute if score $explosion_power var matches ..1 if data storage rocketriders:main explosion.modifiers{force_particle_emitter:true} run particle minecraft:explosion_emitter

# Crusade cracks
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks if predicate rr_crusade:tnt_near_castle if data storage rocketriders:main explosion.modifiers{can_crack_deepslate_bricks:true} run function custom:_explosion_/crack_deepslate_bricks

return 1
