scoreboard objectives add splashtick dummy
scoreboard objectives add FlagDisp dummy {"text":"Flag Count","color":"green","bold":"true"}

execute unless entity @e[tag=parkourStart,type=area_effect_cloud] run summon area_effect_cloud -31 194 18 {Tags:["parkourStart"],Duration:2000000000}
execute unless entity @e[tag=parkourC1,type=area_effect_cloud] run summon area_effect_cloud -28 197 68 {Tags:["parkourC1"],Duration:2000000000}
execute unless entity @e[tag=parkourC2,type=area_effect_cloud] run summon area_effect_cloud -13 200 58 {Tags:["parkourC2"],Duration:2000000000}
execute unless entity @e[tag=parkourC3,type=area_effect_cloud] run summon area_effect_cloud -16 200 93 {Tags:["parkourC3"],Duration:2000000000}
execute unless entity @e[tag=parkourEnd,type=area_effect_cloud] run summon area_effect_cloud -29 190 110 {Tags:["parkourEnd"],Duration:2000000000}

scoreboard objectives add parkourTimer dummy
scoreboard objectives add parkourMins dummy
scoreboard objectives add parkourSecs dummy
scoreboard objectives add checkpoint dummy
scoreboard objectives add dropBarrier minecraft.dropped:minecraft.barrier
scoreboard objectives add dropClock minecraft.dropped:minecraft.clock
scoreboard objectives add chkpntCooldown dummy
scoreboard objectives add bestParkourMins dummy
scoreboard objectives add bestParkourSecs dummy
scoreboard objectives add bestParkourTime dummy
scoreboard objectives add finalParkourTime dummy