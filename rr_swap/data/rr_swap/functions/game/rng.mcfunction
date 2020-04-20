tag @e[tag=RNGSwap,sort=random,limit=1] add SelectSwapRNG



#0 = dark yellow
#1 = dark blue


execute as @e[tag=SelectSwapRNG,tag=RNGSwap1] if score SwapScore swapscore matches 0 run execute as @a[team=Blue] run 