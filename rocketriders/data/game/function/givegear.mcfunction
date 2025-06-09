##Utility function for giving Blue/Yellow players appropriate armor
loot replace entity @s armor.chest loot items:armor/generic_gear/chestplate
loot replace entity @s armor.legs loot items:armor/generic_gear/leggings
execute if function game:norankboots run loot replace entity @s armor.feet loot items:armor/generic_gear/boots