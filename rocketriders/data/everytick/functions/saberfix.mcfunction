#hotfix for losing sabers + to prevent players from combining duplicated sabers to get an unenchanted saber
execute as @a store result score @s HasSaber run clear @s bow 0

tag @a[team=Blue,scores={HasSaber=0}] add saberlessBlue
give @a[tag=saberlessBlue] minecraft:bow{display:{Name:"{\"translate\":\"Shooting Saber\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["A weapon used for both ranged and melee attacks"]},HideFlags:7,Unbreakable:1b,Enchantments:[{id:flame,lvl:1},{id:sharpness,lvl:5}]}
tag @a[tag=saberlessBlue] remove saberlessBlue

tag @a[team=Yellow,scores={HasSaber=0}] add saberlessYellow
give @a[tag=saberlessYellow] minecraft:bow{display:{Name:"{\"translate\":\"Shooting Saber\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}",Lore:["A weapon used for both ranged and melee attacks"]},HideFlags:7,Unbreakable:1b,Enchantments:[{id:flame,lvl:1},{id:sharpness,lvl:5}]}
tag @a[tag=saberlessYellow] remove saberlessYellow

clear @a[scores={HasSaber=2..}] bow