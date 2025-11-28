scoreboard players reset * gamemode_components
scoreboard players set $arena/no_base_details gamemode_components 1
scoreboard players set $armor/crusade_kit_dependent gamemode_components 1
scoreboard players set $arrow_pickup/only_crusade_mode_archer_kit gamemode_components 1
scoreboard players set $config_override.clutter_collector gamemode_components -1
scoreboard players set $config_override.hardcore gamemode_components -1
scoreboard players set $config_override.item_stacking gamemode_components 1
scoreboard players set $config_override.molerat gamemode_components -1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $config_override.special_treatment gamemode_components -1
scoreboard players set $config_override.surprise_eggs gamemode_components -1
scoreboard players set $small_portals gamemode_components 1
scoreboard players set $decreased_shooting_saber_attack_damage gamemode_components 1
scoreboard players set $explosions_crack_deepslate_bricks gamemode_components 1
scoreboard players set $main_item/crusade_kit_dependent gamemode_components 1
scoreboard players set $portal_crystal_protection gamemode_components 1

tag @s remove switchGamemodes
function arenaclear:lockdecos
tag @s add portalDecosOff
tag @s add customPrevention
tag @s add arrowLimit
tag @s add SuddenDeathCustom
tag @s add portalOverride
tag @s add crusadeEnabled

#item disabling/enabling
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngVortex] add vortexWasOff
tag @s add rngVortex
tag @s[tag=!rngShield] add shieldWasOff
tag @s add rngShield
tag @s[tag=!rngObshield] add obshieldWasOff
tag @s add rngObshield
tag @s[tag=!rngSplash] add splashWasOff
tag @s add rngSplash
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngNova] add novaWasOff
tag @s add rngNova
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil

tag @s[tag=!rngAux] add auxWasOff
tag @s add rngAux
tag @s[tag=!rngWar] add warWasOff
tag @s add rngWar
tag @s[tag=!rngJbuster] add jbusterWasOff
tag @s add rngJbuster
tag @s[tag=rngRift] add riftWasOn
tag @s remove rngRift
tag @s[tag=!rngHeavy] add heavyWasOff
tag @s add rngHeavy

tag @s[tag=!rngHur] add hurWasOff
tag @s add rngHur
tag @s[tag=!rngThun] add thunWasOff
tag @s add rngThun
tag @s[tag=!rngLightning] add lightningWasOff
tag @s add rngLightning

tag @s[tag=!rngAnt] add antWasOff
tag @s add rngAnt
tag @s[tag=!rngBlade] add bladeWasOff
tag @s add rngBlade
tag @s[tag=!rngCata] add cataWasOff
tag @s add rngCata
tag @s[tag=!rngCitadel] add citadelWasOff
tag @s add rngCitadel
tag @s[tag=rngEguard] add guardWasOn
tag @s remove rngEguard
tag @s[tag=!rngGemi] add gemiWasOff
tag @s add rngGemi
tag @s[tag=!rngLift] add liftWasOff
tag @s add rngLift
tag @s[tag=!rngNull] add nullWasOff
tag @s add rngNull
tag @s[tag=!rngSlash] add slashWasOff
tag @s add rngSlash
tag @s[tag=!rngToma] add tomaWasOff
tag @s add rngToma
tag @s[tag=!rngNormal] add normalWasOff
tag @s add rngNormal