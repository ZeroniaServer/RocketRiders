# arguments: motion, origin

$summon small_fireball ~ ~ ~ {Tags:["spell","spell_type.fire","spell.new"],Motion:$(motion),Owner:$(origin)}
playsound minecraft:entity.blaze.shoot master @a[x=0,predicate=custom:belowroof] ~ ~ ~ 0.5 1.5
execute as @e[limit=1,distance=..0.01,type=small_fireball,tag=spell.new] run function entities:spell/init
