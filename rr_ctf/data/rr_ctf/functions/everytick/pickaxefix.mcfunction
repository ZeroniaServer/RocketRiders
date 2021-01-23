#hotfix for losing pickaxes
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}]
execute as @a store result score @s HasPickaxe run clear @s netherite_pickaxe 0

tag @a[team=Blue,scores={HasPickaxe=0}] add picklessBlue
give @a[tag=picklessBlue] minecraft:netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:purple_stained_glass"],HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
tag @a[tag=picklessBlue] remove picklessBlue

tag @a[team=Yellow,scores={HasPickaxe=0}] add picklessYellow
give @a[tag=picklessYellow] minecraft:netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:purple_stained_glass"],HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
tag @a[tag=picklessYellow] remove picklessYellow

clear @a[scores={HasPickaxe=2..}] netherite_pickaxe