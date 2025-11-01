## Attach brain
ride @e[distance=..0.01,limit=1,type=snowball,tag=vortex_arm.this] mount @s

## Set up data
data modify entity @s data.vortex_arm set value {body:{}}

## Display
execute if score $feathered var matches 0 run data merge entity @s {item_display:"fixed",teleport_duration:1,billboard:"center",transformation:{scale:[0.333,0.333,0.333]}}
execute if score $feathered var matches 0 run item replace entity @s contents with ender_pearl

execute if score $feathered var matches 1 run data merge entity @s {item_display:"fixed",teleport_duration:1,billboard:"center",transformation:{scale:[0.333,0.333,0.333]}}
execute if score $feathered var matches 1 run item replace entity @s contents with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzNTgyY2U0ODg5MzMzZGFkMzI5ZTRlMjQzNzJhMDNhNWRhYTJjMzQyODBjNTYyNTZhZjUyODNlZGIwNDNmOCJ9fX0="}]}]
