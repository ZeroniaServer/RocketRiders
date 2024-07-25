function everytick:cluster
function rr_powerups:everytick/spawnables
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Blue] #rr_powerups:clear
clear @a[x=0,team=Blue] #rr_sandbox:clear
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Yellow] #rr_powerups:clear
clear @a[x=0,team=Yellow] #rr_sandbox:clear
execute if entity @s[scores={endtimer=1}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s written_book
execute if entity @s[scores={endtimer=1}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run item replace entity @s hotbar.0 with minecraft:written_book[custom_name='[{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false}]',lore=['{"translate":"A helpful book used to obtain","color":"dark_purple"}','{"translate":"every item in Rocket Riders!","color":"dark_purple"}'],written_book_content={pages:['{"extra":[{"text":"\\u0020 Rocket","color":"blue","bold":true},{"text":"-","color":"gray","bold":true},{"text":"nomicon","color":"gold","bold":true},{"text":"\\n\\nYour one-stop shop for every item in RR!\\n\\nNothing to see here anymore. Check back again next game!\\n","color":"dark_gray"},{"text":"\\n\\n\\n\\n\\nParty\'s over, guys...","color":"#CCCCCC","italic":true}],"text":""}'],author:"Zeronia",title:"Rocket-nomicon",resolved:1b}]
execute as @a run trigger nomicon set 0

execute if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[x=0,team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:1247871,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[x=0,team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]