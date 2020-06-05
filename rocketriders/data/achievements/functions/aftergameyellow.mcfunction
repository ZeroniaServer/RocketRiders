#Pacifist
advancement grant @a[team=Yellow,scores={kills=..0}] only achievements:rr_challenges/pacifist

#Swiss Cheese
scoreboard players set SwissCheese SwissCheese 11500
execute store result score Yellow SwissCheese run clone 38 34 52 -14 63 66 -48 46 -1 filtered air
execute if score Yellow SwissCheese >= SwissCheese SwissCheese run advancement grant @a[team=Yellow] only achievements:rr_challenges/swiss_cheese
scoreboard players reset Yellow SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Ground Bound
execute as @a[team=Yellow,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1] run advancement grant @s only achievements:rr_challenges/groundbound

#I'm helping!
execute as @a[team=Yellow,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0}] run advancement grant @s only achievements:rr_challenges/helping

#| || || |_
scoreboard players add @a[team=Yellow] WinStreak 1
execute as @a[team=Blue,scores={WinStreak=10..}] run advancement grant @s only achievements:rr_challenges/loss
scoreboard players reset @a[team=Blue] WinStreak

#Dues ex machina
scoreboard players set Machina Machina 1
execute store result score Yellow Machina run clone 38 63 66 -14 34 66 48 46 -1 filtered air
execute if score Yellow Machina >= Machina Machina run advancement grant @a[team=Yellow] only achievements:rr_challenges/machina
scoreboard players reset Yellow Machina
scoreboard players reset Machina Machina

#One is the Loneliest Number
execute if score @s yellowsCount matches 1 if score @s bluesCount matches 2.. run advancement grant @a[team=Yellow] only achievements:rr_challenges/loneliest