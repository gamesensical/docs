# docs

/*Documentation of the gamesense lua api*

/*Table of Contents:

*1. Events*

*2. CVARS*

/*The following events can be found in csgo\pak01_dir.vpk in the file resource\modevents.res.*

/*Other events not listed here can be found in:*

resource\gameevents.res

resource\demoimportantevents.res

resource\serverevents.res

resource\hltvevents.res

resource\replayevents.res

Contents

1  player_death

2  other_death

3  player_hurt

4  item_purchase

5  bomb_beginplant

6  bomb_abortplant

7  bomb_planted

8  bomb_defused

9  bomb_exploded

10  bomb_dropped

11  bomb_pickup

12  defuser_dropped

13  defuser_pickup

14  announce_phase_end

15  cs_intermission

16  bomb_begindefuse

17  bomb_abortdefuse

18  hostage_follows

19  hostage_hurt

20  hostage_killed

21  hostage_rescued

22  hostage_stops_following

23  hostage_rescued_all

24  hostage_call_for_help

25  vip_escaped

26  vip_killed

27  player_radio

28  bomb_beep

29  weapon_fire

30  weapon_fire_on_empty

31  grenade_thrown

32  weapon_outofammo

33  weapon_reload

34  weapon_zoom

35  silencer_detach

36  inspect_weapon

37  weapon_zoom_rifle

38  player_spawned

39  item_pickup

40  item_pickup_slerp

41  item_pickup_failed

42  item_remove

43  ammo_pickup

44  item_equip

45  enter_buyzone

46  exit_buyzone

47  buytime_ended

48  enter_bombzone

49  exit_bombzone

50  enter_rescue_zone

51  exit_rescue_zone

52  silencer_off

53  silencer_on

54  buymenu_open

55  buymenu_close

56  round_prestart

57  round_poststart

58  round_start

59  round_end

60  grenade_bounce

61  hegrenade_detonate

62  flashbang_detonate

63  smokegrenade_detonate

64  smokegrenade_expired

65  molotov_detonate

66  decoy_detonate

67  decoy_started

68  tagrenade_detonate

69  inferno_startburn

70  inferno_expire

71  inferno_extinguish

72  decoy_firing

73  bullet_impact

74  player_footstep

75  player_jump

76  player_blind

77  player_falldamage

78  door_moving

79  round_freeze_end

80  mb_input_lock_success

81  mb_input_lock_cancel

82  nav_blocked

83  nav_generate

84  player_stats_updated

85  achievement_info_loaded

86  spec_target_updated

87  spec_mode_updated

88  hltv_changed_mode

89  cs_game_disconnected

90  cs_win_panel_round

91  cs_win_panel_match

92  cs_match_end_restart

93  cs_pre_restart

94  show_freezepanel

95  hide_freezepanel

96  freezecam_started

97  player_avenged_teammate

98  achievement_earned

99  achievement_earned_local

100  item_found

101  items_gifted

102  repost_xbox_achievements

103  match_end_conditions

104  round_mvp

105  player_decal

106  teamplay_round_start

107  show_survival_respawn_status

108  client_disconnect

109  gg_player_levelup

110  ggtr_player_levelup

111  assassination_target_killed

112  ggprogressive_player_levelup

113  gg_killed_enemy

114  gg_final_weapon_achieved

115  gg_bonus_grenade_achieved

116  switch_team

117  gg_leader

118  gg_team_leader

119  gg_player_impending_upgrade

120  write_profile_data

121  trial_time_expired

122  update_matchmaking_stats

123  player_reset_vote

124  enable_restart_voting

125  sfuievent

126  start_vote

127  player_given_c4

128  player_become_ghost

129  gg_reset_round_start_sounds

130  tr_player_flashbanged

131  tr_mark_complete

132  tr_mark_best_time

133  tr_exit_hint_trigger

134  bot_takeover

135  tr_show_finish_msgbox

136  tr_show_exit_msgbox

137  reset_player_controls

138  jointeam_failed

139  teamchange_pending

140  material_default_complete

141  cs_prev_next_spectator

142  cs_handle_ime_event

143  nextlevel_changed

144  seasoncoin_levelup

145  tournament_reward

146  start_halftime

147  ammo_refill

148  parachute_pickup

149  parachute_deploy

150  dronegun_attack

151  drone_dispatched

152  loot_crate_visible

153  loot_crate_opened

154  open_crate_instr

155  smoke_beacon_paradrop

156  survival_paradrop_spawn

157  survival_paradrop_break

158  drone_cargo_detached

159  drone_above_roof

160  choppers_incoming_warning

161  firstbombs_incoming_warning

162  dz_item_interaction

163  snowball_hit_player_face

164  survival_teammate_respawn

165  survival_no_respawns_warning

166  survival_no_respawns_final

167  player_ping

168  player_ping_stop

169  guardian_wave_restart

player_death

Note: When a client dies

Name:  player_death

Structure:

short  userid  user ID who died

short  attacker  user ID who killed

short  assister  user ID who assisted in the kill

bool  assistedflash  assister helped with a flash

string  weapon  weapon name killer used

string  weapon_itemid  inventory item id of weapon killer used

string  weapon_fauxitemid  faux item id of weapon killer used

string  weapon_originalowner_xuid

bool  headshot  signals a headshot

short  dominated  did killer dominate victim with this kill

short  revenge  did killer get revenge on victim with this kill

short  wipe  To do: check if indicates on a squad wipeout in Danger Zone

short  penetrated  number of objects shot penetrated before killing target

bool  noreplay  if replay data is unavailable, this will be present and set to false

bool  noscope  kill happened without a scope, used for death notice icon

bool  thrusmoke  hitscan weapon went through smoke grenade

bool  attackerblind  attacker was blind from flashbang

float  distance  distance to victim in meters

other_death

Note: As far as I know only used for chicken deaths at the moment

Name:  other_death

Structure:

short  otherid

string  othertype

short  attacker  user ID who attacked

string  weapon  weapon name attacker used, if not the world

string  weapon_itemid  inventory item id of weapon killer used

string  weapon_fauxitemid  faux item id of weapon killer used

string  weapon_originalowner_xuid

bool  headshot  signals a headshot

short  penetrated  number of objects shot penetrated before killing target

bool  noscope  kill happened without a scope, used for death notice icon

bool  thrusmoke  hitscan weapon went through smoke grenade

bool  attackerblind  attacker was blind from flashbang

player_hurt

Name:  player_hurt

Structure:

short  userid  user ID of who was hurt

short  attacker  user ID of who attacked

byte  health  remaining health points

byte  armor  remaining armor points

string  weapon  weapon name attacker used, if not the world

short  dmg_health  damage done to health

byte  dmg_armor  damage done to armor

byte  hitgroup  hitgroup that was damaged

item_purchase

Name:  item_purchase

Structure:

short  userid

short  team

short  loadout

string  weapon

bomb_beginplant

Note: When the bomb is starting to get planted

Name:  bomb_beginplant

Structure:

short  userid  player who is planting the bomb

short  site  bombsite index

bomb_abortplant

Note: When the bomb planter stops planting the bomb

Name:  bomb_abortplant

Structure:

short  userid  player who is planting the bomb

short  site  bombsite index

bomb_planted

Note: When the bomb has been planted

Name:  bomb_planted

Structure:

short  userid  player who planted the bomb

short  site  bombsite index

bomb_defused

Note: When the bomb has been defused

Name:  bomb_defused

Structure:

short  userid  player who defused the bomb

short  site  bombsite index

bomb_exploded

Note: When the bomb explodes

Name:  bomb_exploded

Structure:

short  userid  player who planted the bomb

short  site  bombsite index

bomb_dropped

Note: When the bomb is dropped by a client

Name:  bomb_dropped

Structure:

short  userid  player who dropped the bomb

long  entindex

bomb_pickup

Note: When the bomb is picked up by a client

Name:  bomb_pickup

Structure:

short  userid  player who picked up the bomb

defuser_dropped

Note: When the defuser is dropped by a client

Name:  defuser_dropped

Structure:

long  entityid  defuser's entity ID

defuser_pickup

Note: When the defuser is picked up by a client

Name:  defuser_pickup

Structure:

long  entityid  defuser's entity ID

short  userid  player who picked up the defuser

announce_phase_end

Name:  announce_phase_end

Structure:

cs_intermission

Name:  cs_intermission

Structure:

bomb_begindefuse

Note: When the bomb is started to be defused

Name:  bomb_begindefuse

Structure:

short  userid  player who is defusing

bool  haskit

bomb_abortdefuse

Note: When the bomb defusal is stopped

Name:  bomb_abortdefuse

Structure:

short  userid  player who was defusing

hostage_follows

Note: When the hostage begins following a client

Name:  hostage_follows

Structure:

short  userid  player who touched the hostage

short  hostage  hostage entity index

hostage_hurt

Note: When a hostage is damaged

Name:  hostage_hurt

Structure:

short  userid  player who hurt the hostage

short  hostage  hostage entity index

hostage_killed

Note: When a hostage is killed

Name:  hostage_killed

Structure:

short  userid  player who killed the hostage

short  hostage  hostage entity index

hostage_rescued

Note: When a hostage is rescued

Name:  hostage_rescued

Structure:

short  userid  player who rescued the hostage

short  hostage  hostage entity index

short  site  rescue site index

hostage_stops_following

Note: When a hostage stops following a client

Name:  hostage_stops_following

Structure:

short  userid  player who rescued the hostage

short  hostage  hostage entity index

hostage_rescued_all

Note: When all the hostages are rescued

Name:  hostage_rescued_all

Structure:

hostage_call_for_help

Note: When the hostage calls for help

Name:  hostage_call_for_help

Structure:

short  hostage  hostage entity index

vip_escaped

Note: When the VIP escapes

Name:  vip_escaped

Structure:

short  userid  player who was the VIP

vip_killed

Note: When the VIP is killed

Name:  vip_killed

Structure:

short  userid  player who was the VIP

short  attacker  user ID who killed the VIP

player_radio

Note: When the player uses radio commands

Name:  player_radio

Structure:

short  userid

short  slot

bomb_beep

Note: Every time the bomb beep sound happens

Name:  bomb_beep

Structure:

long  entindex  c4 entity

weapon_fire

Note: Every time a client fires their weapon

Name:  weapon_fire

Structure:

short  userid

string  weapon  weapon name used

bool  silenced  is weapon silenced

weapon_fire_on_empty

Note: Every time a client fires their weapon and it's empty

Name:  weapon_fire_on_empty

Structure:

short  userid

string  weapon  weapon name used

grenade_thrown

Note: Every time a client throws their grenade

Name:  grenade_thrown

Structure:

short  userid

string  weapon  weapon name used

weapon_outofammo

Name:  weapon_outofammo

Structure:

short  userid

weapon_reload

Note: Every time a client reloads their weapon

Name:  weapon_reload

Structure:

short  userid

weapon_zoom

Note: Every time a client zooms a scoped weapon

Name:  weapon_zoom

Structure:

short  userid

silencer_detach

Name:  silencer_detach

Structure:

short  userid

inspect_weapon

Name:  inspect_weapon

Structure:

short  userid

weapon_zoom_rifle

Note: exists for the game instructor to let it know when the player zoomed in with a regular rifle. Different from the above weapon_zoom because we don't use this event to notify bots

Name:  weapon_zoom_rifle

Structure:

short  userid

player_spawned

Name:  player_spawned

Structure:

short  userid

bool  inrestart  true if restart is pending

item_pickup

Note: Every time an item is picked up (generally weapons)

Name:  item_pickup

Structure:

short  userid

string  item  either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

bool  silent

long  defindex

item_pickup_slerp

Name:  item_pickup_slerp

Structure:

short  userid

short  index

short  behavior

item_pickup_failed

Name:  item_pickup_failed

Structure:

short  userid

string  item

short  reason

short  limit

item_remove

Name:  item_remove

Structure:

short  userid

string  item  either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long  defindex

ammo_pickup

Name:  ammo_pickup

Structure:

short  userid

string  item  either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long  index  the weapon entindex

item_equip

Name:  item_equip

Structure:

short  userid

string  item  either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long  defindex

bool  canzoom

bool  hassilencer

bool  issilenced

bool  hastracers

short  weptype  see below

WEAPONTYPE_UNKNOWN = -1

WEAPONTYPE_KNIFE = 0

WEAPONTYPE_PISTOL = 1

WEAPONTYPE_SUBMACHINEGUN = 2

WEAPONTYPE_RIFLE = 3

WEAPONTYPE_SHOTGUN = 4

WEAPONTYPE_SNIPER_RIFLE = 5

WEAPONTYPE_MACHINEGUN = 6

WEAPONTYPE_C4 = 7

WEAPONTYPE_TASER = 8

WEAPONTYPE_GRENADE = 9

WEAPONTYPE_HEALTHSHOT = 11

bool  ispainted

enter_buyzone

Name:  enter_buyzone

Structure:

short  userid

bool  canbuy

exit_buyzone

Name:  exit_buyzone

Structure:

short  userid

bool  canbuy

buytime_ended

Name:  buytime_ended

Structure:

enter_bombzone

Name:  enter_bombzone

Structure:

short  userid

bool  hasbomb

bool  isplanted

exit_bombzone

Name:  exit_bombzone

Structure:

short  userid

bool  hasbomb

bool  isplanted

enter_rescue_zone

Name:  enter_rescue_zone

Structure:

short  userid

exit_rescue_zone

Name:  exit_rescue_zone

Structure:

short  userid

silencer_off

Name:  silencer_off

Structure:

short  userid

silencer_on

Name:  silencer_on

Structure:

short  userid

buymenu_open

Name:  buymenu_open

Structure:

short  userid

buymenu_close

Name:  buymenu_close

Structure:

short  userid

round_prestart

Note: sent before all other round restart actions

Name:  round_prestart

Structure:

round_poststart

Note: sent after all other round restart actions

Name:  round_poststart

Structure:

round_start

Name:  round_start

Structure:

long  timelimit  round time limit in seconds

long  fraglimit  frag limit in seconds

string  objective  round objective

round_end

Name:  round_end

Structure:

byte  winner  winner team/user id

byte  reason  reason why team won

string  message  end round message

byte  legacy  server-generated legacy value

short  player_count  total number of players alive at the end of round, used for statistics gathering, computed on the server in the event client is in replay when receiving this message

byte  nomusic  if set, don't play round end music, because action is still on-going

grenade_bounce

Note: Every time a grenade bounces

Name:  grenade_bounce

Structure:

short  userid

hegrenade_detonate

Note: Every time a hegrenade explodes

Name:  hegrenade_detonate

Structure:

short  userid

short  entityid

float  x

float  y

float  z

flashbang_detonate

Note: Every time a flashbang detonates

Name:  flashbang_detonate

Structure:

short  userid

short  entityid

float  x

float  y

float  z

smokegrenade_detonate

Note: Every time a smokegrenade detonates

Name:  smokegrenade_detonate

Structure:

short  userid

short  entityid

float  x

float  y

float  z

smokegrenade_expired

Name:  smokegrenade_expired

Structure:

short  userid

short  entityid

float  x

float  y

float  z

molotov_detonate

Name:  molotov_detonate

Structure:

short  userid

float  x

float  y

float  z

decoy_detonate

Name:  decoy_detonate

Structure:

short  userid

short  entityid

float  x

float  y

float  z

decoy_started

Name:  decoy_started

Structure:

short  userid

short  entityid

float  x

float  y

float  z

tagrenade_detonate

Note: Every time a tagrenade explodes

Name:  tagrenade_detonate

Structure:

short  userid

short  entityid

float  x

float  y

float  z

inferno_startburn

Name:  inferno_startburn

Structure:

short  entityid

float  x

float  y

float  z

inferno_expire

Note:

Name:  inferno_expire

Structure:

short  entityid

float  x

float  y

float  z

inferno_extinguish

Note:

Name:  inferno_extinguish

Structure:

short  entityid

float  x

float  y

float  z

decoy_firing

Note:

Name:  decoy_firing

Structure:

short  userid

short  entityid

float  x

float  y

float  z

bullet_impact

Note: Every time a bullet hits something

Name:  bullet_impact

Structure:

short  userid

float  x

float  y

float  z

player_footstep

Note: Every time a player takes a step

Name:  player_footstep

Structure:

short  userid

player_jump

Note: Every time a player jumps

Name:  player_jump

Structure:

short  userid

player_blind

Note: Every time a player is blinded by a flashbang

Name:  player_blind

Structure:

short  userid

short  attacker  user ID who threw the flash

short  entityid  the flashbang going off

float  blind_duration

player_falldamage

Note: Every time a player takes damage due to a fall

Name:  player_falldamage

Structure:

short  userid

float  damage

door_moving

Note: Every time a door is put in motion (opened)

Name:  door_moving

Structure:

long  entindex

short  userid

round_freeze_end

Note: When the round's mp_freezetime is up

Name:  round_freeze_end

Structure:

mb_input_lock_success

Name:  mb_input_lock_success

Structure:

mb_input_lock_cancel

Name:  mb_input_lock_cancel

Structure:

nav_blocked

Note: Guess: Called when an area is blocked by the nav of a map

Name:  nav_blocked

Structure:

long  area

bool  blocked

nav_generate

Note: Called when a nav file does not exist for a map and bots are added

Name:  nav_generate

Structure:

player_stats_updated

Note: Guess: Called when the player stats (achievments) are sent to valve

Name:  player_stats_updated

Structure:

bool  forceupload

achievement_info_loaded

Name:  achievement_info_loaded

Structure:

spec_target_updated

Name:  spec_target_updated

Structure:

byte  userid  entindex of the player

spec_mode_updated

Name:  spec_target_updated

Structure:

byte  userid  entindex of the player

hltv_changed_mode

Name:  hltv_changed_mode

Structure:

long  oldmode

long  newmode

long  obs_target

cs_game_disconnected

Name:  cs_game_disconnected

Structure:

cs_win_panel_round

Name:  cs_win_panel_round

Structure:

bool  show_timer_defend

bool  show_timer_attack

short  timer_time

byte  final_event  defined in cs_gamerules.h

string  funfact_token

short  funfact_player

long  funfact_data1

long  funfact_data2

long  funfact_data3

cs_win_panel_match

Name:  cs_win_panel_match

Structure:

cs_match_end_restart

Name:  cs_match_end_restart

Structure:

cs_pre_restart

Name:  cs_pre_restart

Structure:

show_freezepanel

Name:  show_freezepanel

Structure:

short  victim  endindex of the one who was killed

short  killer  entindex of the killer entity

short  hits_taken

short  damage_taken

short  hits_given

short  damage_given

hide_freezepanel

Name:  hide_freezepanel

Structure:

freezecam_started

Name:  freezecam_started

Structure:

player_avenged_teammate

Name:  player_avenged_teammate

Structure:

short  avenger_id

short  avenged_player_id

achievement_earned

Name:  achievement_earned

Structure:

byte  player  entindex of the player

short  achievement  achievement ID

achievement_earned_local

Name:  achievement_earned_local

Structure:

short  achievement  achievement ID

short  splitscreenplayer  splitscreen ID

item_found

Name:  item_found

Structure:

byte  player  entindex of the player

byte  quality  quality of the item

byte  method  method by which we acquired the item

long  itemdef  the item definition index

long  itemid  the item id in the players inventory

items_gifted

Name:  items_gifted

Structure:

byte  player  entindex of the player who sent the gift

long  itemdef  the item definition index of the gift that was opened

byte  numgifts  how many recipients got the gifts in this gift batch

byte  giftidx  index of recipient in this gift batch (0 for the first recipient, 1 for second, and so on...)

long  accountid  gift recipient's account ID

repost_xbox_achievements

Name:  repost_xbox_achievements

Structure:

short  splitscreenplayer  splitscreen ID

match_end_conditions

Name:  match_end_conditions

Structure:

long  frags

long  max_rounds

long  win_rounds

long  time

round_mvp

Name:  round_mvp

Structure:

short  userid

short  reason

long  value

long  musickitmvps

byte  nomusic

player_decal

Name:  player_decal

Structure:

short  userid

teamplay_round_start

Name:  teamplay_round_start

Structure:

bool  full_reset  is this a full reset of the map

show_survival_respawn_status

Name:  show_survival_respawn_status

Structure:

string  loc_token

long  duration

short  userid

client_disconnect

Name:  client_disconnect

Structure:

gg_player_levelup

Name:  gg_player_levelup

Structure:

short  userid  player who leveled up

short  weaponrank

string  weaponname  name of weapon being awarded

ggtr_player_levelup

Name:  ggtr_player_levelup

Structure:

short  userid  player who leveled up

short  weaponrank

string  weaponname  name of weapon being awarded

assassination_target_killed

Name:  assassination_target_killed

Structure:

short  target  player killed

short  killer  killing player (with the quest)

ggprogressive_player_levelup

Name:  ggprogressive_player_levelup

Structure:

short  userid  player who leveled up

short  weaponrank

string  weaponname  name of weapon being awarded

gg_killed_enemy

Name:  gg_killed_enemy

Structure:

short  victimid  user ID who died

short  attackerid  user ID who killed

short  dominated  did killer dominate victim with this kill

short  revenge  did killer get revenge on victim with this kill

bool  bonus  did killer kill with a bonus weapon?

gg_final_weapon_achieved

Name:  gg_final_weapon_achieved

Structure:

short  playerid  user ID who achieved the final gun game weapon

gg_bonus_grenade_achieved

Name:  gg_bonus_grenade_achieved

Structure:

short  userid  user ID who achieved the bonus grenade

switch_team

Name:  switch_team

Structure:

short  numPlayers  number of active players on both T and CT

short  numSpectators  number of spectators

short  avg_rank  average rank of human players

short  numTSlotsFree

short  numCTSlotsFree

gg_leader

Name:  gg_leader

Structure:

short  playerid  user ID that is currently in the lead

gg_team_leader

Name:  gg_team_leader

Structure:

short  playerid  user ID that is currently in the lead

gg_player_impending_upgrade

Name:  gg_player_impending_upgrade

Structure:

short  userid  player who will be leveling up

write_profile_data

Name:  write_profile_data

Structure:

trial_time_expired

Note: fired when a player runs out of time in trial mode

Name:  trial_time_expired

Structure:

short  slot  player whose time has expired

update_matchmaking_stats

Name:  update_matchmaking_stats

Structure:

player_reset_vote

Name:  player_reset_vote

Structure:

short  userid

short  vote

enable_restart_voting

Name:  enable_restart_voting

Structure:

bool  enable

sfuievent

Name:  sfuievent

Structure:

string  action

string  data

byte  slot

start_vote

Name:  start_vote

Structure:

short  userid  user ID on server

byte  type

short  vote_parameter

player_given_c4

Name:  player_given_c4

Structure:

short  userid  user ID who received the c4

player_become_ghost

Name:  player_become_ghost

Structure:

short  userid  user ID who became a ghost

gg_reset_round_start_sounds

Name:  gg_reset_round_start_sounds

Structure:

short  userid  user ID who should have round start sounds reset

tr_player_flashbanged

Name:  tr_player_flashbanged

Structure:

short  userid  user ID of the player banged

tr_mark_complete

Name:  tr_mark_complete

Structure:

short  complete

tr_mark_best_time

Name:  tr_mark_best_time

Structure:

long  time

tr_exit_hint_trigger

Name:  tr_exit_hint_trigger

Structure:

bot_takeover

Name:  bot_takeover

Structure:

short  userid

short  botid

short  index

tr_show_finish_msgbox

Name:  tr_show_finish_msgbox

Structure:

short  userid  user ID of the player

tr_show_exit_msgbox

Name:  tr_show_exit_msgbox

Structure:

short  userid  user ID of the player

reset_player_controls

Note: used for demos

Name:  reset_player_controls

Structure:

jointeam_failed

Name:  jointeam_failed

Structure:

short  userid

byte  reason  0: team_full

teamchange_pending

Name:  teamchange_pending

Structure:

short  userid

byte  toteam

material_default_complete

Name:  material_default_complete

Structure:

cs_prev_next_spectator

Name:  cs_prev_next_spectator

Structure:

bool  next

cs_handle_ime_event

Name:  cs_handle_ime_event

Structure:

1  local

string  eventtype

wstring  eventdata

nextlevel_changed

Note: a game event, name may be 32 characters long

Name:  nextlevel_changed

Structure:

string  nextlevel

string  mapgroup

string  skirmishmode

seasoncoin_levelup

Name:  seasoncoin_levelup

Structure:

short  player  entindex of the player

short  category

short  rank

tournament_reward

Name:  tournament_reward

Structure:

long  defindex

long  totalrewards

long  accountid

start_halftime

Name:  start_halftime

Structure:

ammo_refill

Name:  ammo_refill

Structure:

short  userid

bool  success

parachute_pickup

Name:  parachute_pickup

Structure:

short  userid

parachute_deploy

Name:  parachute_deploy

Structure:

short  userid

dronegun_attack

Name:  dronegun_attack

Structure:

short  userid

drone_dispatched

Name:  drone_dispatched

Structure:

short  userid

short  priority

short  drone_dispatched

loot_crate_visible

Name:  loot_crate_visible

Structure:

short  userid  player entindex

short  subject  crate entindex

string  type  type of crate (metal, wood, or paradrop)

loot_crate_opened

Name:  loot_crate_opened

Structure:

short  userid  player entindex

string  type  type of crate (metal, wood, or paradrop)

open_crate_instr

Name:  open_crate_instr

Structure:

short  userid  player entindex

short  subject  crate entindex

string  type  type of crate (metal, wood, or paradrop)

smoke_beacon_paradrop

Name:  smoke_beacon_paradrop

Structure:

short  userid

short  paradrop

survival_paradrop_spawn

Name:  survival_paradrop_spawn

Structure:

short  entityid

survival_paradrop_break

Name:  survival_paradrop_break

Structure:

short  entityid

drone_cargo_detached

Name:  drone_cargo_detached

Structure:

short  userid

short  cargo

bool  delivered

drone_above_roof

Name:  drone_above_roof

Structure:

short  userid

short  cargo

choppers_incoming_warning

Name:  choppers_incoming_warning

Structure:

bool  global

firstbombs_incoming_warning

Name:  firstbombs_incoming_warning

Structure:

bool  global

dz_item_interaction

Name:  dz_item_interaction

Structure:

short  userid  player entindex

short  subject  crate entindex

string  type  type of crate (metal, wood, or paradrop)

snowball_hit_player_face

Name:  snowball_hit_player_face

Structure:

short  userid  player userid

survival_teammate_respawn

Name:  survival_teammate_respawn

Structure:

short  userid

survival_no_respawns_warning

Name:  survival_no_respawns_warning

Structure:

short  userid

survival_no_respawns_final

Name:  survival_no_respawns_final

Structure:

short  userid

player_ping

Name:  player_ping

Structure:

short  userid

short  entityid

float  x

float  y

float  z

bool  urgent

player_ping_stop

Name:  player_ping_stop

Structure:

short  entityid

guardian_wave_restart

Name:  guardian_wave_restart

Structure:

weapon_fire

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 11/32

Note: Every time a client fires their weapon and it's empty

Name: weapon_fire_on_empty

Structure:short userid

stringweaponweapon name used

Note: Every time a client throws their grenade

Name: grenade_thrown

Structure:short userid

stringweaponweapon name used

Name: weapon_outofammo

Structure:shortuserid

Note: Every time a client reloads their weapon

Name: weapon_reload

Structure:shortuserid

Note: Every time a client zooms a scoped weapon

Name: weapon_zoom

Structure:shortuserid

Name: silencer_detach

Structure:shortuserid

weapon_fire_on_empty

grenade_thrown

weapon_outofammo

weapon_reload

weapon_zoom

silencer_detach

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 12/32

```

Name: inspect_weapon

Structure:shortuserid

Note: exists for the game instructor to let it know when the player zoomed in with a regular

rifle. Different from the above weapon_zoom because we don't use this event to notify bots

Name: weapon_zoom_rifle

Structure:shortuserid

Name: player_spawned

Structure:shortuserid

bool inrestarttrue if restart is pending

Note: Every time an item is picked up (generally weapons)

Name: item_pickup

Structure:short userid

stringitem either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

bool silent

long defindex

Name: item_pickup_slerp

Structure:shortuserid

shortindex

shortbehavior

Name: item_pickup_failed

Structure:short userid

stringitem

short reason

short limit

inspect_weapon

weapon_zoom_rifle

player_spawned

item_pickup

item_pickup_slerp

item_pickup_failed

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 13/32

```

Name: item_remove

Structure:short userid

stringitem either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long defindex

Name: ammo_pickup

Structure:short userid

stringitem either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long index the weapon entindex

Name: item_equip

Structure:short userid

stringitem either a weapon such as 'tmp' or 'hegrenade', or an item such as 'nvgs'

long defindex

bool canzoom

bool hassilencer

bool issilenced

bool hastracers

short weptype see below

WEAPONTYPE_UNKNOWN = -1

WEAPONTYPE_KNIFE = 0

WEAPONTYPE_PISTOL = 1

WEAPONTYPE_SUBMACHINEGUN = 2

WEAPONTYPE_RIFLE = 3

WEAPONTYPE_SHOTGUN = 4

WEAPONTYPE_SNIPER_RIFLE = 5

WEAPONTYPE_MACHINEGUN = 6

WEAPONTYPE_C4 = 7

WEAPONTYPE_TASER = 8

WEAPONTYPE_GRENADE = 9

WEAPONTYPE_HEALTHSHOT = 11

bool ispainted

Name: enter_buyzone

Structure:shortuserid

bool canbuy

Name: exit_buyzone

item_remove

ammo_pickup

item_equip

enter_buyzone

exit_buyzone

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 14/32

```

Structure:shortuserid

bool canbuy

Name: buytime_ended

Structure:

Name: enter_bombzone

Structure:shortuserid

bool hasbomb

bool isplanted

Name: exit_bombzone

Structure:shortuserid

bool hasbomb

bool isplanted

Name: enter_rescue_zone

Structure:shortuserid

Name: exit_rescue_zone

Structure:shortuserid

Name: silencer_off

Structure:shortuserid

Name: silencer_on

Structure:shortuserid

buytime_ended

enter_bombzone

exit_bombzone

enter_rescue_zone

exit_rescue_zone

silencer_off

silencer_on

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 15/32

```

Name: buymenu_open

Structure:shortuserid

Name: buymenu_close

Structure:shortuserid

Note: sent before all other round restart actions

Name: round_prestart

Structure:

Note: sent after all other round restart actions

Name: round_poststart

Structure:

Name: round_start

Structure:long timelimit round time limit in seconds

long fraglimit frag limit in seconds

stringobjectiveround objective

Name: round_end

Structure:byte winner winner team/user id

byte reason reason why team won

stringmessage end round message

byte legacy server-generated legacy value

short player_count

total number of players alive at the end of round, used for statistics

gathering, computed on the server in the event client is in replay when

receiving this message

byte nomusic if set, don't play round end music, because action is still on-going

buymenu_open

buymenu_close

round_prestart

round_poststart

round_start

round_end

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 16/32

```

Note: Every time a grenade bounces

Name: grenade_bounce

Structure:shortuserid

Note: Every time a hegrenade explodes

Name: hegrenade_detonate

Structure:shortuserid

shortentityid

float x

float y

float z

Note: Every time a flashbang detonates

Name: flashbang_detonate

Structure:shortuserid

shortentityid

float x

float y

float z

Note: Every time a smokegrenade detonates

Name: smokegrenade_detonate

Structure:shortuserid

shortentityid

float x

float y

float z

Name: smokegrenade_expired

Structure:shortuserid

shortentityid

float x

float y

grenade_bounce

hegrenade_detonate

flashbang_detonate

smokegrenade_detonate

smokegrenade_expired

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 17/32

```

float z

Name: molotov_detonate

Structure:shortuserid

float x

float y

float z

Name: decoy_detonate

Structure:shortuserid

shortentityid

float x

float y

float z

Name: decoy_started

Structure:shortuserid

shortentityid

float x

float y

float z

Note: Every time a tagrenade explodes

Name: tagrenade_detonate

Structure:shortuserid

shortentityid

float x

float y

float z

Name: inferno_startburn

Structure:shortentityid

float x

float y

float z

molotov_detonate

decoy_detonate

decoy_started

tagrenade_detonate

inferno_startburn

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 18/32

```

Note:

Name: inferno_expire

Structure:shortentityid

float x

float y

float z

Note:

Name: inferno_extinguish

Structure:shortentityid

float x

float y

float z

Note:

Name: decoy_firing

Structure:shortuserid

shortentityid

float x

float y

float z

Note: Every time a bullet hits something

Name: bullet_impact

Structure:shortuserid

float x

float y

float z

Note: Every time a player takes a step

inferno_expire

inferno_extinguish

decoy_firing

bullet_impact

player_footstep

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 19/32

```

Name: player_footstep

Structure:shortuserid

Note: Every time a player jumps

Name: player_jump

Structure:shortuserid

Note: Every time a player is blinded by a flashbang

Name: player_blind

Structure:shortuserid

shortattacker user ID who threw the flash

shortentityid the flashbang going off

float blind_duration

Note: Every time a player takes damage due to a fall

Name: player_falldamage

Structure:shortuserid

float damage

Note: Every time a door is put in motion (opened)

Name: door_moving

Structure:long entindex

shortuserid

Note: When the round's mp_freezetime is up

Name: round_freeze_end

Structure:

player_jump

player_blind

player_falldamage

door_moving

round_freeze_end

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 20/32

```

Name: mb_input_lock_success

Structure:

Name: mb_input_lock_cancel

Structure:

Note: Guess: Called when an area is blocked by the nav of a map

Name: nav_blocked

Structure:longarea

boolblocked

Note: Called when a nav file does not exist for a map and bots are added

Name: nav_generate

Structure:

Note: Guess: Called when the player stats (achievments) are sent to valve

Name: player_stats_updated

Structure:boolforceupload

Name: achievement_info_loaded

Structure:

Name: spec_target_updated

Structure:byteuseridentindex of the player

mb_input_lock_success

mb_input_lock_cancel

nav_blocked

nav_generate

player_stats_updated

achievement_info_loaded

spec_target_updated

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 21/32

```

Name: spec_target_updated

Structure:byteuseridentindex of the player

Name: hltv_changed_mode

Structure:longoldmode

longnewmode

longobs_target

Name: cs_game_disconnected

Structure:

Name: cs_win_panel_round

Structure:bool show_timer_defend

bool show_timer_attack

short timer_time

byte final_event defined in cs_gamerules.h

stringfunfact_token

short funfact_player

long funfact_data1

long funfact_data2

long funfact_data3

Name: cs_win_panel_match

Structure:

Name: cs_match_end_restart

Structure:

Name: cs_pre_restart

Structure:

spec_mode_updated

hltv_changed_mode

cs_game_disconnected

cs_win_panel_round

cs_win_panel_match

cs_match_end_restart

cs_pre_restart

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 22/32

```

Name: show_freezepanel

Structure:shortvictim endindex of the one who was killed

shortkiller entindex of the killer entity

shorthits_taken

shortdamage_taken

shorthits_given

shortdamage_given

Name: hide_freezepanel

Structure:

Name: freezecam_started

Structure:

Name: player_avenged_teammate

Structure:shortavenger_id

shortavenged_player_id

Name: achievement_earned

Structure:byte player entindex of the player

shortachievementachievement ID

Name: achievement_earned_local

Structure:shortachievement achievement ID

shortsplitscreenplayersplitscreen ID

Name: item_found

Structure:byteplayer entindex of the player

show_freezepanel

hide_freezepanel

freezecam_started

player_avenged_teammate

achievement_earned

achievement_earned_local

item_found

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 23/32

```

bytequality quality of the item

bytemethodmethod by which we acquired the item

longitemdefthe item definition index

longitemid the item id in the players inventory

Name: items_gifted

Structure:byteplayer entindex of the player who sent the gift

longitemdef the item definition index of the gift that was opened

bytenumgifts how many recipients got the gifts in this gift batch

bytegiftidx index of recipient in this gift batch (0 for the first recipient, 1 for second, and

so on...)

longaccountidgift recipient's account ID

Name: repost_xbox_achievements

Structure:shortsplitscreenplayersplitscreen ID

Name: match_end_conditions

Structure:longfrags

longmax_rounds

longwin_rounds

longtime

Name: round_mvp

Structure:shortuserid

shortreason

long value

long musickitmvps

byte nomusic

Name: player_decal

Structure:shortuserid

items_gifted

repost_xbox_achievements

match_end_conditions

round_mvp

player_decal

teamplay_round_start

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 24/32

```

Name: teamplay_round_start

Structure:boolfull_resetis this a full reset of the map

Name: show_survival_respawn_status

Structure:stringloc_token

long duration

short userid

Name: client_disconnect

Structure:

Name: gg_player_levelup

Structure:short userid player who leveled up

short weaponrank

stringweaponnamename of weapon being awarded

Name: ggtr_player_levelup

Structure:short userid player who leveled up

short weaponrank

stringweaponnamename of weapon being awarded

Name: assassination_target_killed

Structure:shorttargetplayer killed

shortkiller killing player (with the quest)

Name: ggprogressive_player_levelup

Structure:short userid player who leveled up

short weaponrank

stringweaponnamename of weapon being awarded

show_survival_respawn_status

client_disconnect

gg_player_levelup

ggtr_player_levelup

assassination_target_killed

ggprogressive_player_levelup

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 25/32

```

Name: gg_killed_enemy

Structure:shortvictimid user ID who died

shortattackerid user ID who killed

shortdominateddid killer dominate victim with this kill

shortrevenge did killer get revenge on victim with this kill

bool bonus did killer kill with a bonus weapon?

Name: gg_final_weapon_achieved

Structure:shortplayeriduser ID who achieved the final gun game weapon

Name: gg_bonus_grenade_achieved

Structure:shortuseriduser ID who achieved the bonus grenade

Name: switch_team

Structure:shortnumPlayers number of active players on both T and CT

shortnumSpectators number of spectators

shortavg_rank average rank of human players

shortnumTSlotsFree

shortnumCTSlotsFree

Name: gg_leader

Structure:shortplayeriduser ID that is currently in the lead

Name: gg_team_leader

Structure:shortplayeriduser ID that is currently in the lead

Name: gg_player_impending_upgrade

Structure:shortuseridplayer who will be leveling up

gg_killed_enemy

gg_final_weapon_achieved

gg_bonus_grenade_achieved

switch_team

gg_leader

gg_team_leader

gg_player_impending_upgrade

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 26/32

```

Name: write_profile_data

Structure:

Note: fired when a player runs out of time in trial mode

Name: trial_time_expired

Structure:shortslotplayer whose time has expired

Name: update_matchmaking_stats

Structure:

Name: player_reset_vote

Structure:shortuserid

shortvote

Name: enable_restart_voting

Structure:boolenable

Name: sfuievent

Structure:stringaction

stringdata

byte slot

Name: start_vote

Structure:shortuserid user ID on server

byte type

shortvote_parameter

write_profile_data

trial_time_expired

update_matchmaking_stats

player_reset_vote

enable_restart_voting

sfuievent

start_vote

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 27/32

```

Name: player_given_c4

Structure:shortuseriduser ID who received the c4

Name: player_become_ghost

Structure:shortuseriduser ID who became a ghost

Name: gg_reset_round_start_sounds

Structure:shortuseriduser ID who should have round start sounds reset

Name: tr_player_flashbanged

Structure:shortuseriduser ID of the player banged

Name: tr_mark_complete

Structure:shortcomplete

Name: tr_mark_best_time

Structure:longtime

Name: tr_exit_hint_trigger

Structure:

Name: bot_takeover

Structure:shortuserid

shortbotid

shortindex

player_given_c4

player_become_ghost

gg_reset_round_start_sounds

tr_player_flashbanged

tr_mark_complete

tr_mark_best_time

tr_exit_hint_trigger

bot_takeover

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 28/32

```

Name: tr_show_finish_msgbox

Structure:shortuseriduser ID of the player

Name: tr_show_exit_msgbox

Structure:shortuseriduser ID of the player

Note: used for demos

Name: reset_player_controls

Structure:

Name: jointeam_failed

Structure:shortuserid

byte reason0: team_full

Name: teamchange_pending

Structure:shortuserid

byte toteam

Name: material_default_complete

Structure:

Name: cs_prev_next_spectator

Structure:boolnext

Name: cs_handle_ime_event

Structure:1 local

tr_show_finish_msgbox

tr_show_exit_msgbox

reset_player_controls

jointeam_failed

teamchange_pending

material_default_complete

cs_prev_next_spectator

cs_handle_ime_event

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 29/32

```

string eventtype

wstringeventdata

Note: a game event, name may be 32 characters long

Name: nextlevel_changed

Structure:stringnextlevel

stringmapgroup

stringskirmishmode

Name: seasoncoin_levelup

Structure:shortplayer entindex of the player

shortcategory

shortrank

Name: tournament_reward

Structure:longdefindex

longtotalrewards

longaccountid

Name: start_halftime

Structure:

Name: ammo_refill

Structure:shortuserid

bool success

Name: parachute_pickup

Structure:shortuserid

nextlevel_changed

seasoncoin_levelup

tournament_reward

start_halftime

ammo_refill

parachute_pickup

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 30/32

```

Name: parachute_deploy

Structure:shortuserid

Name: dronegun_attack

Structure:shortuserid

Name: drone_dispatched

Structure:shortuserid

shortpriority

shortdrone_dispatched

Name: loot_crate_visible

Structure:short userid player entindex

short subjectcrate entindex

stringtype type of crate (metal, wood, or paradrop)

Name: loot_crate_opened

Structure:short useridplayer entindex

stringtype type of crate (metal, wood, or paradrop)

Name: open_crate_instr

Structure:short userid player entindex

short subjectcrate entindex

stringtype type of crate (metal, wood, or paradrop)

Name: smoke_beacon_paradrop

Structure:shortuserid

shortparadrop

parachute_deploy

dronegun_attack

drone_dispatched

loot_crate_visible

loot_crate_opened

open_crate_instr

smoke_beacon_paradrop

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 31/32

```

Name: survival_paradrop_spawn

Structure:shortentityid

Name: survival_paradrop_break

Structure:shortentityid

Name: drone_cargo_detached

Structure:shortuserid

shortcargo

bool delivered

Name: drone_above_roof

Structure:shortuserid

shortcargo

Name: choppers_incoming_warning

Structure:boolglobal

Name: firstbombs_incoming_warning

Structure:boolglobal

Name: dz_item_interaction

Structure:short userid player entindex

short subjectcrate entindex

stringtype type of crate (metal, wood, or paradrop)

Name: snowball_hit_player_face

survival_paradrop_spawn

survival_paradrop_break

drone_cargo_detached

drone_above_roof

choppers_incoming_warning

firstbombs_incoming_warning

dz_item_interaction

snowball_hit_player_face

```

7/26/22, 11:04 PM Counter-Strike: Global Offensive Events - AlliedModders Wiki

https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events 32/32

```

Structure:shortuseridplayer userid

Name: survival_teammate_respawn

Structure:shortuserid

Name: survival_no_respawns_warning

Structure:shortuserid

Name: survival_no_respawns_final

Structure:shortuserid

Name: player_ping

Structure:shortuserid

shortentityid

float x

float y

float z

bool urgent

Name: player_ping_stop

Structure:shortentityid

Name: guardian_wave_restart

Structure:

Retrieved from "https://wiki.alliedmods.net/index.php?title=Counter-Strike:_Global_Offensive_Events&oldid=11142"

This page was last edited on 17 January 2021, at 07:01.

```

```

survival_teammate_respawn

survival_no_respawns_warning

survival_no_respawns_final

player_ping

player_ping_stop

guardian_wave_restart

```

convars.inc

/**

 * vim: set ts=4 sw=4 tw=99 noet :

 * =============================================================================

 * SourceMod (C)2004-2014 AlliedModders LLC.  All rights reserved.

 * =============================================================================

 *

 * This file is part of the SourceMod/SourcePawn SDK.

 *

 * This program is free software; you can redistribute it and/or modify it under

 * the terms of the GNU General Public License, version 3.0, as published by the

 * Free Software Foundation.

 * 

 * This program is distributed in the hope that it will be useful, but WITHOUT

 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS

 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more

 * details.

 *

 * You should have received a copy of the GNU General Public License along with

 * this program.  If not, see <http://www.gnu.org/licenses/>.

 *

 * As a special exception, AlliedModders LLC gives you permission to link the

 * code of this program (as well as its derivative works) to "Half-Life 2," the

 * "Source Engine," the "SourcePawn JIT," and any Game MODs that run on software

 * by the Valve Corporation.  You must obey the GNU General Public License in

 * all respects for all other code used.  Additionally, AlliedModders LLC grants

 * this exception to all derivative works.  AlliedModders LLC defines further

 * exceptions, found in LICENSE.txt (as of this writing, version JULY-31-2007),

 * or <http://www.sourcemod.net/license.php>.

 *

 * Version: $Id$

 */

