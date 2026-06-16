# arguments: base_color, patterns

$loot replace block 0 184 -16 container.3 loot {pools:[{rolls:1,entries:[{name:$(base_color)_banner,type:item,functions:[{function:set_components,components:{banner_patterns:$(patterns),enchantments:{binding_curse:1},tooltip_display:{hidden_components:[enchantments]},enchantment_glint_override:false}},{function:set_name,entity:this,target:item_name,name:[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}," Flag"]}]}]}]}
