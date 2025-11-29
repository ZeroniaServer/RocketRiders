function everytick:cluster
function rr_powerups:everytick/spawnables
execute if entity @s[scores={endtimer=1}] run dialog clear @a[x=0]
scoreboard players reset @a[x=0] nomicon

execute if entity @s[scores={endtimer=1}] as @a[x=0] run function custom:unequip_elytra
