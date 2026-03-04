scoreboard players set @s LeaveGame 1

execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the match!"]
tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," forfeited the match!"]
