##Any achievements to be given by the official end of the game.
##The execution of this function may be delayed for the Tie/Sudden Death window.
#| || || |_
scoreboard players add @a[predicate=custom:indimension,tag=Winner] WinStreak 1
advancement grant @a[predicate=custom:indimension,scores={WinStreak=10..},tag=Loser] only achievements:rr_challenges/loss
scoreboard players reset @a[predicate=custom:indimension,tag=Loser] WinStreak

#Swiss Cheese (part 2)
advancement grant @a[predicate=custom:indimension,tag=SwissCheese,tag=Winner] only achievements:rr_challenges/swiss_cheese

#Simple And Clean (part 2)
advancement grant @a[predicate=custom:indimension,tag=SimpleAndClean,tag=Winner] only achievements:rr_challenges/simple_and_clean

#Deus Ex Machina (part 2)
advancement grant @a[predicate=custom:indimension,tag=DeusExMachina,tag=Winner] only achievements:rr_challenges/machina

#I Swear I Had It (part 2)
advancement grant @a[predicate=custom:indimension,tag=HadIt,tag=Loser] only achievements:rr_challenges/had_it
scoreboard players reset @a[predicate=custom:indimension] HasMissiles

#One is the Loneliest Number (part 2)
advancement grant @a[predicate=custom:indimension,tag=Loneliest,tag=Winner] only achievements:rr_challenges/loneliest

#Forsaken (part 2)
advancement grant @a[predicate=custom:indimension,tag=Forsaken,tag=Winner] only achievements:rr_challenges/forsaken

#Ground Bound (part 2)
advancement grant @a[predicate=custom:indimension,tag=GroundBound,tag=Winner] only achievements:rr_challenges/groundbound

#Immortal (part 2) - applies to both winners/losers but only if win/loss still stands
execute as @a[predicate=custom:indimension,tag=Immortal] unless entity @s[tag=!Winner,tag=!Loser] run advancement grant @s only achievements:rr_challenges/immortal

#Ballet Dancer - applies to both winners/losers but only if win/loss still stands
execute as @a[predicate=custom:indimension,tag=!FailedBallet,tag=firstMoved] unless entity @s[tag=!Winner,tag=!Loser] run advancement grant @s only achievements:rr_challenges/ballet

#Moonwalker - applies to both winners/losers but only if win/loss still stands
execute as @a[predicate=custom:indimension,tag=!FailedMoon,tag=firstMoved] unless entity @s[tag=!Winner,tag=!Loser] run advancement grant @s only achievements:rr_challenges/moonwalker

#Pacifist - works since players can't get kills after game end
advancement grant @a[predicate=custom:indimension,tag=Winner,scores={kills=..0}] only achievements:rr_challenges/pacifist

#I'm Helping! - works since players can't spawn missiles after game end
advancement grant @a[predicate=custom:indimension,tag=Winner,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BroadSpawned=0,BSurpriseSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,DuplexSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0,YSurpriseSpawned=0}] only achievements:rr_challenges/helping