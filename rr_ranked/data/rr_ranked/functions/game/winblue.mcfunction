#Blue: team round wins
tag @s add BlueWon
tag @s add CriteriaTrue
scoreboard players add Blue: RoundsWon 1

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute unless score Blue: RoundsWon matches 2.. run function achievements:aftergameblue
execute unless score Blue: RoundsWon matches 2.. run function achievements:aftergame
execute unless score Blue: RoundsWon matches 2.. run function achievements:scoresreset
execute unless score Blue: RoundsWon matches 2.. run kill @e[type=tnt]
execute unless score Blue: RoundsWon matches 2.. as @a[team=Blue] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a[team=Yellow] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
execute unless score Blue: RoundsWon matches 2.. run title @a title [{"text":"Team Blue","bold":true,"color":"blue"},{"text":" scored!","bold":true,"color":"green"}]
execute unless score Blue: RoundsWon matches 2.. run title @a subtitle [{"score":{"name":"Blue:","objective":"RoundsWon"},"bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Yellow:","objective":"RoundsWon"},"bold":true,"color":"gold"}]
execute unless score Blue: RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Blue: RoundsWon matches 2.. run tag @s[scores={ForfeitTimeout=1200..}] add noAchievements
execute if score Blue: RoundsWon matches 2.. run function game:winblue
execute if score Blue: RoundsWon matches 2.. run function rr_ranked:rankcalc/calcblue