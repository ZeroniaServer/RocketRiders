##Any achievements to be given if Blue wins
#Pacifist
advancement grant @a[team=Blue,scores={kills=..0}] only achievements:rr_challenges/pacifist

#Swiss Cheese
execute as @s[tag=!Hardcore] run scoreboard players set SwissCheese SwissCheese 11500
execute as @s[tag=!Hardcore] store result score Blue SwissCheese run clone 38 34 -52 -14 63 -66 -48 46 -1 filtered air
#Hardcore variant - check less blocks
execute as @s[tag=Hardcore] run scoreboard players set SwissCheese SwissCheese 766
execute as @s[tag=Hardcore] store result score Blue SwissCheese run clone 38 34 -66 -14 63 -66 -48 46 -1 filtered air
execute if score Blue SwissCheese >= SwissCheese SwissCheese run advancement grant @a[team=Blue] only achievements:rr_challenges/swiss_cheese
scoreboard players reset SwissCheese SwissCheese

#Simple and Clean
execute if score Blue SwissCheese matches 0 if score @s gametime matches ..2400 run advancement grant @a[team=Blue] only achievements:rr_challenges/simple_and_clean
scoreboard players reset Blue SwissCheese

#Ground Bound
execute as @a[team=Blue,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1,type=area_effect_cloud] run advancement grant @s only achievements:rr_challenges/groundbound

#I'm Helping!
execute as @a[team=Blue,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BroadSpawned=0,BSurpriseSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,DuplexSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0,YSurpriseSpawned=0}] run advancement grant @s only achievements:rr_challenges/helping

#Deus Ex Machina
summon armor_stand 38 63 -66 {Tags:["machinacheck"],NoGravity:1b,Invisible:1b}
scoreboard players add @e[tag=machinacheck,type=armor_stand] Machina 0
execute as @e[tag=machinacheck,type=armor_stand] at @s run function achievements:machinacheckblue

#One is the Loneliest Number
execute if score @s bluesCount matches 1 if score @s yellowsCount matches 2.. run advancement grant @a[team=Blue] only achievements:rr_challenges/loneliest

#Forsaken
execute if score @s bluesCount < @s origBCount run advancement grant @a[team=Blue] only achievements:rr_challenges/forsaken

#I Swear I Had It (part 1)
execute as @a[team=Yellow] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[team=Yellow,scores={HasMissiles=1..}] at @s if entity @s[z=-74,dz=28] run tag @s add HadIt

#Other loss-related achievements
execute if entity @s[tag=doTying,tag=!tyingOff] run schedule function achievements:afterloss 81t append
execute if entity @s[tag=!doTying] run schedule function achievements:afterloss 1t append