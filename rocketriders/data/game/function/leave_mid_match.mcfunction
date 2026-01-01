execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] unless predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"dark_aqua",text:" left the match!"}]
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] if predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"red",text:" left the match!"}]
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] if predicate custom:team/yellow run tellraw @a[x=0] ["",{selector:"@s"},{color:"yellow",text:" left the match!"}]

execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] unless predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"dark_aqua",text:" forfeited the match!"}]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] if predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"red",text:" forfeited the match!"}]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] if predicate custom:team/yellow run tellraw @a[x=0] ["",{selector:"@s"},{color:"yellow",text:" forfeited the match!"}]

scoreboard players set @s LeaveGame 1
