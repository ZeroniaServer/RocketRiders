## Return to player if used upon respawning
scoreboard players set $return var 0
execute on origin if score @s time_since_respawn matches ..10 run scoreboard players set $return var 1
execute if score $return var matches 1 run return run function everytick:lava_splash/return_item

## Custom Motion
data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
loot replace entity @s contents loot items:util/lava_splash
tag @s add lava_splash
tag @s add self
execute on origin at @s anchored eyes run tp @e[x=0,type=#custom:potion,tag=self] @s
function everytick:projectile
tag @s add motioned
tag @s remove self
