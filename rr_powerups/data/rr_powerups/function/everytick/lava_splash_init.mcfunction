data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
loot replace entity @s contents loot items:util/splash_lava
tag @s add lavasplash
tag @s add self
execute on origin at @s anchored eyes run tp @e[x=0,type=#custom:potion,tag=self] @s
tag @s remove self
function everytick:projectile
tag @s add motioned