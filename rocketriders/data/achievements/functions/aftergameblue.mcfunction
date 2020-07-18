##Any achievements/conditions to be given if Blue wins
#Simple and Clean
execute if score Blue SwissCheese matches 0 if score @s gametime matches ..2400 run advancement grant @a[team=Blue] only achievements:rr_challenges/simple_and_clean
scoreboard players reset Blue SwissCheese

#Swiss Cheese (part 1)
execute as @s[tag=!Hardcore] run scoreboard players set SwissCheese SwissCheese 11500
execute as @s[tag=!Hardcore] store result score Blue SwissCheese run clone 38 34 -52 -14 63 -66 -48 46 -1 filtered air
#Hardcore variant - check less blocks
execute as @s[tag=Hardcore] run scoreboard players set SwissCheese SwissCheese 766
execute as @s[tag=Hardcore] store result score Blue SwissCheese run clone 38 34 -66 -14 63 -66 -48 46 -1 filtered air
execute if score Blue SwissCheese >= SwissCheese SwissCheese run tag @a[team=Blue] add SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Deus Ex Machina (part 1)
summon armor_stand 38 63 -66 {Tags:["machinacheck"],NoGravity:1b,Invisible:1b}
scoreboard players add @e[tag=machinacheck,type=armor_stand] Machina 0
execute as @e[tag=machinacheck,type=armor_stand] at @s run function achievements:machinacheckblue

#One is the Loneliest Number (part 1)
execute if score @s bluesCount matches 1 if score @s yellowsCount matches 2.. run tag @a[team=Blue] add Loneliest

#Forsaken (part 1)
execute if score @s bluesCount < @s origBCount run tag @a[team=Blue] add Forsaken

#Ground Bound (part 1) - necessary because players can jump after game end
tag @a[team=Blue,scores={jumps=..0}] add GroundBound

#Immortal (part 1)
tag @a[team=Blue,scores={deaths=..0}] add Immortal

#I Swear I Had It (part 1)
execute as @a[team=Yellow] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[team=Yellow,scores={HasMissiles=1..}] at @s if entity @s[z=-74,dz=28] run tag @s add HadIt

#All end-game achievements (delay for Sudden Death)
execute if entity @s[tag=doTying,tag=!tyingOff] run schedule function achievements:aftergame 80t append
execute if entity @s[tag=!doTying] run function achievements:aftergame