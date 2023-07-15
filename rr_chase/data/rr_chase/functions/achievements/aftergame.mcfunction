##Any achievements to be given by the official end of the game.
#| || || |_
scoreboard players add @a[team=Blue,tag=Winner] WinStreak 1
advancement grant @a[team=Blue,scores={WinStreak=10..},tag=Loser] only achievements:rr_challenges/loss
scoreboard players reset @a[team=Blue,tag=Loser] WinStreak

#Ground Bound
advancement grant @a[team=Blue,scores={jumps=..0},tag=Winner] only achievements:rr_challenges/groundbound

#Immortal
advancement grant @a[team=Blue,scores={deaths=..0}] only achievements:rr_challenges/immortal

#Ballet Dancer
advancement grant @a[team=Blue,tag=!FailedBallet,tag=firstMoved] only achievements:rr_challenges/ballet

#Moonwalker
advancement grant @a[team=Blue,tag=!FailedMoon,tag=firstMoved] only achievements:rr_challenges/moonwalker

#Pacifist
advancement grant @a[tag=Winner,scores={kills=..0}] only achievements:rr_challenges/pacifist