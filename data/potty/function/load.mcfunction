#declare storage potty:player
#declare storage potty:item
#declare storage potty:effects
#declare storage potty:combat

scoreboard objectives add melee_kill_combo dummy
scoreboard objectives add ranged_hit_combo dummy
scoreboard objectives add melee_kill_combo_power dummy
scoreboard objectives add ranged_hit_combo_power dummy
scoreboard objectives add lose_melee_kill_combo_time dummy
scoreboard objectives add lose_ranged_hit_combo_time dummy
scoreboard objectives add lose_melee_kill_combo_left_time dummy
scoreboard objectives add lose_ranged_hit_combo_left_time dummy
scoreboard objectives add display_combo_left_time dummy
scoreboard objectives add mainhand_sword_held_time dummy

scoreboard objectives add health dummy
scoreboard objectives add health_reflecting_back dummy
scoreboard objectives add strength dummy
scoreboard objectives add permanent_strength_buff dummy
scoreboard objectives add permanent_defense_buff dummy
scoreboard objectives add defense dummy
scoreboard objectives add ferocity dummy
scoreboard objectives add ferocity_count dummy
scoreboard objectives add received_ferocity_damage dummy

# scoreboard objectives add fire_time dummy


scoreboard objectives add scheduled_ferocity_count dummy
scoreboard objectives add applying_ferocity_damage dummy
scoreboard objectives add intelligence dummy
scoreboard objectives add permanent_intelligence_buff dummy

scoreboard objectives add weapon_damage dummy
scoreboard objectives add crit_chance dummy
scoreboard objectives add crit_damage dummy
scoreboard objectives add magic_damage dummy
scoreboard objectives add magic_resistance dummy
scoreboard objectives add permanent_crit_damage_buff dummy
scoreboard objectives add max_health dummy
scoreboard objectives add max_mana dummy
scoreboard objectives add mana dummy
scoreboard objectives add base_sweeping_range dummy
scoreboard objectives add sweeping_range dummy
scoreboard objectives add gamemode dummy


scoreboard objectives add __spell_mana_cost dummy
scoreboard objectives add received_magic_damage dummy
scoreboard objectives add final_damage dummy
scoreboard objectives add final_magic_damage dummy
scoreboard objectives add final_crit_damage dummy
scoreboard objectives add final_damage_to_add dummy
scoreboard objectives add click_required_mana dummy
scoreboard objectives add sneak_required_mana dummy
scoreboard objectives add reduced_final_damage dummy
scoreboard objectives add attack_speed dummy
scoreboard objectives add attack_cooldown dummy
scoreboard objectives add next_attack_cooldown dummy
scoreboard objectives add selected_slot dummy
scoreboard objectives add wand_cast_time dummy
scoreboard objectives add wand_sneak_time dummy
scoreboard objectives add __wand_cast_progress dummy
scoreboard objectives add max_wand_cast_time dummy
scoreboard objectives add max_wand_sneak_time dummy
scoreboard objectives add required_wand_sneak_time dummy
scoreboard objectives add __previous_selected_slot dummy
scoreboard objectives add __health_ratio dummy
scoreboard objectives add __health_deci dummy
scoreboard objectives remove __number
scoreboard objectives add __number dummy
scoreboard objectives add __gear_piece_stat dummy
scoreboard objectives add __shifted_stat_value dummy
scoreboard objectives add __time_since_spawn dummy
scoreboard objectives add __time_period dummy
scoreboard objectives add __regen_amount dummy
scoreboard objectives add __sneak_trigger minecraft.custom:sneak_time
scoreboard objectives add sneak_time dummy

# REMOVING THIS WILL CAUSE BUGS
scoreboard objectives add global_time dummy
scoreboard objectives add __entity_group_id dummy

gamerule naturalRegeneration false

# debug
scoreboard objectives add debug.flags dummy



#route
scoreboard objectives add route.count dummy


# self-loop functions
# function potty:stats/regen_wrapper

#alias uuid globalitemhelper 1d1c1adf-b789-412b-b06d-ae22e9144c85

kill 706f7474-7973-4872-0000-000000000001
summon item_display ~ ~ ~ {UUID:[I;1886352500,2037598322,0,1],CustomName:'"Global Item Helper"'}

kill 706f7474-7973-4872-0000-000000000002
summon marker ~ ~ ~ {UUID:[I;1886352500,2037598322,0,2],CustomName:'{"text":"Global Vector Helper","color":"light_purple","bold":true}'}

kill 706f7474-7973-4872-0000-000000000003
summon snowball ~ ~ ~ {UUID:[I;1886352500,2037598322,0,3],CustomName:'{"text":"Global UUID Helper","color":"light_purple","bold":true}',Item:{id:"air"},NoGravity:true}


function potty:init
function potty.dungeon:init
