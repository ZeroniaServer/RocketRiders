##kills trident entities if the player already has a trident
execute store result score $killtrident CmdData on origin run clear @s trident 0
execute if score $killtrident CmdData matches 1.. run kill
scoreboard players reset $killtrident CmdData