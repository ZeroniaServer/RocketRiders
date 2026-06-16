kill @e[x=0,type=marker,tag=ctf_flag]

execute unless predicate game:modifiers/hardcore/on unless predicate game:arena_details/top/castle run summon marker 34 64 -64 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.left"]}
execute unless predicate game:modifiers/hardcore/on unless predicate game:arena_details/top/castle run summon marker -10 64 -64 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.right"]}
execute unless predicate game:modifiers/hardcore/on unless predicate game:arena_details/top/castle run summon marker -10 64 64 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.left"]}
execute unless predicate game:modifiers/hardcore/on unless predicate game:arena_details/top/castle run summon marker 34 64 64 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.right"]}

execute unless predicate game:modifiers/hardcore/on if predicate game:arena_details/top/castle run summon marker 36 69 -64 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.left"]}
execute unless predicate game:modifiers/hardcore/on if predicate game:arena_details/top/castle run summon marker -12 69 -64 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.right"]}
execute unless predicate game:modifiers/hardcore/on if predicate game:arena_details/top/castle run summon marker -12 69 64 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.left"]}
execute unless predicate game:modifiers/hardcore/on if predicate game:arena_details/top/castle run summon marker 36 69 64 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.right"]}

execute if predicate game:modifiers/hardcore/on run summon marker 34 64 -65 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.left"]}
execute if predicate game:modifiers/hardcore/on run summon marker -10 64 -65 {Tags:["ctf_flag","ctf_flag.blue","ctf_flag.right"]}
execute if predicate game:modifiers/hardcore/on run summon marker -10 64 65 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.left"]}
execute if predicate game:modifiers/hardcore/on run summon marker 34 64 65 {Tags:["ctf_flag","ctf_flag.yellow","ctf_flag.right"]}
