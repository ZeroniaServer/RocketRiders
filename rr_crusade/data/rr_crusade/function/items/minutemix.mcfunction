##Minute Mix Modifier - gives 8 items tick by tick after minute-long intervals

execute unless predicate game:modifiers/minute_mix/on run return 0

execute if entity @s[scores={RandomItem=1201}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1202}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1203}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1204}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1205}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1206}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1207}] run function rr_crusade:items/giverandom
execute if entity @s[scores={RandomItem=1208}] run function rr_crusade:items/giverandom
scoreboard players reset @s[scores={RandomItem=1209..}] RandomItem
