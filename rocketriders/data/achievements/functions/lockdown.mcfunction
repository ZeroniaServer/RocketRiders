##Lockdown achievement
##Only applicable to Powerups Mode

execute if entity @e[tag=captureMiddle,scores={bCapturedTime=1201..},type=area_effect_cloud] run advancement grant @a[team=Blue] only achievements:rr_challenges/lockdown
execute if entity @e[tag=captureMiddle,scores={yCapturedTime=1201..},type=area_effect_cloud] run advancement grant @a[team=Yellow] only achievements:rr_challenges/lockdown