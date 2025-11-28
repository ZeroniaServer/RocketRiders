#leave midgame
execute unless predicate rr:is_cubekrowd run function rr_sandbox:game/leavemidgame

#spawnables
function rr_powerups:everytick/spawnables
function everytick:cluster
execute as @a[x=0,predicate=custom:team/any_playing_team,scores={useWand=1..}] run function rr_crusade:game/usewand

#nomicon
scoreboard players enable @a[x=0,predicate=custom:can_use_nomicon] nomicon
scoreboard players reset @a[predicate=!custom:indimension] nomicon
scoreboard players reset @a[x=0,predicate=!custom:can_use_nomicon] nomicon
execute as @a[x=0,predicate=custom:can_use_nomicon,scores={nomicon=1..}] run function rr_sandbox:game/nomicon

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function rr_sandbox:game/winblue
execute if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/blue_portal_broken run function rr_sandbox:game/winyellow
