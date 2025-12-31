loot replace entity @s contents loot lobby:nav_book_template
data modify storage rocketriders:navbook item set value {count:1,components:{}}
data modify storage rocketriders:navbook item merge from entity @s item
kill @s
