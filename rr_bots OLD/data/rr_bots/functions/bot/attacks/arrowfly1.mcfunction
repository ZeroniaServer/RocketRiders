execute if entity @s[tag=BlueBot] facing entity @e[predicate=custom:indimension,limit=1,sort=nearest,team=Yellow,distance=5..45] eyes positioned 0.0 0 0.0 run summon arrow ^ ^ ^4.5 {life:10s,Tags:["BArrow","NewBArrow"],Fire:1000s,CustomName:'"a Blue Bot"'}
execute if entity @s[tag=YellowBot] facing entity @e[predicate=custom:indimension,limit=1,sort=nearest,team=Blue,distance=5..45] eyes positioned 0.0 0 0.0 run summon arrow ^ ^ ^4.5 {life:10s,Tags:["BArrow","NewBArrow"],Fire:1000s,CustomName:'"a Yellow Bot"'}
execute as @e[predicate=custom:indimension,type=arrow,tag=NewBArrow] run function rr_bots:bot/attacks/arrowfly2