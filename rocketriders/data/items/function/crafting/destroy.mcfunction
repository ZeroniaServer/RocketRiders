# arguments: slot

$item replace block 0 184 -16 container.0 from entity @s $(slot)
$item replace entity @s $(slot) with air

data modify storage rocketriders:main crafting.item set from block 0 184 -16 Items[{Slot:0b}]
data modify storage rocketriders:main crafting.item_name set value {translate:"%s",with:[{bold:true,text:"",extra:["Item"]},"1"],hover_event:{action:"show_item"}}
execute if items block 0 184 -16 container.0 *[count~{min:2}] run data modify storage rocketriders:main crafting.item_name.translate set value "item.container.item_count"
execute if items block 0 184 -16 container.0 *[count~{min:2}] run data modify storage rocketriders:main crafting.item_name.with[1] set string storage rocketriders:main crafting.item.count
data modify storage rocketriders:main crafting.item_name.hover_event merge from storage rocketriders:main crafting.item

execute if items block 0 184 -16 container.0 *[custom_name] run data modify storage rocketriders:main crafting.item_name.with[0].extra[0] set from storage rocketriders:main crafting.item.components.minecraft:custom_name
execute if items block 0 184 -16 container.0 *[!custom_name] run summon item 0.0 185.0 -16.0 {Item:{id:"minecraft:stone"},Tags:["crafting.item"]}
execute if items block 0 184 -16 container.0 *[!custom_name] as @e[limit=1,type=item,tag=crafting.item,x=0.0,y=185.0,z=-16.0] run function items:crafting/get_item_name

tellraw @s ["",{color:"red",text:"Destroyed "},{storage:"rocketriders:main",nbt:"crafting.item_name",interpret:true}]
playsound minecraft:item.axe.strip master @s ~ ~ ~ 0.5 0.9
