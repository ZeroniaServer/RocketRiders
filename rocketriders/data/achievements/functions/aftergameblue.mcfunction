#Pacifist
advancement grant @a[team=Blue,scores={kills=..0}] only achievements:rr_challenges/pacifist

#Swiss Cheese
scoreboard players set SwissCheese SwissCheese 11500
execute store result score Blue SwissCheese run clone 38 34 -52 -14 63 -66 -48 46 -1 filtered air
execute if score Blue SwissCheese >= SwissCheese SwissCheese run advancement grant @a[team=Blue] only achievements:rr_challenges/swiss_cheese
scoreboard players reset Blue SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Ground Bound
execute as @a[team=Blue,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1] run advancement grant @s only achievements:rr_challenges/groundbound

#I'm helping!
execute as @a[team=Blue,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0}] run advancement grant @s only achievements:rr_challenges/helping

#| || || |_
scoreboard players add @a[team=Blue] WinStreak 1
execute as @a[team=Yellow,scores={WinStreak=10..}] run advancement grant @s only achievements:rr_challenges/loss
scoreboard players reset @a[team=Yellow] WinStreak


#Dues ex machina
scoreboard players set Machina Machina 1
execute store result score Blue Machina run clone 38 34 -66 -14 63 -66 48 46 -1 filtered air
execute if score Blue Machina >= Machina Machina run advancement grant @a[team=Blue] only achievements:rr_challenges/machina
scoreboard players reset Blue Machina
scoreboard players reset Machina Machina