data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
loot replace entity @s contents loot items:util/splash
tag @s add splash
tag @s add self
execute on origin at @s anchored eyes run tp @e[x=0,type=#custom:potion,tag=self] @s
function everytick:projectile
tag @s add motioned
tag @s remove self