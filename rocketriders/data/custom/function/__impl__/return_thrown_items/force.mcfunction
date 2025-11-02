# Force it into the first slot and dump whatever item was there
execute on origin run item replace block 0 184 -16 container.0 from entity @s hotbar.0
item replace block 0 184 -16 container.1 from entity @s contents
execute on origin run item replace entity @s hotbar.0 from block 0 184 -16 container.1
item replace block 0 184 -16 container.1 with air
execute on origin run loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}] 
