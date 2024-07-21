##Kills thrown Saber
execute store success score @s playerUUID on origin if entity @s[tag=Infinity]
kill @s[scores={playerUUID=1..}]