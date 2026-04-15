# Sorts the keys in JSON files in a visually appealing way for the sake of uniformity and potentially undiagnosed OCD

import os
import json
from typing import Any

def custom_sort(value: Any, parent: str = None) -> Any:   
    if isinstance(value, list):
        return [
            custom_sort(v,parent) for v in value
        ]
    
    if isinstance(value, dict):
        items: list[tuple[str,Any]] = value.items()

        sorted_items: list[tuple[str,Any]] = []
        for k, v in items:
            # "type" ID has highest priority
            if (k == "type") and (isinstance(v,str)):
                sorted_items.append(((-100,k),k,v))
                continue

            # "function" has highest priority in loot functions
            if (k == "function") and (parent != "rewards") and (v.split(":")[0] == "minecraft"):
                sorted_items.append(((-100,k),k,v))
                continue

            # "parent" has highest priority in advancements
            if (k == "parent") and (isinstance(v,str)):
                sorted_items.append(((-100,k),k,v))
                continue

            # "condition" has highest priority in predicates
            if (k == "condition") and (isinstance(v,str)) and (v.split(":")[0] == "minecraft"):
                sorted_items.append(((-100,k),k,v))
                continue
            
            # "condition" and "conditions" have lowest priority in other places
            if (k == "condition") or (k == "conditions"):
                sorted_items.append(((100,k),k,v))
                continue

            # "rolls" and "bonus_rolls" have high priority in loot table pools
            if (parent == "pools"):
                if (k == "rolls"):
                    sorted_items.append(((-99,k),k,v))
                    continue
                if (k == "bonus_rolls"):
                    sorted_items.append(((-98,k),k,v))
                    continue

            # "name" and "weight" have high priority in loot table entries
            if (parent == "entries"):
                if (k == "name"):
                    sorted_items.append(((-99,k),k,v))
                    continue
                if (k == "weight"):
                    sorted_items.append(((-98,k),k,v))
                    continue

            # dialog priorities
            if ("title" in value) and ("type" in value):
                if (k == "title"):
                    sorted_items.append(((-99,k),k,v))
                    continue
                if (k == "external_title"):
                    sorted_items.append(((-98,k),k,v))
                    continue
                if (k == "body"):
                    sorted_items.append(((-97,k),k,v))
                    continue
                if (k == "action"):
                    sorted_items.append(((100,k),k,v))
                    continue
                if (k == "exit_action"):
                    sorted_items.append(((100,k),k,v))
                    continue
                if (k == "actions"):
                    sorted_items.append(((100,k),k,v))
                    continue

            # "min" before "max"
            if (len(k) >= 3) and (k[0:3] == "min"):
                sorted_items.append(((0,"min"+k[3:]+"0"),k,v))
                continue
            if (len(k) >= 3) and (k[0:3] == "max"):
                sorted_items.append(((0,"min"+k[3:]+"1"),k,v))
                continue
            
            # "extra" after "text"
            if (k == "extra") and ("text" in value):
                sorted_items.append(((1,k),k,v))
                continue

            # "hover_event" and "click_event" last
            if (k == "hover_event"):
                sorted_items.append(((2,k),k,v))
                continue
            if (k == "click_event"):
                sorted_items.append(((3,k),k,v))
                continue
            
            # sort everything else alphabetically
            sorted_items.append(((0,k),k,v))
        
        return {
            k: custom_sort(v,k) for _, k, v in sorted(sorted_items)
        }

    return value
    
if __name__ == "__main__":
    print("Sorting keys in JSON files...")
    for dirpath, dirnames, filenames in os.walk("."):
        for file_name in filenames:
            
            file_path = os.path.join(dirpath,file_name)
            file_extension = file_name.split(".")[-1]
            if file_extension != "json":
                continue

            with open(file_path,"r") as file:
                contents = json.load(file)
            
            with open(file_path,"w") as file:
                json.dump(custom_sort(contents),file,indent="  ")
                file.write("\n")
    
    print("Done!")
