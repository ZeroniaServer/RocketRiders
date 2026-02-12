# arguments: motion, origin

$summon small_fireball ~ ~ ~ {Tags:["fire_spell.new"],Motion:$(motion),Owner:$(origin)}
playsound minecraft:entity.blaze.shoot master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.5 1.5
execute as @e[limit=1,distance=..0.01,type=small_fireball,tag=fire_spell.new] run function entities:type/fire_spell/init
