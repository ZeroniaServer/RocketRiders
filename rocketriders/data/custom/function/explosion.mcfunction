# arguments: r, modifiers

# Summon creeper
$summon creeper ~ ~ ~ {ExplosionRadius:$(r),Tags:["summon.this","explosion"],NoGravity:true,Fuse:0,Silent:true,CustomNameVisible:false,NoAI:true,CanPickUpLoot:false,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0}],active_effects:[]}

# Get modifiers
data modify storage rocketriders:main summon set value {nbt:{},run:"function custom:nothing"}
$data modify storage rocketriders:main summon merge value $(modifiers)

# Remove hover event and insertion from death message
data modify storage rocketriders:main summon.name set value {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:["an explosion"]}]}
data modify storage rocketriders:main summon.name.extra[0].extra[0] set from storage rocketriders:main summon.nbt.CustomName
data modify storage rocketriders:main summon.nbt.CustomName set from storage rocketriders:main summon.name

# Modify creeper
execute as @e[distance=..0.01,type=creeper,tag=summon.this,limit=1] if function custom:summon/remove_tag run function custom:summon/modify with storage rocketriders:main summon

return 1
