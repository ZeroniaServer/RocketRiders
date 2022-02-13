##Checks if signs need to be refreshed
tag @s[tag=SignsRefreshed,tag=GamemodeRefreshed] remove SignsRefreshed
tag @s[tag=GamemodeRefreshed] remove GamemodeRefreshed
execute if entity @s[scores={refreshsigns=3..}] run function arenaclear:refreshsigns
execute if entity @s[scores={refreshsigns=3..}] run tag @s remove GlobalDefaults
scoreboard players set @s[scores={refreshsigns=3..}] refreshsigns 0
scoreboard players add @s[scores={refreshsigns=1..}] refreshsigns 1
execute if score @s refreshsigns matches 1.. run scoreboard players set $reloaded CmdData 0
execute if score @s refreshsigns matches 1.. run scoreboard players add $reloaded CmdData 1