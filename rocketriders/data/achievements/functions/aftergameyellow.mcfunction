##Any achievements/conditions to be given if Yellow wins
#Swiss Cheese (part 1)
execute if entity @s[tag=!Hardcore] run scoreboard players set SwissCheese SwissCheese 11500
execute if entity @s[tag=!Hardcore] store result score Yellow SwissCheese run clone 38 34 52 -14 63 66 -48 46 -1 filtered air
#reduce minimum blocks for Hardcore modifier
execute if entity @s[tag=Hardcore] run scoreboard players set SwissCheese SwissCheese 2298
execute if entity @s[tag=Hardcore] store result score Yellow SwissCheese run clone 38 34 66 -14 63 64 -48 46 -1 filtered air
execute if score Yellow SwissCheese >= SwissCheese SwissCheese run tag @a[team=Yellow] add SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Simple and Clean (part 1)
execute if score Yellow SwissCheese matches 0 if score @s gametime matches ..2400 run tag @a[team=Yellow] add SimpleAndClean
scoreboard players reset Yellow SwissCheese

#Deus Ex Machina (part 1)
execute unless entity @s[tag=noPortal] run summon armor_stand 33 57 73 {Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Tags:["machinacheck"]}
scoreboard players add @e[type=armor_stand,tag=machinacheck] Machina 0
execute as @e[type=armor_stand,tag=machinacheck] at @s run function achievements:machinacheckyellow

#One is the Loneliest Number (part 1)
execute if score @s yellowsCount matches 1 if score @s bluesCount matches 2.. run tag @a[team=Yellow] add Loneliest

#Forsaken (part 1)
execute if score @s yellowsCount < @s origYCount run tag @a[team=Yellow] add Forsaken

#Ground Bound (part 1) - necessary because players can jump after game end
tag @a[team=Yellow,scores={jumps=..0}] add GroundBound

#Immortal (part 1) - necessary because players can die after game end
tag @a[team=Yellow,scores={deaths=..0}] add Immortal

#I Swear I Had It (part 1) - necessary because players can die after game end
execute unless entity @s[tag=noPortal] as @a[team=Blue] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[team=Blue,scores={HasMissiles=1..}] at @s if entity @s[z=46,dz=28] run tag @s add HadIt

#All end-game achievements (delay for Sudden Death))
execute if entity @s[tag=doTying,tag=!tyingOff,tag=!noPortal] run schedule function achievements:aftergame_indimension 100t replace
execute if entity @s[tag=!doTying] run function achievements:aftergame