# arguments: power, modifiers

# Summon creeper
summon creeper ~ ~ ~ {Tags:["summon.this","explosion"],data:{explosion:{}},NoGravity:true,Fuse:0,Silent:true,CustomNameVisible:false,NoAI:true,CanPickUpLoot:false,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0}],active_effects:[]}

# Get modifiers
$data modify storage rocketriders:main summon set value {explosion_power:$(power),modifiers:{copy_name:false,nbt:{},run:"function custom:nothing",force_explosion_emitter:true}}
$data modify storage rocketriders:main summon.modifiers merge value $(modifiers)
data modify storage rocketriders:main summon.modifiers.nbt.ExplosionPower set from storage rocketriders:main summon.explosion_power

# Copy name
execute if data storage rocketriders:main summon.modifiers{copy_name:true} run data modify storage rocketriders:main summon.modifiers.nbt.CustomName set from entity @s CustomName

# Remove hover event and insertion from death message
data modify storage rocketriders:main summon.name set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
data modify storage rocketriders:main summon.name.extra[0].extra[0] set from storage rocketriders:main summon.modifiers.nbt.CustomName
data modify storage rocketriders:main summon.modifiers.nbt.CustomName set from storage rocketriders:main summon.name

# Assign kill credit
execute unless data storage rocketriders:main summon.modifiers.nbt.data.explosion.origin on origin on origin if entity @s[type=player] run data modify storage rocketriders:main summon.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main summon.modifiers.nbt.data.explosion.origin on origin if entity @s[type=player] run data modify storage rocketriders:main summon.modifiers.nbt.data.explosion.origin set from entity @s UUID
execute unless data storage rocketriders:main summon.modifiers.nbt.data.explosion.origin if entity @s[type=player] run data modify storage rocketriders:main summon.modifiers.nbt.data.explosion.origin set from entity @s UUID

# Modify creeper
execute as @e[distance=..0.01,type=creeper,tag=summon.this,limit=1] if function custom:_summon_/remove_tag run function custom:_summon_/modify with storage rocketriders:main summon.modifiers

# Force explosion emitter if the power is less than 2
execute store result score $explosion_power var run data get storage rocketriders:main summon.explosion_power
execute if score $explosion_power var matches ..1 if data storage rocketriders:main summon.modifiers{force_explosion_emitter:true} run particle minecraft:explosion_emitter

# Crusade cracks
execute unless predicate game:gamemode_components/explosions_crack_deepslate_bricks run return 1
execute unless predicate rr_crusade:tnt_near_castle run return 1

scoreboard players operation $radius var = $explosion_power var
scoreboard players operation $radius var *= $26 constant
scoreboard players operation $radius var /= $15 constant
execute if score $radius var matches 0..2 run function rr_crusade:game/tnt_cracks_small
execute if score $radius var matches 3..6 run function rr_crusade:game/tnt_cracks
execute if score $radius var matches 7..10 run function rr_crusade:game/tnt_cracks_large

return 1
