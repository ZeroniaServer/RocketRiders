fill 33 79 33 35 89 31 air strict
fill -11 79 33 -9 89 31 air strict
fill 9 89 66 15 99 60 air strict
fill -11 79 -31 -9 89 -33 air strict
fill 33 79 -31 35 89 -33 air strict
fill 9 89 -60 15 99 -66 air strict
fill 28 57 -28 -3 63 -51 air strict
fill -3 57 29 27 63 51 air strict

fill 41 47 35 35 53 40 air strict
fill -11 47 35 -17 53 40 air strict
fill -17 47 -34 -11 53 -40 air strict
fill 36 47 -35 41 53 -40 air strict
fill 21 44 -67 3 56 -67 air strict
fill 21 44 67 3 56 67 air strict
fill -18 53 6 18 34 -9 air strict
fill 19 34 -7 42 53 9 air strict

fill -16 51 -40 -12 47 -40 air strict
fill 36 51 -40 40 47 -40 air strict
fill -16 51 40 -12 47 40 air strict
fill 36 51 40 40 47 40 air strict

fill 15 64 -64 13 67 -62 air strict
fill 13 64 -63 11 67 -61 air strict
fill 11 64 -64 9 67 -62 air strict
fill 15 64 64 13 67 62 air strict
fill 13 64 63 11 67 61 air strict
fill 11 64 64 9 67 62 air strict

fill -14 59 -52 38 76 -66 air strict
fill -14 59 52 38 76 66 air strict

#tetris reset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_crusade:items/tetrisreset

##reset pregame bases
#remove armor stands
kill @e[x=0,type=armor_stand,tag=KitSelect]

#remove signs
fill -96 202 93 -94 202 93 air strict
fill -96 202 63 -94 202 63 air strict

#restore glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 96 -101 195 95 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 94 -101 195 93 orange_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 60 -101 195 61 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 65 -101 195 64 blue_stained_glass

#remove tower ridges
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -89 202 62 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -89 202 65 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -92 202 65 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -95 202 65 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -98 202 65 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -101 202 65 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -101 202 62 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -101 202 94 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -101 202 91 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -98 202 91 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -95 202 91 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -92 202 91 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -89 202 91 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run setblock -89 202 94 air strict

#remove crystal things
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -101 200 85 -99 202 85 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -91 200 85 -89 202 85 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -101 200 84 -99 202 84 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -91 200 84 -89 202 84 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -99 200 72 -101 202 72 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -91 200 72 -89 202 72 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -99 200 73 -101 202 73 air strict
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -91 200 73 -89 202 73 air strict

#restore portals
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -88 202 97 -102 194 97 obsidian
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -88 202 59 -102 194 59 obsidian
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 59 -94 195 59 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -96 201 59 -101 195 59 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -89 201 97 -94 195 97 nether_portal[axis=x]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled] run fill -96 201 97 -101 195 97 nether_portal[axis=x]

#remove indestructible pathways
fill 33 63 -66 -9 63 -57 air replace #rr_crusade:pathways strict
fill 33 63 66 -9 63 57 air replace #rr_crusade:pathways strict