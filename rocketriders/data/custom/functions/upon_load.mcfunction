scoreboard objectives add splashtick dummy
scoreboard objectives add FlagDisp dummy {"text":"Flag Count","color":"green","bold":"true"}

execute unless entity @e[tag=parkourStart,type=area_effect_cloud] run summon area_effect_cloud -31 194 18 {Tags:["parkourStart"],Duration:2000000000}
scoreboard objectives add parkourTimer dummy
scoreboard objectives add parkourMins dummy
scoreboard objectives add parkourSecs dummy
scoreboard objectives add checkpoint dummy
scoreboard objectives add dropBarrier minecraft.dropped:minecraft.barrier
scoreboard objectives add dropClock minecraft.dropped:minecraft.clock