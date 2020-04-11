#hotfix for losing pickaxes
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}]
execute as @a store result score @s HasDiaPickaxe run clear @s diamond_pickaxe 0

tag @a[team=Blue,scores={HasDiaPickaxe=0}] add picklessBlue
give @a[tag=picklessBlue] minecraft:diamond_pickaxe{display:{Name:"{\"translate\":\"Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["A tool used to destroy and obtain blocks"]},HideFlags:7,Unbreakable:1b,Enchantments:[{id:silk_touch,lvl:1}]}
tag @a[tag=picklessBlue] remove picklessBlue

tag @a[team=Yellow,scores={HasDiaPickaxe=0}] add picklessYellow
give @a[tag=picklessYellow] minecraft:diamond_pickaxe{display:{Name:"{\"translate\":\"Pickaxe\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}",Lore:["A tool used to destroy and obtain blocks"]},HideFlags:7,Unbreakable:1b,Enchantments:[{id:silk_touch,lvl:1}]}
tag @a[tag=picklessYellow] remove picklessYellow

clear @a[scores={HasDiaPickaxe=2..}] diamond_pickaxe