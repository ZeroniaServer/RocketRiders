##Lockdown achievement
##Only applicable to Powerups Mode
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={bCapturedTime=1201..}] run advancement grant @s[predicate=custom:team/blue] only achievements:rr_challenges/lockdown
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={yCapturedTime=1201..}] run advancement grant @s[predicate=custom:team/yellow] only achievements:rr_challenges/lockdown