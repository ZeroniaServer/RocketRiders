#Pacifist
advancement grant @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] only challenges:rrachievements/pacifist
scoreboard players add @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] XP 20
tag @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] add CompletedPacifist

advancement grant @a[tag=!CompletedPacifist,team=Yellow,scores={kills=..0}] only challenges:rrachievements/pacifist
scoreboard players add @a[tag=!CompletedPacifist,team=Yellow,scores={kills=..0}] XP 20
tag @a[tag=!CompletedPacifist,team=Yellow,scores={kills=..0}] add CompletedPacifist

#Immortal
advancement grant @a[team=Blue,tag=!CompletedImmortal,scores={deaths=..0}] only challenges:rrachievements/immortal
scoreboard players add @a[team=Blue,tag=!CompletedImmortal,scores={deaths=..0}] XP 10
tag @a[team=Blue,tag=!CompletedImmortal,scores={deaths=..0}] add CompletedImmortal

advancement grant @a[team=Yellow,tag=!CompletedImmortal,scores={deaths=..0}] only challenges:rrachievements/immortal
scoreboard players add @a[team=Yellow,tag=!CompletedImmortal,scores={deaths=..0}] XP 10
tag @a[team=Yellow,tag=!CompletedImmortal,scores={deaths=..0}] add CompletedImmortal

#Ballet Dancer
advancement grant @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet] only challenges:rrachievements/ballet
scoreboard players add @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet] XP 45
tag @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet] add CompletedBallet

advancement grant @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet] only challenges:rrachievements/ballet
scoreboard players add @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet] XP 45
tag @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet] add CompletedBallet

scoreboard players reset @a jumping
scoreboard players reset @a timeSinceJump