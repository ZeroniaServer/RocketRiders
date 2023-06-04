##Utility function for handling item dropping

#Kills books
kill @e[x=0,type=item,nbt={Item:{id:"minecraft:written_book",tag:{navbook:1b}}}]
#Kills parkour controls
kill @e[x=0,type=item,nbt={Item:{id:"minecraft:barrier"}}]
kill @e[x=0,type=item,nbt={Item:{id:"minecraft:clock"}}]
kill @e[x=0,type=item,nbt={Item:{id:"minecraft:compass"}}]

#Process individual items
execute as @e[x=0,type=item] unless entity @s[type=item,nbt={Item:{tag:{Droppable:1b}}}] run function everytick:no_drop_process

#Kills items after a while
execute as @e[x=0,type=item,nbt={Age:30s}] unless entity @s[nbt={Item:{tag:{Droppable:1b}}}] run kill @s

#Item blastproof tag
execute as @e[x=0,type=item,nbt={Item:{tag:{BlastProof:1b}}}] run data merge entity @s {Invulnerable:1b}