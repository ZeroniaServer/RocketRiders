#| || || |_
scoreboard players add @a[tag=Winner] WinStreak 1
execute as @a[scores={WinStreak=10..},tag=Loser] run advancement grant @s only achievements:rr_challenges/loss
scoreboard players reset @a[tag=Loser] WinStreak

#I Swear I Had It (part 2)
execute as @a[tag=HadIt,tag=Loser] run advancement grant @s only achievements:rr_challenges/had_it
scoreboard players reset @a HasMissiles
tag @a remove HadIt