#no item dropping + bow killing
execute if entity @e[tag=Selection] as @a at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] at @s run tp @s @p
execute if entity @e[tag=Selection] as @a at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] run data merge entity @s {PickupDelay:0s}
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]