#if defined _convars_included

 #endinput

#endif

#define _convars_included

/**

 * Console variable bound values used with Get/SetConVarBounds()

 */

enum ConVarBounds

{

ConVarBound_Upper = 0,

ConVarBound_Lower

};

/**

 * Console variable query result values.

 */

enum ConVarQueryResult

{

ConVarQuery_Cancelled = -1,         //< Client disconnected during query */

ConVarQuery_Okay = 0,               //< Retrieval of client convar value was successful. */

ConVarQuery_NotFound,               //< Client convar was not found. */

ConVarQuery_NotValid,               //< A console command with the same name was found, but there is no convar. */

ConVarQuery_Protected               //< Client convar was found, but it is protected. The server cannot retrieve its value. */

};

/**

 * Called when a console variable's value is changed.

 * 

 * @param convar        Handle to the convar that was changed.

 * @param oldValue      String containing the value of the convar before it was changed.

 * @param newValue      String containing the new value of the convar.

 */

typedef ConVarChanged = function void (ConVar convar, const char[] oldValue, const char[] newValue);

/**

 * Creates a new console variable.

 *

 * @param name          Name of new convar.

 * @param defaultValue  String containing the default value of new convar.

 * @param description   Optional description of the convar.

 * @param flags         Optional bitstring of flags determining how the convar should be handled. See FCVAR_* constants for more details.

 * @param hasMin        Optional boolean that determines if the convar has a minimum value.

 * @param min           Minimum floating point value that the convar can have if hasMin is true.

 * @param hasMax        Optional boolean that determines if the convar has a maximum value.

 * @param max           Maximum floating point value that the convar can have if hasMax is true.

 * @return              A handle to the newly created convar. If the convar already exists, a handle to it will still be returned.

 * @error               Convar name is blank or is the same as an existing console command.

 */

