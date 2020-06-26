##Utility function for handling item dropping
#No item dropping
execute as @a[team=!Spectator] at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data modify entity @s Owner set from entity @p[team=!Spectator] UUID
execute as @a[team=!Spectator] at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] at @s run tp @s @p[team=!Spectator]
execute as @a[team=!Spectator] at @s as @e[type=item,distance=..2] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data merge entity @s {PickupDelay:0s}

#Kills sabers (A proper system exists in everytick:saberfix)
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
#Kills books
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]

#Kills items after a while
execute as @e[type=item,nbt={Age:300s}] unless entity @s[nbt={Item:{tag:{Dropable:1b}}}] run kill @s

#Item blastproof tag
execute as @e[type=item,nbt={Item:{tag:{Blastproof:1b}}}] run data merge entity @s {Invulnerable:1b}