function gamemodes:storesettings
function arenaclear:enableitems
tag @s remove switchGamemodes
tag @s add noSabers
tag @s add customSaberMsg
tag @s add itemDelayOff
tag @s add stackingOn
tag @s add doStacking
tag @s add hotbarLimitOff
tag @s remove doHotbarLimit
tag @s[tag=Minute] add MinuteWasOn
tag @s add MinuteOff
tag @s[tag=WindDown] add WindDownWasOn
tag @s add WindDownOff
tag @s[tag=SurpriseEgg] add SurpriseEggWasOn
tag @s add SurpriseEggOff
tag @s[tag=Chaos] add ChaosWasOn
tag @s add ChaosOff
tag @s add normalForce
tag @s add lightningForce
tag @s add heavyForce
tag @s add utilForce
tag @s add hasBees
tag @s add customBossbar
tag @s add sandboxEnabled