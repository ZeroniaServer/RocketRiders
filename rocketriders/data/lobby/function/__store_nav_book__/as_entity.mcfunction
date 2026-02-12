loot replace entity @s contents loot lobby:nav_book_template
data modify storage rocketriders:navbook item set value {count:1,components:{}}
data modify storage rocketriders:navbook item merge from entity @s item
kill @s

data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages[].raw.extra[{font:"rocketriders:replace_me",text:"description"}] set from storage rocketriders:navbook description
data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages[].raw.extra[{font:"rocketriders:replace_me",text:"parkourtips"}] set from storage rocketriders:navbook parkourtips
data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages[].raw.extra[{font:"rocketriders:replace_me",text:"crusade_mode_settings"}] set from storage rocketriders:navbook crusade_mode_settings
data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages[].raw.extra[{font:"rocketriders:replace_me",text:"join_teams"}] set from storage rocketriders:navbook join_teams
data modify storage rocketriders:navbook item.components.minecraft:written_book_content.pages[].raw.extra[{font:"rocketriders:replace_me",text:"modroom"}] set from storage rocketriders:navbook modroom
