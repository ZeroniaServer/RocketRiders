tag @s remove switchGamemodes
tag @s add powerupsEnabled
tag @s[tag=Residers] add ResidersWasOn
tag @s add ResidersOff
tag @s[tag=Chaos] add ChaosWasOn
tag @s add ChaosOff
tag @s add customObsidian
tag @s add customSpawn
execute unless entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["captureMiddle"]}