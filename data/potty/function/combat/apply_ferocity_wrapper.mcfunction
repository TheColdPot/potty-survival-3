execute if data storage potty:combat scheduled_ferocity[0] run function potty:combat/attack/apply_ferocity with storage potty:combat scheduled_ferocity[0]
execute if data storage potty:combat scheduled_ferocity[1] run function potty:combat/attack/apply_ferocity with storage potty:combat scheduled_ferocity[1]
execute if data storage potty:combat scheduled_ferocity[2] run function potty:combat/attack/apply_ferocity with storage potty:combat scheduled_ferocity[2]
data remove storage potty:combat scheduled_ferocity[{count: 0}]


schedule function potty:combat/apply_ferocity_wrapper 2t replace
