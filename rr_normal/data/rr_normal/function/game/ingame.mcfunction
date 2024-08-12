#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#destroy crafting slots
execute as @a unless entity @s[team=!Blue,team=!Yellow] if items entity @s player.crafting.* * at @s run function game:destroycraftingslots

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 11 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck

execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winyellow