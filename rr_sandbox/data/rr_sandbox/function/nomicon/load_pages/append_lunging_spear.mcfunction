# dialog_name, include_in_full_list

scoreboard players reset $no_lunging_spear global
$function rr_sandbox:nomicon/load_pages/append_item_limited {dialog_name: "$(dialog_name)", trigger_input_id: 61, item_loot_table: "items:experimental/lunging_spear", item_plain_name_singular: "Lunging Spear", item_plain_name_plural: "Lunging Spears", color: "white", include_in_full_list: $(include_in_full_list)b}
