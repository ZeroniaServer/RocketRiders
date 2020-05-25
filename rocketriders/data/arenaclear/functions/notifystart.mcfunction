tellraw @s {"text":"The game is ready to play!","color":"dark_green","bold":"true"}

#Active modifiers
execute if entity @e[tag=Selection,tag=Instamine] run tellraw @s {"text":"Instamine is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=NoFall] run tellraw @s {"text":"No Fall is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=Explosive] run tellraw @s {"text":"Explosive is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=Residers] run tellraw @s {"text":"Rocket Residers is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=Sonar] run tellraw @s {"text":"Sonar is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=Molerat] run tellraw @s {"text":"Molerat is enabled.","color":"aqua","bold":"true"}
execute if entity @e[tag=Selection,tag=Minute] run tellraw @s {"text":"Minute Mix is enabled.","color":"aqua","bold":"true"}

playsound entity.player.levelup player @s ~ ~ ~ 1 1.5