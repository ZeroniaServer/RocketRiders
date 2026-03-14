scoreboard players reset @s event.player_uses_written_book

scoreboard players set $using_nomicon var 0
execute if items entity @s weapon.mainhand written_book[custom_data~{nomicon:{}}] run scoreboard players set $using_nomicon var 1
execute if score $using_nomicon var matches 0 unless items entity @s weapon.mainhand written_book if items entity @s weapon.offhand written_book[custom_data~{nomicon:{}}] run scoreboard players set $using_nomicon var 1
execute if score $using_nomicon var matches 1 run return run execute in minecraft:overworld if entity @e[x=0,limit=1,type=armor_stand,tag=Selection,tag=sandboxEnabled] at @s run trigger sandbox.rocket_nomicon set 1

scoreboard players set $using_voting_ballot var 0
execute if items entity @s weapon.mainhand written_book[custom_data~{id:"voting_ballot"}] run scoreboard players set $using_voting_ballot var 1
execute if score $using_voting_ballot var matches 0 unless items entity @s weapon.mainhand written_book if items entity @s weapon.offhand written_book[custom_data~{id:"voting_ballot"}] run scoreboard players set $using_voting_ballot var 1
execute if score $using_voting_ballot var matches 1 run return run function servermode:voting/use_voting_ballot
