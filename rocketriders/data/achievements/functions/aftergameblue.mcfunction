##Any achievements/conditions to be given if Blue wins
#Swiss Cheese (part 1)
execute if entity @s[tag=!Hardcore] run scoreboard players set SwissCheese SwissCheese 11500
execute if entity @s[tag=!Hardcore] store result score Blue SwissCheese run clone 38 34 -52 -14 63 -66 -48 46 -1 filtered air
#Hardcore variant - check less blocks
execute if entity @s[tag=Hardcore] run scoreboard players set SwissCheese SwissCheese 2298
execute if entity @s[tag=Hardcore] store result score Blue SwissCheese run clone 38 34 -66 -14 63 -64 -48 46 -1 filtered air
execute if score Blue SwissCheese >= SwissCheese SwissCheese run tag @a[x=0,team=Blue] add SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Simple and Clean (part 1)
execute if score Blue SwissCheese matches 0 if score @s gametime matches ..2400 run tag @a[x=0,team=Blue] add SimpleAndClean
scoreboard players reset Blue SwissCheese

#Deus Ex Machina (part 1)
execute unless entity @s[tag=noPortal] run summon armor_stand 33 57 -73 {Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Tags:["machinacheck"]}
scoreboard players add @e[x=0,type=armor_stand,tag=machinacheck] Machina 0
execute as @e[x=0,type=armor_stand,tag=machinacheck] at @s run function achievements:machinacheckblue

#One is the Loneliest Number (part 1)
execute if score @s bluesCount matches 1 if score @s yellowsCount matches 2.. run tag @a[x=0,team=Blue] add Loneliest

#Forsaken (part 1)
execute if score @s bluesCount < @s origBCount run tag @a[x=0,team=Blue] add Forsaken

#Ground Bound (part 1) - necessary because players can jump after game end
tag @a[x=0,team=Blue,scores={jumps=..0}] add GroundBound

#Immortal (part 1)
tag @a[x=0,team=Blue,scores={deaths=..0}] add Immortal

#I Swear I Had It (part 1)
execute unless entity @s[tag=noPortal] as @a[x=0,team=Yellow] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[x=0,team=Yellow,scores={HasMissiles=1..}] at @s if entity @s[z=-74,dz=28] run tag @s add HadIt

#All end-game achievements (delay for Sudden Death)
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal] run schedule function achievements:aftergame_indimension 100t replace
execute if entity @s[tag=!doTying] run function achievements:aftergame