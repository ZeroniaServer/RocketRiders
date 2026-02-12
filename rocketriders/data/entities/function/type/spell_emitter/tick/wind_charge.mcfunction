# arguments: motion, origin

$summon breeze_wind_charge ~ ~ ~ {Tags:["wind_spell.new"],Motion:$(motion),Owner:$(origin)}
playsound minecraft:entity.breeze.shoot master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.5 1.5
execute as @e[limit=1,distance=..0.01,type=breeze_wind_charge,tag=wind_spell.new] run function entities:type/wind_spell/init
