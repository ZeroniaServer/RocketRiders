# arguments: motion, origin

$summon breeze_wind_charge ~ ~ ~ {Tags:["spell","spell_type.wind","spell.new"],Motion:$(motion),Owner:$(origin)}
playsound minecraft:entity.breeze.shoot master @a[x=0,predicate=custom:belowroof] ~ ~ ~ 0.5 1.5
execute as @e[limit=1,distance=..0.01,type=breeze_wind_charge,tag=spell.new] run function entities:spell/init
