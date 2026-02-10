# If white, do a white explosion
execute if predicate game:gamemode_components/neutral_items run return run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",colors:[15790320],fade_colors:[11743532,3887386,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],has_trail:true,has_twinkle:true}]}}}}
# Otherwise, do green
summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",colors:[4312372],fade_colors:[3887386],has_trail:true,has_twinkle:true}]}}}}
