# arguments: motion, rotation, origin

$summon wither_skull ~ ~ ~ {Tags:["spell","spell_type.damage","spell.new"],Motion:$(motion),Rotation:$(rotation),Owner:$(origin)}
playsound minecraft:entity.wither.shoot master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.5 1.5
execute as @e[limit=1,distance=..0.01,type=wither_skull,tag=spell.new] run function entities:type/spell/init