native ConVar CreateConVar(

const char[] name,

const char[] defaultValue,

const char[] description="",

int flags=0,

bool hasMin=false, float min=0.0,

bool hasMax=false, float max=0.0);

/**

 * Searches for a console variable.

 *

 * @param name          Name of convar to find.

 * @return              A ConVar object if found; null otherwise.

 */

native ConVar FindConVar(const char[] name);

// A ConVar is a configurable, named setting in the srcds console.

methodmap ConVar < Handle

{

// Retrieves or sets a boolean value for the convar.

property bool BoolValue {

public native get();

public native set(bool b);

}

// Retrieves or sets an integer value for the convar.

property int IntValue {

public native get();

public native set(int value);

}

// Retrieves or sets a float value for the convar.

property float FloatValue {

public native get();

public native set(float value);

}

// Gets or sets the flag bits (FCVAR_*) on the convar.

property int Flags {

public native get();

public native set(int flags);

}

// Retrieves the plugin handle of the convar's creator

property Handle Plugin {

public native get();

}

// Sets the boolean value of a console variable.

//

// Note: The replicate and notify params are only relevant for the

// original, Dark Messiah, and Episode 1 engines. Newer engines

// automatically do these things when the convar value is changed.

//

// @param value     New boolean value.

// @param replicate If set to true, the new convar value will be set on all clients.

//                  This will only work if the convar has the FCVAR_REPLICATED flag

//                  and actually exists on clients.

// @param notify    If set to true, clients will be notified that the convar has changed.

//                  This will only work if the convar has the FCVAR_NOTIFY flag.

public native void SetBool(bool value, bool replicate=false, bool notify=false);

// Sets the integer value of a console variable.

//

// Note: The replicate and notify params are only relevant for the

// original, Dark Messiah, and Episode 1 engines. Newer engines

// automatically do these things when the convar value is changed.

//

// @param value     New integer value.

// @param replicate If set to true, the new convar value will be set on all clients.

//                  This will only work if the convar has the FCVAR_REPLICATED flag

//                  and actually exists on clients.

// @param notify    If set to true, clients will be notified that the convar has changed.

//                  This will only work if the convar has the FCVAR_NOTIFY flag.

public native void SetInt(int value, bool replicate=false, bool notify=false);

// Sets the floating point value of a console variable.

//

// Note: The replicate and notify params are only relevant for the

// original, Dark Messiah, and Episode 1 engines. Newer engines

// automatically do these things when the convar value is changed.

//

// @param value     New floating point value.

// @param replicate If set to true, the new convar value will be set on all clients.

//                  This will only work if the convar has the FCVAR_REPLICATED flag

//                  and actually exists on clients.

// @param notify    If set to true, clients will be notified that the convar has changed.

//                  This will only work if the convar has the FCVAR_NOTIFY flag.

public native void SetFloat(float value, bool replicate=false, bool notify=false);

// Retrieves the string value of a console variable.

//

// @param value      Buffer to store the value of the convar.

// @param maxlength  Maximum length of string buffer.

public native void GetString(char[] value, int maxlength);

// Sets the string value of a console variable.

//

// Note: The replicate and notify params are only relevant for the

// original, Dark Messiah, and Episode 1 engines. Newer engines

// automatically do these things when the convar value is changed.

//

// @param value      New string value.

// @param replicate  If set to true, the new convar value will be set on all clients.

//                   This will only work if the convar has the FCVAR_REPLICATED flag

//                   and actually exists on clients.

// @param notify     If set to true, clients will be notified that the convar has changed.

//                   This will only work if the convar has the FCVAR_NOTIFY flag.

public native void SetString(const char[] value, bool replicate=false, bool notify=false);

// Resets the console variable to its default value.

//

// Note: The replicate and notify params are only relevant for the

// original, Dark Messiah, and Episode 1 engines. Newer engines

// automatically do these things when the convar value is changed.

//

// @param replicate  If set to true, the new convar value will be set on all clients.

//                   This will only work if the convar has the FCVAR_REPLICATED flag

//                   and actually exists on clients.

// @param notify     If set to true, clients will be notified that the convar has changed.

//                   This will only work if the convar has the FCVAR_NOTIFY flag.

public native void RestoreDefault(bool replicate=false, bool notify=false);

// Retrieves the default string value of a console variable.

//

// @param value      Buffer to store the default value of the convar.

// @param maxlength  Maximum length of string buffer.

// @return           Number of bytes written to the buffer (UTF-8 safe).

public native int GetDefault(char[] value, int maxlength);

// Retrieves the specified bound of a console variable.

//

// @param type       Type of bound to retrieve, ConVarBound_Lower or ConVarBound_Upper.

// @param value      By-reference cell to store the specified floating point bound value.

// @return           True if the convar has the specified bound set, false otherwise.

public native bool GetBounds(ConVarBounds type, float &value);

// Sets the specified bound of a console variable.

//

// @param type       Type of bound to set, ConVarBound_Lower or ConVarBound_Upper

// @param set        If set to true, convar will use specified bound. If false, bound will be removed.

// @param value      Floating point value to use as the specified bound.

public native void SetBounds(ConVarBounds type, bool set, float value=0.0);

// Retrieves the name of a console variable.

//

// @param name       Buffer to store the name of the convar.

// @param maxlength  Maximum length of string buffer.

public native void GetName(char[] name, int maxlength);

// Retrieves the description of a console variable.

//

// @param buffer     Buffer to store the description of the convar.

// @param maxlength  Maximum length of string buffer.

public native void GetDescription(char[] buffer, int maxlength);

// Replicates a convar value to a specific client. This does not change the actual convar value.

//

// @param client     Client index

// @param value      String value to send

// @return           True on success, false on failure

// @error            Invalid client index, client not in game, or client is fake

public native bool ReplicateToClient(int client, const char[] value);

// Creates a hook for when a console variable's value is changed.

//

// @param callback  An OnConVarChanged function pointer.

public native void AddChangeHook(ConVarChanged callback);

// Removes a hook for when a console variable's value is changed.

//

// @param callback  An OnConVarChanged function pointer.

// @error           No active hook on convar.

public native void RemoveChangeHook(ConVarChanged callback);

}

