#spawnables
function rr_powerups:everytick/spawnables
function everytick:cluster

#nomicon
scoreboard players enable @a[x=0,predicate=custom:can_use_nomicon] nomicon
scoreboard players reset @a[predicate=!custom:indimension] nomicon
scoreboard players reset @a[x=0,predicate=!custom:can_use_nomicon] nomicon
execute as @a[x=0,predicate=custom:can_use_nomicon,scores={nomicon=1..}] run function rr_sandbox:game/nomicon

#win
execute if entity @s[tag=!BothWon] if function game:check/blue_portal_broken run function rr_sandbox:game/win
execute if entity @s[tag=!BothWon] if function game:check/yellow_portal_broken run function rr_sandbox:game/win