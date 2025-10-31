execute if entity @a[x=0,predicate=rr_crusade:kit/knight] run function rr_crusade:items/missile/knight
execute if entity @a[x=0,predicate=rr_crusade:kit/archer] run function rr_crusade:items/missile/archer
execute if entity @a[x=0,predicate=rr_crusade:kit/mage] run function rr_crusade:items/missile/mage
scoreboard players add $missile CmdData 1