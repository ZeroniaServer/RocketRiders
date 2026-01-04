#Blue: team round wins
tag @a[x=0] remove Winner
tag @a[x=0] remove Loser
tag @a[x=0,predicate=custom:team/blue] add Winner
tag @a[x=0,predicate=custom:team/yellow] add Loser
tag @s remove YellowWon
tag @s add BlueWon
tag @s add CriteriaTrue
scoreboard players add Blue: RoundsWon 1

effect give @a[x=0,predicate=custom:team/blue] instant_health 1 100
effect give @a[x=0,predicate=custom:team/yellow] instant_health 1 100

execute unless score Blue: RoundsWon matches 2.. if predicate game:achievements_can_be_awarded run function achievements:aftergameblue
execute unless score Blue: RoundsWon matches 2.. run function achievements:scoresreset
execute unless score Blue: RoundsWon matches 2.. run kill @e[x=0,type=tnt]
execute unless score Blue: RoundsWon matches 2.. if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute unless score Blue: RoundsWon matches 2.. as @a[x=0,predicate=custom:team/blue] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a[x=0,predicate=custom:team/yellow] at @s run stopsound @s
execute unless score Blue: RoundsWon matches 2.. as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0
execute unless score Blue: RoundsWon matches 2.. run title @a[x=0,predicate=!custom:team/lobby] title [{"text":"Team Blue","bold":false,"color":"blue"},{"text":" scored!","bold":false,"color":"green"}]
execute unless score Blue: RoundsWon matches 2.. run title @a[x=0,predicate=!custom:team/lobby] subtitle [{"score":{"name":"Blue:","objective":"RoundsWon"},"bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Yellow:","objective":"RoundsWon"},"bold":true,"color":"gold"}]
execute unless score Blue: RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Blue: RoundsWon matches 2.. run function game:winblue
execute unless predicate rr_duel:time_out_period if entity @s[tag=!noYZELO] if score Blue: RoundsWon matches 2.. run function rr_duel:rankcalc/calcblue