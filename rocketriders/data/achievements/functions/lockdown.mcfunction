##Lockdown achievement
##Only applicable to Powerups Mode
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={bCapturedTime=1201..}] run advancement grant @s[team=Blue] only achievements:rr_challenges/lockdown
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={yCapturedTime=1201..}] run advancement grant @s[team=Yellow] only achievements:rr_challenges/lockdown