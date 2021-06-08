##Any achievements/conditions to be given if Yellow wins
#Swiss Cheese (part 1)
execute as @s[tag=!Hardcore] run scoreboard players set SwissCheese SwissCheese 11500
execute as @s[tag=!Hardcore] store result score Yellow SwissCheese run clone 38 34 52 -14 63 66 -48 46 -1 filtered air
#reduce minimum blocks for Hardcore modifier
execute as @s[tag=Hardcore] run scoreboard players set SwissCheese SwissCheese 766
execute as @s[tag=Hardcore] store result score Yellow SwissCheese run clone 38 34 66 -14 63 66 -48 46 -1 filtered air
execute if score Yellow SwissCheese >= SwissCheese SwissCheese run tag @a[team=Yellow] add SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Simple and Clean
execute if score Yellow SwissCheese matches 0 if score @s gametime matches ..2400 run advancement grant @a[team=Yellow] only achievements:rr_challenges/simple_and_clean
scoreboard players reset Yellow SwissCheese

#Deus Ex Machina (part 1)
execute unless entity @s[tag=noPortal] run summon marker 33 57 73 {Tags:["machinacheck"]}
scoreboard players add @e[tag=machinacheck,type=marker] Machina 0
execute as @e[tag=machinacheck,type=marker] at @s run function achievements:machinacheckyellow

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
execute if entity @s[tag=doTying,tag=!tyingOff] run schedule function achievements:aftergame 80t append
execute if entity @s[tag=!doTying] run function achievements:aftergame