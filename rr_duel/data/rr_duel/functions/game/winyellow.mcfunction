#Blue team round wins
tag @a remove Winner
tag @a remove Loser
tag @a[team=Yellow] add Winner
tag @a[team=Blue] add Loser
tag @s remove BlueWon
tag @s add YellowWon
tag @s add CriteriaTrue
scoreboard players add Yellow: RoundsWon 1

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute unless score Yellow: RoundsWon matches 2.. if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run function achievements:aftergameyellow
execute unless score Yellow: RoundsWon matches 2.. run function achievements:scoresreset
execute unless score Yellow: RoundsWon matches 2.. run kill @e[type=tnt]
execute unless score Yellow: RoundsWon matches 2.. as @a[team=Blue] at @s run stopsound @s
execute unless score Yellow: RoundsWon matches 2.. as @a[team=Yellow] at @s run stopsound @s
execute unless score Yellow: RoundsWon matches 2.. as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0
execute unless score Yellow: RoundsWon matches 2.. run title @a[team=!Lobby] title [{"text":"Team Yellow","bold":false,"color":"gold"},{"text":" scored!","bold":false,"color":"green"}]
execute unless score Yellow: RoundsWon matches 2.. run title @a[team=!Lobby] subtitle [{"score":{"name":"Yellow:","objective":"RoundsWon"},"bold":true,"color":"gold"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Blue:","objective":"RoundsWon"},"bold":true,"color":"blue"}]
execute unless score Yellow: RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Yellow: RoundsWon matches 2.. run function game:winyellow
execute if entity @s[tag=!TimeOut,tag=!noYZELO] if score Yellow: RoundsWon matches 2.. run function rr_duel:rankcalc/calcyellow