/**

 * Creates a hook for when a console variable's value is changed.

 *

 * @param convar        Handle to the convar.

 * @param callback      An OnConVarChanged function pointer.

 * @error               Invalid or corrupt Handle or invalid callback function.

 */

native void HookConVarChange(Handle convar, ConVarChanged callback);

/**

 * Removes a hook for when a console variable's value is changed.

 *

 * @param convar        Handle to the convar.

 * @param callback      An OnConVarChanged function pointer.

 * @error               Invalid or corrupt Handle, invalid callback function, or no active hook on convar.

 */

native void UnhookConVarChange(Handle convar, ConVarChanged callback);

/**

 * Returns the boolean value of a console variable.

 *

 * @param convar        Handle to the convar.

 * @return              The boolean value of the convar.

 * @error               Invalid or corrupt Handle.

 */

native bool GetConVarBool(Handle convar);

/**

 * Sets the boolean value of a console variable.

 *

 * Note: The replicate and notify params are only relevant for the original, Dark Messiah, and

 * Episode 1 engines. Newer engines automatically do these things when the convar value is changed.

 *

 * @param convar        Handle to the convar.

 * @param value         New boolean value.

 * @param replicate     If set to true, the new convar value will be set on all clients.

 *                      This will only work if the convar has the FCVAR_REPLICATED flag

 *                      and actually exists on clients.

 * @param notify        If set to true, clients will be notified that the convar has changed.

 *                      This will only work if the convar has the FCVAR_NOTIFY flag.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarBool(Handle convar, bool value, bool replicate=false, bool notify=false);

/**

 * Returns the integer value of a console variable.

 *

 * @param convar        Handle to the convar.

 * @return              The integer value of the convar.

 * @error               Invalid or corrupt Handle.

 */

