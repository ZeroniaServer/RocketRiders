## Mount to awake brain
ride @s mount @e[distance=..0.01,limit=1,type=block_display,tag=rot.awake_brain]

## Set up data
data modify entity @s data.rot set value {face:{}}

rotate @s ~ ~

data merge entity @s {text:{atlas:"minecraft:blocks",sprite:"block/destroy_stage_0",color:"#390077"},background:0,transformation:{scale:[5,5,5],translation:[-0.125,-0.75,0.5]},text_opacity:127}
# Transparent blocks need an opaque rot effect, or else face the wrath of the transparency gods
execute if block ~ ~ ~ #custom:glass unless block ~ ~ ~ minecraft:glass run data modify entity @s text_opacity set value 255
execute if block ~ ~ ~ minecraft:slime_block run data modify entity @s text_opacity set value 255
execute if block ~ ~ ~ minecraft:honey_block run data modify entity @s text_opacity set value 255
