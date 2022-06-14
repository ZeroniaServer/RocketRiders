#Blue: team round wins
tag @a remove Winner
tag @a remove Loser
tag @a[team=Blue] add Winner
tag @a[team=Yellow] add Loser
tag @s remove YellowWon
tag @s add BlueWon
tag @s add CriteriaTrue
scoreboard players add Blue: RoundsWon 1

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute unless score Blue: RoundsWon matches 2.. if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run function achievements:aftergameblue
execute unless score Blue: RoundsWon matches 2.. run function achievements:scoresreset
execute unless score Blue: RoundsWon matches 2.. run kill @e[type=tnt]
execute unless score Blue: RoundsWon matches 2.. as @a[team=Blue] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a[team=Yellow] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0
execute unless score Blue: RoundsWon matches 2.. run title @a[team=!Lobby] title [{"text":"Team Blue","bold":false,"color":"blue"},{"text":" scored!","bold":false,"color":"green"}]
execute unless score Blue: RoundsWon matches 2.. run title @a[team=!Lobby] subtitle [{"score":{"name":"Blue:","objective":"RoundsWon"},"bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Yellow:","objective":"RoundsWon"},"bold":true,"color":"gold"}]
execute unless score Blue: RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Blue: RoundsWon matches 2.. run function game:winblue
execute if entity @s[tag=!TimeOut,tag=!noYZELO] if score Blue: RoundsWon matches 2.. run function rr_duel:rankcalc/calcblue