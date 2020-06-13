#no item dropping + bow killing
execute as @a[team=!Spectator] at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] at @s run tp @s @p[team=!Spectator]
execute as @a[team=!Spectator] at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data merge entity @s {PickupDelay:0s}
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
#kills items after a while
execute as @e[type=item,nbt={Age:300s}] unless entity @s[nbt={Item:{tag:{Dropable:1b}}}] run kill @s

#item blastproof tag
execute as @e[type=item,nbt={Item:{tag:{Blastproof:1b}}}] run data merge entity @s {Invulnerable:1b}