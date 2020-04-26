scoreboard objectives add HasSlapFish dummy
scoreboard objectives add HasTotem dummy
scoreboard objectives add HasFirework dummy
scoreboard objectives add HasWitherArrow dummy
scoreboard objectives add allWitherArrow dummy
scoreboard objectives add wrongWitherArrow dummy
scoreboard objectives add DealtDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add NovaShot minecraft.used:minecraft.crossbow
scoreboard objectives remove HasChorusFruit
scoreboard objectives remove HasSmokeBomb
scoreboard objectives remove HasBarricade
scoreboard objectives remove HasFire
scoreboard objectives remove HasPoisArrow
scoreboard objectives remove allPoisArrow
scoreboard objectives remove wrongPoisArrow
scoreboard objectives remove HasFireworks
kill @e[tag=PlatBlock]
bossbar remove rr_powerups:blue_capture_progress
bossbar remove rr_powerups:yellow_capture_progress
data merge entity @e[tag=Selection,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_pve,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_powerups,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_crusade,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_normal,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_swap,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_sandbox,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
data merge entity @e[tag=rr_ranked,limit=1] {Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}