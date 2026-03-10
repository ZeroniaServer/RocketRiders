scoreboard players set @s LeaveGame 1

execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run return run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," forfeited the match!"]
execute if predicate game:match_components/one_team run return run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the match!"]
tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]
