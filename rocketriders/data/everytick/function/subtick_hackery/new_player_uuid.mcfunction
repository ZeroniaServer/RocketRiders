tag @a[x=0] remove subtick_hackery.player
tag @a[limit=1,x=0] add subtick_hackery.player
data modify storage rocketriders:subtick_hackery player set from entity @a[limit=1,x=0,tag=subtick_hackery.player] UUID
