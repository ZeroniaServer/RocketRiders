execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 2 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 2 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 2 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=!CapturedZone] at @s run particle dust 1 1 1 2 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 2 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 2 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 2 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Yellow] at @s run particle dust 0 0 1 2 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 2 ^ ^0.1 ^4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 2 ^ ^0.2 ^-4 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 2 ^4 ^0.2 ^ 0 0.4 0 0 2 force
execute as @e[tag=FlagSafety,tag=CapturedZone,tag=Blue] at @s run particle dust 1 1 0 2 ^-4 ^0.1 ^ 0 0.4 0 0 2 force

execute as @e[tag=FlagSafety] at @s run tp @s ~ ~ ~ ~7 ~

#> Armor
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=CarryFlag,scores={FlagScore=1}] run item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:100,Name:"generic.knockback_resistance",UUID:[I;-122110,29526,235413,-59052]},{AttributeName:"generic.movement_speed",Amount:0.05,Name:"generic.movement_speed",UUID:[I;-122110,29626,235413,-59252]},{AttributeName:"generic.armor",Amount:100,Name:"generic.armor",UUID:[I;-122110,29726,235413,-59452]}],display:{Name:'[{"text":"Plot Armor","italic":false,"color":"green"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Because we can\'t kill off","italic":false,"color":"dark_gray"}]','[{"text":"the show\'s main character!","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:blast_protection,lvl:10},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:10},{id:protection,lvl:10},{id:thorns,lvl:2},{id:binding_curse,lvl:1}],HideFlags:6}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=CarryFlag,scores={FlagScore=1}] run item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:100,Name:"generic.knockback_resistance",UUID:[I;-122110,29526,235413,-59052]},{AttributeName:"generic.movement_speed",Amount:0.05,Name:"generic.movement_speed",UUID:[I;-122110,29626,235413,-59252]},{AttributeName:"generic.armor",Amount:100,Name:"generic.armor",UUID:[I;-122110,29726,235413,-59452]}],display:{Name:'[{"text":"Plot Armor","italic":false,"color":"green"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Because we can\'t kill off","italic":false,"color":"dark_gray"}]','[{"text":"the show\'s main character!","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:blast_protection,lvl:10},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:10},{id:protection,lvl:10},{id:thorns,lvl:2}],HideFlags:6}
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run tag @e[tag=FlagSafety,limit=1,sort=nearest] add CapturedZone
execute as @a[tag=CarryFlag,scores={FlagScore=2..}] at @s if entity @e[tag=CapturedZone,distance=..2.5] run scoreboard players set @s FlagScore 2
execute as @e[tag=CapturedZone] at @s unless entity @a[tag=CarryFlag,distance=..4] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.8
execute as @e[tag=CapturedZone] at @s unless entity @a[tag=CarryFlag,distance=..4] run tag @s remove CapturedZone

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,scores={FlagScore=100}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,scores={FlagScore=100}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,scores={FlagScore=100}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,scores={FlagScore=100}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}


execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}