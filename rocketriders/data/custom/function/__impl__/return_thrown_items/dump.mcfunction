# Dump it into the inventory (may be deleted)
item replace block 0 184 -16 container.1 from entity @s contents
execute on origin run return run loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}] 
