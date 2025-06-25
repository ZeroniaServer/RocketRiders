## Attach brain
ride @e[distance=..0.01,limit=1,type=area_effect_cloud,tag=vortex.this] mount @s

## Set up data
data modify entity @s data.vortex set value {body:{}}

data modify entity @s CustomName set from storage rocketriders:main vortex.name

## Display

execute if score $feathered var matches 0 run data merge entity @s {item_display:"fixed",teleport_duration:10,transformation:{scale:[0,0,0],translation:[-0.03125,0.0125,0]}}
execute if score $feathered var matches 0 run item replace entity @s contents with ender_pearl

execute if score $feathered var matches 1 run data merge entity @s {item_display:"fixed",teleport_duration:10,transformation:{scale:[0,0,0]}}
execute if score $feathered var matches 1 run item replace entity @s contents with player_head[profile={id:[I;-117843415,-1049737373,-1734814166,67551181],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzNTgyY2U0ODg5MzMzZGFkMzI5ZTRlMjQzNzJhMDNhNWRhYTJjMzQyODBjNTYyNTZhZjUyODNlZGIwNDNmOCJ9fX0="}]}]
