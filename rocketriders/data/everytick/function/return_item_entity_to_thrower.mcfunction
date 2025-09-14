loot replace block 0 184 -16 container.1 26 loot custom:empty
item replace block 0 184 -16 container.0 from entity @s contents
execute on origin run loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]
kill @s
