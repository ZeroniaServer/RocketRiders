scoreboard players reset * gamemode_components
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $main_item/bow gamemode_components 1

tag @s remove switchGamemodes
tag @s add powerupsEnabled
tag @s[tag=Chaos] add ChaosWasOn
tag @s add ChaosOff
tag @s add customObsidian
tag @s add customSpawnpointBlockProtection
execute unless entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["captureMiddle"]}