#leave midgame
execute unless predicate rr:is_cubekrowd run function game:leavemidgame

#custom util items
function everytick:cluster

#platform
bossbar set rr:startgame players @a[x=0,team=Lobby]
function rr_swap:baseswap/platform

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_swap:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_swap:items/minutemix

#Respawn handling
execute as @e[x=0,type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute as @e[x=0,type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_swap:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function game:winblue
execute if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/blue_portal_broken run function game:winyellow
