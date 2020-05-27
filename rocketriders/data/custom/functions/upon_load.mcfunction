scoreboard objectives add modifierID dummy
scoreboard players add @e[tag=Selection] modifierID 0
scoreboard objectives add doStacking dummy
scoreboard players add @e[tag=Selection] doStacking 0
tag @e[tag=Selection] remove doStacking
scoreboard objectives add HasFlag dummy
scoreboard objectives add MaxItemTime dummy
scoreboard players add @e[tag=Selection] MaxItemTime 0
scoreboard players set @e[tag=Selection,scores={MaxItemTime=..0}] MaxItemTime 300