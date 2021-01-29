##Utility function for handling item dropping
#No item dropping
#Thanks to Cloud Wolf for the tip!
execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] store result score @s playerUUID run data get entity @s Thrower[0]
execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] run data merge entity @s {PickupDelay:0s}
execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:bow"}}] unless entity @s[type=item,nbt={Item:{tag:{Dropable:1b}}}] if entity @a[team=!Spectator,tag=!itemChecked] run function everytick:no_drop_loop
tag @a remove itemChecked

#Kills sabers (A proper system exists in everytick:saberfix)
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
#Kills books
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]
#Kills parkour controls
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:clock"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]

#Kills items after a while
execute as @e[type=item,nbt={Age:15s}] unless entity @s[nbt={Item:{tag:{Dropable:1b}}}] run kill @s

#Item blastproof tag
execute as @e[type=item,nbt={Item:{tag:{Blastproof:1b}}}] run data merge entity @s {Invulnerable:1b}