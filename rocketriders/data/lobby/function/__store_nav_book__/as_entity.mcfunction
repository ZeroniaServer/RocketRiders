loot replace entity @s contents loot lobby:nav_book_template
data modify storage rocketriders:navbook item set value {count:1,components:{}}
data modify storage rocketriders:navbook item merge from entity @s item
loot replace entity @s contents loot lobby:nav_book_template_pages
execute unless data storage rocketriders:navbook item.components.minecraft:written_book_content run data modify storage rocketriders:navbook item.components.minecraft:written_book_content set value {author:"",title:""}
data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages set from entity @s item.components.minecraft:lore
kill @s
