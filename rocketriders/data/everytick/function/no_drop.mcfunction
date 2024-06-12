##Utility function for handling item dropping

#Kills books
execute if items entity @s contents written_book[custom_data~{navbook:1b}] run kill
#Kills parkour controls
execute if items entity @s contents barrier run kill
execute if items entity @s contents clock run kill
execute if items entity @s contents compass run kill

#Process individual items
execute unless items entity @s contents *[custom_data~{Droppable:1b}] run function everytick:no_drop_process

#Item blastproof tag
execute if items entity @s[tag=!bp] contents *[custom_data~{BlastProof:1b}] run data merge entity @s {Invulnerable:1b}
execute if items entity @s contents *[custom_data~{BlastProof:1b}] run tag @s add bp