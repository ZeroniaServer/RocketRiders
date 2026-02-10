## Attach brain
ride @e[distance=..0.01,limit=1,type=snowball,tag=vortex_arm.this] mount @s

## Set up data
data modify entity @s data.vortex_arm set value {body:{}}

## Display
data merge entity @s {item_display:"fixed",teleport_duration:2,billboard:"center",transformation:{scale:[0.333,0.333,0.333]}}
execute if score $feathered var matches 0 run item replace entity @s contents with ender_pearl
execute if score $feathered var matches 1 run item replace entity @s contents with egg
