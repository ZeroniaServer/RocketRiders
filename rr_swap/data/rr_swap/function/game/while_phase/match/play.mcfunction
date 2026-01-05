#custom util items
function everytick:cluster

#platform
bossbar set rr:startgame players @a[x=0,predicate=custom:team/lobby]
function rr_swap:baseswap/platform

#Item RNG
scoreboard players add @s RandomItem 1
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function rr_swap:items/giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function rr_swap:items/minutemix

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function game:winblue
execute if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/blue_portal_broken run function game:winyellow
