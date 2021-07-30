##Reduces this item's Count by 1
execute store result score @s CmdData run data get entity @s Item.Count
scoreboard players remove @s CmdData 1
#extra for arrows since they replenish to 4
scoreboard players remove @s[nbt={Item:{id:"minecraft:arrow"}}] CmdData 3
scoreboard players remove @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] CmdData 3
scoreboard players set @s[scores={CmdData=..-1}] CmdData 0
execute store result entity @s Item.Count byte 1 run scoreboard players get @s CmdData
kill @s[scores={CmdData=..0}]