native int GetConVarInt(Handle convar);

/**

 * Sets the integer value of a console variable.

 *

 * Note: The replicate and notify params are only relevant for the original, Dark Messiah, and

 * Episode 1 engines. Newer engines automatically do these things when the convar value is changed.

 *

 * @param convar        Handle to the convar.

 * @param value         New integer value.

 * @param replicate     If set to true, the new convar value will be set on all clients.

 *                      This will only work if the convar has the FCVAR_REPLICATED flag

 *                      and actually exists on clients.

 * @param notify        If set to true, clients will be notified that the convar has changed.

 *                      This will only work if the convar has the FCVAR_NOTIFY flag.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarInt(Handle convar, int value, bool replicate=false, bool notify=false);

/**

 * Returns the floating point value of a console variable.

 *

 * @param convar        Handle to the convar.

 * @return              The floating point value of the convar.

 * @error               Invalid or corrupt Handle.

 */

native float GetConVarFloat(Handle convar);

/**

 * Sets the floating point value of a console variable.

 *

 * Note: The replicate and notify params are only relevant for the original, Dark Messiah, and

 * Episode 1 engines. Newer engines automatically do these things when the convar value is changed.

 *

 * @param convar        Handle to the convar.

 * @param value         New floating point value.

 * @param replicate     If set to true, the new convar value will be set on all clients.

 *                      This will only work if the convar has the FCVAR_REPLICATED flag

 *                      and actually exists on clients.

 * @param notify        If set to true, clients will be notified that the convar has changed.

 *                      This will only work if the convar has the FCVAR_NOTIFY flag.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarFloat(Handle convar, float value, bool replicate=false, bool notify=false);

/**

 * Retrieves the string value of a console variable.

 *

 * @param convar        Handle to the convar.

 * @param value         Buffer to store the value of the convar.

 * @param maxlength     Maximum length of string buffer.

 * @error               Invalid or corrupt Handle.     

 */

