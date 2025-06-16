# arguments: text_component

$execute on origin run loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name: {text:"",extra:[{text:"",insertion:"",hover_event:{action:"show_text",value:""},extra:[{selector:"@s"},"'s ",$(text_component)]}]} }]}]}]}
data modify entity @s CustomName set from block 0 184 -16 Items[0].components.minecraft:custom_name
