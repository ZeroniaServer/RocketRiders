#leave midgame
function game:leavemidgame

#general
function rr_pve:items/spawnitems
execute unless entity @e[x=0,type=armor_stand,tag=Bot] run function rr_pve:game/prepbots

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function game:winboth
execute if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function game:winblue
execute if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/blue_portal_broken run function rr_pve:game/winyellow
