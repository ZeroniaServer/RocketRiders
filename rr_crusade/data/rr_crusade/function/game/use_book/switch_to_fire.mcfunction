title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Fire","color":"gold"}]
execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book"}] run return run item modify entity @s weapon.mainhand items:spell_book/fire
execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book"}] run return run item modify entity @s weapon.offhand items:spell_book/fire
