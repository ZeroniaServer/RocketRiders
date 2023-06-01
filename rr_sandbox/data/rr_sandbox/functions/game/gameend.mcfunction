clear @a[predicate=custom:indimension,team=Blue] #custom:clear
clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
clear @a[predicate=custom:indimension,team=Blue] #rr_powerups:clear
clear @a[predicate=custom:indimension,team=Yellow] #custom:clear
clear @a[predicate=custom:indimension,team=Yellow] crossbow{nova:1b}
clear @a[predicate=custom:indimension,team=Yellow] #rr_powerups:clear

execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run function items:killendweapon
execute if entity @s[scores={endtimer=1},tag=BlueWon] run clear @a[predicate=custom:indimension,team=Yellow] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=BlueWon] run give @a[predicate=custom:indimension,team=Yellow] netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}
execute if entity @s[scores={endtimer=1},tag=YellowWon] run clear @a[predicate=custom:indimension,team=Blue] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=YellowWon] run give @a[predicate=custom:indimension,team=Blue] netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}

#Cluster Fireballs can't be punched (credit: Miolith)
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=StillCluster] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=ClusterStarter,tag=Still] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,scores={endFireball=1}] at @s run summon area_effect_cloud ~ ~-.375 ~ {Duration:2000000,Radius:0,NoGravity:1b,Tags:["endFireballAEC","endFireball"],Passengers:[{id:"minecraft:fireball",Tags:["endFireball"],ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}]}
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s run data modify entity @s Owner set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Owner
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s run data modify entity @s Item set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s store result score @s Clustertime run scoreboard players get @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Clustertime
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] at @s run data modify entity @s Tags set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC] at @s run kill @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1]
execute if entity @s[scores={endtimer=1}] as @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC] at @s run tag @e[predicate=custom:indimension,type=fireball,limit=1,sort=nearest,distance=..1] add endFireball
execute if entity @s[scores={endtimer=1..}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}