native void GetConVarString(Handle convar, char[] value, int maxlength);

/**

 * Sets the string value of a console variable.

 *

 * Note: The replicate and notify params are only relevant for the original, Dark Messiah, and

 * Episode 1 engines. Newer engines automatically do these things when the convar value is changed.

 *

 * @param convar        Handle to the convar.

 * @param value         New string value.

 * @param replicate     If set to true, the new convar value will be set on all clients.

 *                      This will only work if the convar has the FCVAR_REPLICATED flag

 *                      and actually exists on clients.

 * @param notify        If set to true, clients will be notified that the convar has changed.

 *                      This will only work if the convar has the FCVAR_NOTIFY flag.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarString(Handle convar, const char[] value, bool replicate=false, bool notify=false);

/**

 * Resets the console variable to its default value.

 *

 * Note: The replicate and notify params are only relevant for the original, Dark Messiah, and

 * Episode 1 engines. Newer engines automatically do these things when the convar value is changed.

 *

 * @param convar        Handle to the convar.

 * @param replicate     If set to true, the new convar value will be set on all clients.

 *                      This will only work if the convar has the FCVAR_REPLICATED flag

 *                      and actually exists on clients.

 * @param notify        If set to true, clients will be notified that the convar has changed.

 *                      This will only work if the convar has the FCVAR_NOTIFY flag.

 * @error               Invalid or corrupt Handle.

 */

