#Blue team round wins
tag @a[predicate=custom:indimension] remove Winner
tag @a[predicate=custom:indimension] remove Loser
tag @a[predicate=custom:indimension,team=Yellow] add Winner
tag @a[predicate=custom:indimension,team=Blue] add Loser
tag @s remove BlueWon
tag @s add YellowWon
tag @s add CriteriaTrue
scoreboard players add Yellow: RoundsWon 1

effect give @a[predicate=custom:indimension,team=Blue] instant_health 1 100
effect give @a[predicate=custom:indimension,team=Yellow] instant_health 1 100

execute unless score Yellow: RoundsWon matches 2.. if entity @s[scores={servermode=0},tag=!realms] run function achievements:aftergameyellow
execute unless score Yellow: RoundsWon matches 2.. run function achievements:scoresreset
execute unless score Yellow: RoundsWon matches 2.. run kill @e[predicate=custom:indimension,type=tnt]
execute unless score Yellow: RoundsWon matches 2.. as @a[predicate=custom:indimension,team=Blue] at @s run stopsound @s
execute unless score Yellow: RoundsWon matches 2.. as @a[predicate=custom:indimension,team=Yellow] at @s run stopsound @s
execute unless score Yellow: RoundsWon matches 2.. as @a[predicate=custom:indimension] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0
execute unless score Yellow: RoundsWon matches 2.. run title @a[predicate=custom:indimension,team=!Lobby] title [{"text":"Team Yellow","bold":false,"color":"gold"},{"text":" scored!","bold":false,"color":"green"}]
execute unless score Yellow: RoundsWon matches 2.. run title @a[predicate=custom:indimension,team=!Lobby] subtitle [{"score":{"name":"Yellow:","objective":"RoundsWon"},"bold":true,"color":"gold"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Blue:","objective":"RoundsWon"},"bold":true,"color":"blue"}]
execute unless score Yellow: RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Yellow: RoundsWon matches 2.. run function game:winyellow
execute if entity @s[tag=!TimeOut,tag=!noYZELO] if score Yellow: RoundsWon matches 2.. run function rr_duel:rankcalc/calcyellow