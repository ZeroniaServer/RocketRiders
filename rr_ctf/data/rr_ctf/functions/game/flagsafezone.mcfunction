execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 3 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 3 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 3 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 3 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 3 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 3 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 3 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 3 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 3 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 3 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 3 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 3 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety] at @s run tp @s ~ ~ ~ ~7 ~

#> Make safe zones temporary
scoreboard players add @e[tag=CapturedZone] FlagScore 1
execute as @e[tag=CapturedZone,scores={FlagScore=20}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute as @e[tag=CapturedZone,scores={FlagScore=40}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=60}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute as @e[tag=CapturedZone,scores={FlagScore=80}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=100}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute as @e[tag=CapturedZone,scores={FlagScore=120}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=140}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute as @e[tag=CapturedZone,scores={FlagScore=160}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=180}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 2
execute as @e[tag=CapturedZone,scores={FlagScore=200}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=220}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.7
execute as @e[tag=CapturedZone,scores={FlagScore=240}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.6
execute as @e[tag=CapturedZone,scores={FlagScore=260}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.5
execute as @e[tag=CapturedZone,scores={FlagScore=280}] at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1.4
execute as @e[tag=CapturedZone,scores={FlagScore=300}] at @s run title @a[tag=CarryFlag,distance=..4,limit=1,sort=nearest] title {"text":" ","bold":true,"color":"dark_red"}
execute as @e[tag=CapturedZone,scores={FlagScore=300}] at @s run title @a[tag=CarryFlag,distance=..4,limit=1,sort=nearest] subtitle {"text":"Safezone Expired","bold":true,"color":"dark_red"}
execute as @e[tag=CapturedZone,scores={FlagScore=300}] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.8
execute as @e[tag=CapturedZone,scores={FlagScore=300..}] at @s run tag @s remove CapturedZone
execute as @e[tag=FlagSafety,scores={FlagScore=300..}] at @s run scoreboard players reset @s FlagScore

#> Armor
execute as @a[tag=CarryFlag,scores={FlagScore=1..60}] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.35 0.5 0.35 0.1 10 force @a[distance=0.1..]

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=CarryFlag,scores={FlagScore=1}] run scoreboard players set @e[tag=FlagSafety,distance=..8,limit=1] FlagScore 0
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=CarryFlag,scores={FlagScore=1}] run item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:100,Name:"generic.knockback_resistance",UUID:[I;-122110,29526,235413,-59052]},{AttributeName:"generic.armor",Amount:1000,Name:"generic.armor",UUID:[I;-122110,29726,235413,-59452]}],display:{Name:'[{"text":"Plot Armor","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Because we can\'t kill off","italic":false,"color":"dark_gray"}]','[{"text":"the show\'s main character!","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:blast_protection,lvl:10},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:10},{id:protection,lvl:10},{id:thorns,lvl:2},{id:binding_curse,lvl:1}],HideFlags:6}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=CarryFlag,scores={FlagScore=1}] run item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:100,Name:"generic.knockback_resistance",UUID:[I;-122110,29526,235413,-59052]},{AttributeName:"generic.movement_speed",Amount:0.05,Name:"generic.movement_speed",UUID:[I;-122110,29626,235413,-59252]},{AttributeName:"generic.armor",Amount:100,Name:"generic.armor",UUID:[I;-122110,29726,235413,-59452]}],display:{Name:'[{"text":"Plot Armor","bold":true,"italic":false,"color":"green"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Because we can\'t kill off","italic":false,"color":"dark_gray"}]','[{"text":"the show\'s main character!","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:blast_protection,lvl:10},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:10},{id:protection,lvl:10},{id:thorns,lvl:2}],HideFlags:6}
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run tag @e[tag=FlagSafety,limit=1,sort=nearest] add CapturedZone
execute as @a[tag=CarryFlag,scores={FlagScore=2..}] at @s if entity @e[tag=CapturedZone,distance=..4] run scoreboard players set @s FlagScore 2
execute as @e[tag=CapturedZone] at @s unless entity @a[tag=CarryFlag,distance=..4] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.8
execute as @e[tag=CapturedZone] at @s unless entity @a[tag=CarryFlag,distance=..4] run tag @s remove CapturedZone

execute as @a[tag=CarryFlag,scores={FlagScore=60}] at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
execute as @a[tag=CarryFlag,scores={FlagScore=60}] at @s run title @s title {"text":" ","bold":true,"color":"dark_red"}
execute as @a[tag=CarryFlag,scores={FlagScore=60}] at @s run title @s subtitle {"text":"Flag Armor Expired","bold":true,"color":"dark_red"}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,scores={FlagScore=60}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,scores={FlagScore=60}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,scores={FlagScore=60}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,scores={FlagScore=60}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}


execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}