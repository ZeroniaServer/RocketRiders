#spawnables
function rr_powerups:everytick/spawnables

#win
execute if entity @s[tag=!BothWon] if function game:check/blue_portal_broken run function rr_sandbox:game/win
execute if entity @s[tag=!BothWon] if function game:check/yellow_portal_broken run function rr_sandbox:game/win