native void ResetConVar(Handle convar, bool replicate=false, bool notify=false);

/**

 * Retrieves the default string value of a console variable.

 *

 * @param convar        Handle to the convar.

 * @param value         Buffer to store the default value of the convar.

 * @param maxlength     Maximum length of string buffer.

 * @return              Number of bytes written to the buffer (UTF-8 safe).

 * @error               Invalid or corrupt Handle.

 */

native int GetConVarDefault(Handle convar, char[] value, int maxlength);

/**

 * Returns the bitstring of flags on a console variable.

 *

 * @param convar        Handle to the convar.

 * @return              A bitstring containing the FCVAR_* flags that are enabled.

 * @error               Invalid or corrupt Handle.

 */

native int GetConVarFlags(Handle convar);

/**

 * Sets the bitstring of flags on a console variable.

 *

 * @param convar        Handle to the convar.

 * @param flags         A bitstring containing the FCVAR_* flags to enable.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarFlags(Handle convar, int flags);

/**

 * Retrieves the specified bound of a console variable.

 *

 * @param convar        Handle to the convar.

 * @param type          Type of bound to retrieve, ConVarBound_Lower or ConVarBound_Upper.

 * @param value         By-reference cell to store the specified floating point bound value.

 * @return              True if the convar has the specified bound set, false otherwise.

 * @error               Invalid or corrupt Handle.

 */

