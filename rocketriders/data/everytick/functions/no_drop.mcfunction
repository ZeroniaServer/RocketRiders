

#no item dropping + bow killing
execute if entity @e[tag=Selection] as @a at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] at @s run tp @s @p
execute if entity @e[tag=Selection] as @a at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data merge entity @s {PickupDelay:0s}


kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]




#item blastproof tag
execute if entity @e[tag=Selection] as @e[type=item,nbt={Item:{tag:{Blastproof:1b}}}] run data merge entity @s {Invulnerable:1b}