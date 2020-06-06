#lockdown
execute if entity @e[tag=captureMiddle,scores={bCapturedTime=1201..}] run advancement grant @a[team=Blue] only achievements:rr_challenges/lockdown
execute if entity @e[tag=captureMiddle,scores={yCapturedTime=1201..}] run advancement grant @a[team=Yellow] only achievements:rr_challenges/lockdown