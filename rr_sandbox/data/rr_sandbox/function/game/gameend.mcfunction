function rr_swap:items/cluster
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
execute if entity @s[scores={endtimer=1}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run item replace entity @s hotbar.0 with minecraft:written_book[custom_name='[{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false}]',lore=['{"translate":"A helpful book used to obtain","color":"purple"}','{"translate":"every item in Rocket Riders!","color":"purple"}'],written_book_content={pages:['{"extra":[{"text":"\\u0020 Rocket","color":"blue","bold":true},{"text":"-","color":"gray","bold":true},{"text":"nomicon","color":"gold","bold":true},{"text":"\\n\\nYour one-stop shop for every item in RR!\\n\\nNothing to see here anymore. Check back again next game!\\n","color":"dark_gray"},{"text":"\\n\\n\\n\\n\\nParty\'s over, guys...","color":"#CCCCCC","italic":true}],"text":""}'],author:"Zeronia",title:"Rocket-nomicon",resolved:1b}]
execute as @a run trigger nomicon set 0

#Cluster Fireballs can't be punched (credit: Miolith)
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=StillCluster] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=ClusterStarter,tag=Still] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,scores={endFireball=1}] at @s run summon area_effect_cloud ~ ~-.375 ~ {Duration:2000000,Radius:0,NoGravity:1b,Tags:["endFireballAEC","endFireball"],Passengers:[{id:"minecraft:fireball",Tags:["endFireball"],ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}]}
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run data modify entity @s Owner set from entity @n[type=fireball,scores={endFireball=1},distance=..1] Owner
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run item replace entity @s contents from entity @n[type=fireball,scores={endFireball=1},distance=..1] contents
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s store result score @s Clustertime run scoreboard players get @n[type=fireball,scores={endFireball=1},distance=..1] Clustertime
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run data modify entity @s Tags set from entity @n[type=fireball,scores={endFireball=1},distance=..1] Tags
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=area_effect_cloud,tag=endFireballAEC] at @s run kill @n[type=fireball,scores={endFireball=1},distance=..1]
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=area_effect_cloud,tag=endFireballAEC] at @s run tag @n[type=fireball,distance=..1] add endFireball
execute if entity @s[scores={endtimer=1..}] as @e[x=0,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}

execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[x=0,team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:1247871,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[x=0,team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[x=0,team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:1247871,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[x=0,team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]