native bool GetConVarBounds(Handle convar, ConVarBounds type, float &value);

/**

 * Sets the specified bound of a console variable.

 *

 * @param convar        Handle to the convar.

 * @param type          Type of bound to set, ConVarBound_Lower or ConVarBound_Upper

 * @param set           If set to true, convar will use specified bound. If false, bound will be removed.

 * @param value         Floating point value to use as the specified bound.

 * @error               Invalid or corrupt Handle.

 */

native void SetConVarBounds(Handle convar, ConVarBounds type, bool set, float value=0.0);

/**

 * Retrieves the name of a console variable.

 *

 * @param convar        Handle to the convar.

 * @param name          Buffer to store the name of the convar.

 * @param maxlength     Maximum length of string buffer.

 * @error               Invalid or corrupt Handle.     

 */

native void GetConVarName(Handle convar, char[] name, int maxlength);

/**

 * Replicates a convar value to a specific client. This does not change the actual convar value.

 *

 * @param client        Client index

 * @param convar        ConVar handle

 * @param value         String value to send

 * @return              True on success, false on failure

 * @error               Invalid client index, client not in game, or client is fake

 */

native bool SendConVarValue(int client, Handle convar, const char[] value);

typeset ConVarQueryFinished

{

// Called when a query to retrieve a client's console variable has finished.

//

// @param cookie        Unique identifier of query.

// @param client        Player index.

// @param result        Result of query that tells one whether or not query was successful.

//                      See ConVarQueryResult enum for more details.

// @param convarName    Name of client convar that was queried.

// @param convarValue   Value of client convar that was queried if successful. This will be "" if it was not.

// @param value         Value that was passed when query was started.

function void (QueryCookie cookie, int client, ConVarQueryResult result, const char[] cvarName, const char[] cvarValue, any value);

// Called when a query to retrieve a client's console variable has finished.

//

// @param cookie        Unique identifier of query.

// @param client        Player index.

// @param result        Result of query that tells one whether or not query was successful.

//                      See ConVarQueryResult enum for more details.

// @param convarName    Name of client convar that was queried.

// @param convarValue   Value of client convar that was queried if successful. This will be "" if it was not.

function void (QueryCookie cookie, int client, ConVarQueryResult result, const char[] cvarName, const char[] cvarValue);

};

/**

 * Starts a query to retrieve the value of a client's console variable.

 *

 * @param client        Player index.

 * @param cvarName      Name of client convar to query.

 * @param callback      A function to use as a callback when the query has finished.

 * @param value         Optional value to pass to the callback function.

 * @return              A cookie that uniquely identifies the query. 

 *                      Returns QUERYCOOKIE_FAILED on failure, such as when used on a bot.

 */

native QueryCookie QueryClientConVar(int client, const char[] cvarName, ConVarQueryFinished callback, any value=0);

/**

 * Returns true if the supplied character is valid in a ConVar name.

 *

 * @param c             Character to validate.

 * @return              True is valid for ConVars, false otherwise

 */

stock bool IsValidConVarChar(int c)

{

return (c == '_' || IsCharAlpha(c) || IsCharNumeric(c));

}

This
