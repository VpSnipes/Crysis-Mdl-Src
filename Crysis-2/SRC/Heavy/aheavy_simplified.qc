$origin 0 0 0 180
$modelname "crysis2\aheavy.mdl"
$model "Body" "aheavy_reference.smd"
$model "Body" "aheavy_jelly.smd"
$model "Body" "aheavy_jelly_sss.smd"
$model "Body" "aheavy_jelly_refract.smd"
$model "Body" "aheavy_jelly_metal.smd"
$poseparameter "move_yaw" -180 180 wrap
$contents "solid"
$cdmaterials "models\crysis2\aheavy\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$Sequence "Ragdoll" { 
	"reference.smd"
	activity "ACT_DIERAGDOLL" 1
}

$bodygroup "Helmet"
{
	studio "aheavy_helmet.smd"
	blank
}
$bodygroup "RightChest"
{
	studio "aheavy_rightchest.smd"
	blank
}
$bodygroup "LeftChest"
{
	studio "aheavy_leftchest.smd"
	blank
}
$bodygroup "RightBack"
{
	studio "aheavy_rightback.smd"
	blank
}
$bodygroup "LeftBack"
{
	studio "aheavy_leftback.smd"
	blank
}

$weightlist worldblend_params {
	"Heavy_Root"		0
	"R_Arm01_Joint01"	1
	"R_Arm02_Joint01"	1
}

$weightlist all {
	"Heavy_Root"		1
}

$weightlist aim_parameters {
	"Pelvis"              0
	"L_Hip"               0
	"L_Leg01"             0
	"L_Leg02"             0
	"L_Leg03"             0
	"L_Foot"              0
	"L_Heel"              0
	"L_Toe0Nub"           0
	"Left_Toe1_Joint01"   0
	"Left_Toe1_Joint02"   0
	"Left_Toe2_Joint01"   0
	"Left_Toe2_Joint02"   0
	"Left_Toe3_Joint01"   0
	"Left_Toe3_Joint02"   0
	"Left_Toe3_Joint03"   0
	"Left_Toe4_Joint01"   0
	"Left_Toe4_Joint02"   0
	"Left_Toe4_Joint03"   0
	"R_Hip"               0
	"R_Leg01"             0
	"R_Leg02"             0
	"R_Leg03"             0
	"R_Foot"              0
	"R_Heel"              0
	"R_Toe0Nub"           0
	"Right_Toe1_Joint01"  0
	"Right_Toe1_Joint02"  0
	"Right_Toe2_Joint01"  0
	"Right_Toe2_Joint02"  0
	"Right_Toe3_Joint01"  0
	"Right_Toe3_Joint02"  0
	"Right_Toe3_Joint03"  0
	"Right_Toe4_Joint01"  0
	"Right_Toe4_Joint02"  0
	"Right_Toe4_Joint03"  0
	"Spine01"             1
	"Spine02"             1
	"Spine03"             1
	"Spine04"             1
	"jellyBone"           1
	"L_Clavicle"          1
	"L_Arm01"             1
	"L_Arm02"             1
	"L_Arm03"             1
	"L_Arm04"             1
	"L_Arm05"             1
	"L_Hand"              1
	"L_Finger1_01"        1
	"L_Finger1_02"        1
	"L_Finger1_03"        1
	"L_Finger2_01"        1
	"L_Finger2_02"        1
	"L_Finger2_03"        1
	"L_Finger3_01"        1
	"L_Finger3_02"        1
	"L_Finger3_03"        1
	"L_WeaponBn_01"       1
	"L_WeaponBn_02"       1
	"L_WeaponBn_03"       1
	"weapon_boneL"        1
	"L_ShoulderPad"       1
	"L_Tent_Connector"    1
	"null_Rope01_connect" 1
	"Rope01_Seg01"        0
	"Rope01_Seg02"        0
	"Rope01_Seg03"        0
	"Rope01_Seg04"        0
	"Rope01_Seg05"        0
	"Rope01_Seg06"        0
	"Neck_01"             1
	"Head"                1
	"BN_LookIK"           1
	"null_Rope03_connect" 1
	"Rope03_Seg01"        0
	"Rope03_Seg02"        0
	"Rope03_Seg03"        0
	"Rope03_Seg04"        0
	"Rope03_Seg05"        0
	"R_Clavicle"          1
	"R_Arm01"             1
	"R_Arm02"             1
	"R_Arm03"             1
	"R_Arm04"             1
	"R_Arm05"             1
	"R_Hand"              1
	"R_Finger1_01"        1
	"R_Finger1_02"        1
	"R_Finger1_03"        1
	"R_Finger2_01"        1
	"R_Finger2_02"        1
	"R_Finger2_03"        1
	"R_Finger3_01"        1
	"R_Finger3_02"        1
	"R_Finger3_03"        1
	"R_WeaponBn_01"       1
	"R_WeaponBn_02"       1
	"R_WeaponBn_03"       1
	"weapon_bone"         1
	"R_ShoulderPad"       1
	"R_Tent_Connector"    1
	"null_Rope02_connect" 1
	"Rope02_Seg01"        0
	"Rope02_Seg02"        0
	"Rope02_Seg03"        0
	"Rope02_Seg04"        0
	"Rope02_Seg05"        0
	"Rope02_Seg06"        0
}

$Animation "aimidle_lo_com_ref" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_lo_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 2 2	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 7 7	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 5 5	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 9 9	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_left_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 0 0	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_right_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 4 4	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 12 12	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 10 10	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 14 14	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimrun_lo_com_ref" 			"anims/aimparams/aim_pose_lo_run.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimrun_lo_com" 				"anims/aimparams/aim_pose_lo_run.smd" 	frame 2 2 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 7 7 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 5 5 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 9 9 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 0 0 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_right_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 4 4 	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_com" 			"anims/aimparams/aim_pose_lo_run.smd" 	frame 12 12 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 10 10 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 14 14 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_lo_ref" 		"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_lo" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 2 2	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 7 7	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_left" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 5 5	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_right" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 9 9	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_left" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 0 0	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_right" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 4 4	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 12 12	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_left" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 10 10	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_right" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 14 14	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters

$Animation "aimidle_hi_com_ref" 		"anims/aimparams/aim_pose_hi_idle.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_hi_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 2 2	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 7 7	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 5 5	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 9 9	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_left_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 0 0	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_right_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 4 4	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 12 12	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 10 10	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 14 14	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimidle_hi_ref" 		"anims/aimparams/aim_pose_hi_mortar.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_hi" 			"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 2 2	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 7 7	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_left" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 5 5	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_right" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 9 9	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_left" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 0 0	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_right" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 4 4	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up" 			"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 12 12	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_left" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 10 10	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_right" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 14 14	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters

$Animation "aimwalk_hi_ref" 		"anims/aimparams/aim_pose_hi_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_hi" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 2 2	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 7 7	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_left" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 5 5	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_right" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 9 9	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_left" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 0 0	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_right" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 4 4	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 12 12	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_left" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 10 10	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_right" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 14 14	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters

$sequence "aimidle_lo_params" {
    "aimidle_lo_up_right_com" 		"aimidle_lo_up_com" 	"aimidle_lo_up_left_com"
    "aimidle_lo_right_com" 			"aimidle_lo_com" 		"aimidle_lo_left_com"
    "aimidle_lo_down_right_com" 	"aimidle_lo_down_com" 	"aimidle_lo_down_left_com"
	blendcenter aimidle_lo_com
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimrun_lo_params" {
    "aimrun_lo_up_right_com" 	"aimrun_lo_up_com" 		"aimrun_lo_up_left_com"
    "aimrun_lo_right_com" 		"aimrun_lo_com" 		"aimrun_lo_left_com"
    "aimrun_lo_down_right_com" 	"aimrun_lo_down_com" 	"aimrun_lo_down_left_com"
	blendcenter aimrun_lo_com
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimwalk_lo_params" {
    "aimwalk_lo_up_right" 	"aimwalk_lo_up"		"aimwalk_lo_up_left"
    "aimwalk_lo_right" 		"aimwalk_lo" 		"aimwalk_lo_left"
    "aimwalk_lo_down_right"	"aimwalk_lo_down" 	"aimwalk_lo_down_left"
	blendcenter aimwalk_lo
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimidle_hi_params" {
    "aimidle_hi_up_right_com" 		"aimidle_hi_up_com" 	"aimidle_hi_up_left_com"
    "aimidle_hi_right_com" 			"aimidle_hi_com" 		"aimidle_hi_left_com"
    "aimidle_hi_down_right_com" 	"aimidle_hi_down_com" 	"aimidle_hi_down_left_com"
	blendcenter aimidle_hi_com
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimmortar_hi_params" {
    "aimidle_hi_up_right" 		"aimidle_hi_up" 	"aimidle_hi_up_left"
    "aimidle_hi_right" 			"aimidle_hi" 		"aimidle_hi_left"
    "aimidle_hi_down_right" 	"aimidle_hi_down" 	"aimidle_hi_down_left"
	blendcenter aimidle_hi
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimwalk_hi_params" {
    "aimwalk_hi_up_right"	"aimwalk_hi_up"		"aimwalk_hi_up_left"
    "aimwalk_hi_right"		"aimwalk_hi" 		"aimwalk_hi_left"
    "aimwalk_hi_down_right"	"aimwalk_hi_down" 	"aimwalk_hi_down_left"
	blendcenter aimwalk_hi
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

// --- Behaviors ------------------------------------------------------------------------
$Sequence "stand_idle_grunting_01" { 
	"anims/behavior/stand_idle_grunting_01.smd"
	activity "act_stand_idle_grunting_01" 1
	addlayer "aimidle_lo_params"
	{ event 1100 4 "snd sfx_medium" }
	{ event 1100 32 "snd sfx_light" }
}

$Sequence "stand_idle_grunting_02" { 
	"anims/behavior/stand_idle_grunting_02.smd"
	activity "act_stand_idle_grunting_02" 1
	addlayer "aimidle_lo_params"
	{ event 1100 7 "snd sfx_light" }
}

$Sequence "stand_idle_sightedsurprise" { 
	"anims/behavior/stand_idle_sightedsurprise.smd"
	activity "act_stand_idle_sightedsurprise" 1
}

$Sequence "stand_idle_sightedsuspect" { 
	"anims/behavior/stand_idle_sightedsuspect.smd"
	activity "act_stand_idle_sightedsuspect" 1
	addlayer "aimidle_lo_params"
}

$Sequence "stand_idle_surprise" { 
	"anims/behavior/stand_idle_surprise.smd"
	activity "act_stand_idle_surprise" 1
	addlayer "aimidle_lo_params"
}

$Sequence "stand_idle_taunt" { 
	"anims/behavior/stand_idle_taunt.smd"
	activity "act_stand_idle_taunt" 1
	addlayer "aimidle_lo_params"
	{ event 1100 8 "snd sfx_medium" }
	{ event 1100 49 "snd sfx_light" }
}

// --- Idle -------------------------------------------------------------------------------
$Sequence "stand_com_idle" { 
	"anims/behavior/idle/stand_com_idle.smd"
	activity "act_idle" 1
	addlayer "aimidle_lo_params"
	loop
}

$Sequence "stand_minigun_idle" { 
	"anims/behavior/idle/stand_com_idle.smd"
	activity "act_idle" 1
	addlayer "aimidle_hi_params"
	loop
	weightlist worldblend_params
	worldspaceblend "aimidle_hi_com_ref"
	weightlist all
}

$Sequence "stand_idle" { 
	"anims/behavior/idle/stand_idle.smd"
	activity "act_idle_relaxed" 1
	addlayer "aimidle_lo_params"
	loop
}
// ---  Death   ----------------------------------------------------------------------------
$Sequence "stand_death_headshot" { 
	"anims/deaths/stand_death_headshot.smd"
	activity "act_stand_death_headshot" 1
	{ event 1100 2 "snd sfx_medium" }
	{ event 1100 15 "snd sfx_hit" }
	{ event 1100 57 "snd sfx_hit_wall" }
	{ event 1100 30 "snd sfx_medium" }
	{ event 1100 10 "footstep" }
	{ event 1100 14 "footstep" }
}
$Sequence "stand_death_microwave" { 
	"anims/deaths/stand_death_microwave.smd"
	activity "act_stand_death_microwave" 1
	{ event 1100 22 "snd sfx_medium" }
	{ event 1100 58 "snd sfx_light" }
	{ event 1100 90 "snd sfx_light" }
	{ event 1100 64 "footstep" }
	{ event 1100 98 "footstep" }
}
$Sequence "stand_deathexplode_front_torso" { 
	"anims/deaths/stand_deathexplode_front_torso.smd"
	activity "act_stand_deathexplode_front_torso" 1
	{ event 1100 1 "snd sfx_heavy" }
	{ event 1100 20 "snd sfx_hit" }
	{ event 1100 30 "snd sfx_hit_wall" }
	{ event 1100 16 "footstep" }
}
$Sequence "stand_deathmech_front_torso" { 
	"anims/deaths/stand_deathmech_front_torso.smd"
	activity "act_stand_deathmech_front_torso" 1
	{ event 1100 21 "snd sfx_hit_wall" }
	{ event 1100 2 "snd sfx_medium" }
	{ event 1100 103 "snd sfx_light" }
}

// ---  Hit     ----------------------------------------------------------------------------
$Sequence "stand_hit_explosion" { 
	"anims/hits/stand_hit_explosion.smd"
	activity "act_stand_hit_explosion" 1
	{ event 1100 8 "footstep" }
	{ event 1100 15 "footstep" }
}
$Sequence "stand_hit_front_torso_01" { 
	"anims/hits/stand_hit_front_torso_01.smd"
	activity "act_stand_hit_front_torso_01" 1
	{ event 1100 0 "snd sfx_heavy" }
	{ event 1100 14 "snd sfx_light" }
	{ event 1100 8 "footstep" }
	{ event 1100 15 "footstep" }
}
$Sequence "stand_hit_front_torso_02" { 
	"anims/hits/stand_hit_front_torso_02.smd"
	activity "act_stand_hit_front_torso_02" 1
	{ event 1100 8 "footstep" }	
}
$Sequence "stand_hit_mortar" { 
	"anims/hits/stand_hit_mortar.smd"
	activity "act_stand_hit_mortar" 1
	{ event 1100 2 "snd sfx_heavy" }
	{ event 1100 32 "snd sfx_light" }	
	{ event 1100 12 "footstep" }
	{ event 1100 16 "footstep" }
	{ event 1100 57 "footstep" }
	{ event 1100 70 "footstep" }
}
$Sequence "stand_stun_com" { 
	"anims/hits/stand_stun_com.smd"
	activity "act_stand_stun_com" 1
}

// ---  Run     ----------------------------------------------------------------------------
$Animation "Run_com_Front" 			"anims\locomotion\run\stand\stand_run_com_fwd_fast.smd"				loop LX LY		rotateto 0		
$Animation "Run_com_Back" 			"anims\locomotion\run\stand\stand_run_com_bwd_fast.smd"				loop LX LY		rotateto -180	
$Animation "Run_com_Right" 			"anims\locomotion\run\stand\stand_runstrafefwd_com_rgt_fast.smd"	loop LX LY		rotateto -90 	
$Animation "Run_com_Left" 			"anims\locomotion\run\stand\stand_runstrafefwd_com_lft_fast.smd"	loop LX LY		rotateto 90 	

$sequence "stand_run_com" {
	"Run_com_Back"
	"Run_com_Right"
	"Run_com_Front"
	"Run_com_Left"
	"Run_com_Back"
	//--Sound
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer "aimrun_lo_params"
	{ event 1100 12 "footstep" }
	{ event 1100 28 "footstep" }
}

// ---  Step    ----------------------------------------------------------------------------
$Sequence "stand_step_rlx_180_fast_lfoot" { 
	"anims/locomotion/step/stand/stand_step_com_180_fast_lfoot.smd"
	activity "act_stand_step_rlx_180_fast_lfoot" 1
	addlayer "aimidle_lo_params"
	{ event 1100 6 "snd sfx_medium" }
	{ event 1100 25 "footstep" }
	{ event 1100 33 "footstep" }
	{ event 1100 50 "footstep" }
	ZR
}
$Sequence "stand_step_rlx_180_fast_rfoot" { 
	"anims/locomotion/step/stand/stand_step_com_180_fast_rfoot.smd"
	activity "act_stand_step_rlx_180_fast_rfoot" 1
	addlayer "aimidle_lo_params"
	{ event 1100 4 "snd sfx_turn" }
	{ event 1100 24 "footstep" }
	{ event 1100 30 "footstep" }
	{ event 1100 48 "footstep" }
	ZR
}
$Sequence "stand_steprotate_rlx_lft" { 
	"anims/locomotion/step/stand/stand_steprotate_com_lft.smd"
	activity "act_stand_steprotate_rlx_lft" 1
	addlayer "aimidle_lo_params"
	{ event 1100 1 "snd sfx_light" }
	{ event 1100 16 "footstep" }
	{ event 1100 26 "footstep" }
	ZR
}
$Sequence "stand_steprotate_rlx_rgt" { 
	"anims/locomotion/step/stand/stand_steprotate_com_rgt.smd"
	activity "act_stand_steprotate_rlx_rgt" 1
	addlayer "aimidle_lo_params"
	{ event 1100 0 "snd sfx_medium" }
	{ event 1100 16 "footstep" }
	{ event 1100 26 "footstep" }
	ZR
}

$Animation "Walk_Front" 		"anims\locomotion\walk\stand\stand_walk_com_fwd_fast.smd"			loop LX LY		rotateto 0	
$Animation "Walk_Back" 			"anims\locomotion\walk\stand\stand_walk_com_bwd_fast.smd"			loop LX LY		rotateto -180
$Animation "Walk_Right" 		"anims\locomotion\walk\stand\stand_walkstrafefwd_com_rgt_fast.smd"	loop LX LY		rotateto -90 
$Animation "Walk_Left" 			"anims\locomotion\walk\stand\stand_walkstrafefwd_com_lft_fast.smd"	loop LX LY		rotateto 90 

$sequence "stand_walk" {
	"Walk_Back"
	"Walk_Right"
	"Walk_Front"
	"Walk_Left"
	"Walk_Back"
	//--Sound
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_WALK" 1
	addlayer "aimwalk_lo_params"
	{ event 1100 10 "footstep" }
	{ event 1100 35 "footstep" }
}

$Animation "Walk_com_Front" 		"anims\locomotion\walk\stand\stand_walk_com_fwd_fast.smd"			loop LX LY		rotateto 0		weightlist worldblend_params	worldspaceblend "aimwalk_hi_ref"	weightlist all
$Animation "Walk_com_Back" 			"anims\locomotion\walk\stand\stand_walk_com_bwd_fast.smd"			loop LX LY		rotateto -180	weightlist worldblend_params	worldspaceblend "aimwalk_hi_ref"	weightlist all
$Animation "Walk_com_Right" 		"anims\locomotion\walk\stand\stand_walkstrafefwd_com_rgt_fast.smd"	loop LX LY		rotateto -90 	weightlist worldblend_params	worldspaceblend "aimwalk_hi_ref"	weightlist all
$Animation "Walk_com_Left" 			"anims\locomotion\walk\stand\stand_walkstrafefwd_com_lft_fast.smd"	loop LX LY		rotateto 90 	weightlist worldblend_params	worldspaceblend "aimwalk_hi_ref"	weightlist all

$sequence "stand_walk_com" {
	"Walk_com_Back"
	"Walk_com_Right"
	"Walk_com_Front"
	"Walk_com_Left"
	"Walk_com_Back"
	//--Sound
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_WALK_AGITATED" 1
	addlayer "aimwalk_hi_params"
	{ event 1100 10 "footstep" }
	{ event 1100 35 "footstep" }
}

// ---	Synced	----------------------------------------------------------------------------
$Sequence "stand_syncdeathheavy_front_heavy_01" {
	"anims/synced/pva/stand_syncdeathheavy_front_heavy_01.smd"
	activity "act_stand_syncdeathheavy_front_heavy_01" 1
	{ event 1100 6 "snd sfx_heavy" }
	{ event 1100 21 "footstep" }
	{ event 1100 31 "footstep" }
}

// ---	Weapon	----------------------------------------------------------------------------
$Sequence "stand_idle_aimtransition_com_mortar_into" {
	"anims/weapons/stand_idle_aimtransition_com_mortar_into.smd"
	activity "act_stand_idle_aimtransition_com_mortar_into" 1
	{ event 1100 17 "snd sfx_activate_mortar" }
	{ event 1100 6 "footstep" }
}
$Sequence "stand_idle_aimtransition_com_mortar_outof" {
	"anims/weapons/stand_idle_aimtransition_com_mortar_outof.smd"
	activity "act_stand_idle_aimtransition_com_mortar_outof" 1
	{ event 1100 9 "footstep" }
	{ event 1100 37 "footstep" }
}
$Sequence "stand_idle_into_aim_com_gun" {
	"anims/weapons/stand_idle_into_aim_com_gun.smd"
	activity "act_stand_idle_into_aim_com_gun" 1
	{ event 1100 3 "snd sfx_light" }
}
$Sequence "stand_idle_into_aim_com_gun_away" {
	"anims/weapons/stand_idle_into_aim_com_gun.smd"
	activity "act_stand_idle_into_aim_com_gun" 1
	reverse
}
$Sequence "stand_idle_mortar" {
	"anims/weapons/stand_idle_mortar.smd"
	activity "act_stand_idle_mortar" 1
	loop
}
$Sequence "stand_melee_com_gun" {
	"anims/weapons/stand_melee_com_gun.smd"
	activity "act_stand_melee_com_gun" 1
	{ event 1100 2 "snd sfx_medium" }
	{ event 1100 13 "snd sfx_heavy" }
	{ event 1100 39 "footstep" }
}

$surfaceprop "metal"
$jointsurfaceprop "Jelly"	 "default_silent"
$hboxset "default"

$hbox 3 "Pelvis"	    -8.00   -7.00   -7.00     8.00    7.00    7.00
$hbox 6 "L_Leg01"	    -7.00   -7.00   -6.00     9.00    5.00   26.00
$hbox 6 "L_Leg02"	    -7.00   -6.00   -5.00     7.00    6.00   27.00
$hbox 6 "L_Leg03"	    -5.20   -7.15   -3.30     4.19    7.26   19.85
$hbox 6 "L_Foot"	    -5.33   -7.66   -9.37    11.40    8.31    6.46
$hbox 6 "Left_Toe1_Joint01"	    -1.75   -1.70   -0.01     2.35    2.13    5.05
$hbox 6 "Left_Toe1_Joint02"	    -1.15   -2.29   -0.83     1.84    1.35    4.64
$hbox 6 "Left_Toe1_Joint03"	    -2.24   -0.95   -8.13     2.71    2.13    6.22
$hbox 6 "Left_Toe2_Joint01"	    -1.98   -1.49   -0.01     2.13    2.31    4.85
$hbox 6 "Left_Toe2_Joint02"	    -1.45   -2.10   -0.71     1.54    1.54    4.64
$hbox 6 "Left_Toe2_Joint03"	    -2.44   -0.91   -8.10     2.47    2.11    6.20
$hbox 6 "Left_Toe3_Joint01"	    -1.56   -0.96   -0.71     1.97    2.00    4.34
$hbox 6 "Left_Toe3_Joint02"	    -0.93   -1.57   -0.38     1.37    1.42    4.01
$hbox 6 "Left_Toe3_Joint03"	    -2.10   -0.54   -5.72     2.01    1.81    5.76
$hbox 6 "Left_Toe4_Joint01"	    -1.83   -0.82   -0.53     1.69    2.32    4.57
$hbox 6 "Left_Toe4_Joint02"	    -1.10   -1.36   -0.12     1.19    1.63    4.25
$hbox 6 "Left_Toe4_Joint03"	    -1.98   -0.32   -5.56     2.15    2.16    5.89
$hbox 7 "R_Leg01"	    -7.00   -5.00   -6.00     9.00    7.00   26.00
$hbox 7 "R_Leg02"	    -7.00   -6.00   -5.00     7.00    6.00   27.00
$hbox 7 "R_Leg03"	    -5.20   -7.25   -3.29     4.19    7.16   19.86
$hbox 7 "R_Foot"	    -5.31   -8.30   -9.37    11.42    7.67    6.46
$hbox 7 "Right_Toe1_Joint01"	    -2.35   -1.70   -0.01     1.75    2.13    5.05
$hbox 7 "Right_Toe1_Joint02"	    -1.84   -2.29   -0.82     1.16    1.35    4.64
$hbox 7 "Right_Toe1_Joint03"	    -2.70   -0.95   -8.14     2.25    2.13    6.22
$hbox 7 "Right_Toe2_Joint01"	    -2.13   -1.47    0.00     1.97    2.33    4.87
$hbox 7 "Right_Toe2_Joint02"	    -1.54   -2.10   -0.69     1.45    1.54    4.64
$hbox 7 "Right_Toe2_Joint03"	    -2.47   -0.88   -8.10     2.44    2.12    6.19
$hbox 7 "Right_Toe3_Joint01"	    -1.97   -0.98   -0.72     1.56    1.99    4.33
$hbox 7 "Right_Toe3_Joint02"	    -1.35   -1.58   -0.40     0.95    1.41    3.98
$hbox 7 "Right_Toe3_Joint03"	    -2.01   -0.54   -5.72     2.10    1.77    5.75
$hbox 7 "Right_Toe4_Joint01"	    -1.68   -0.82   -0.53     1.84    2.31    4.56
$hbox 7 "Right_Toe4_Joint02"	    -1.18   -1.36   -0.13     1.11    1.63    4.24
$hbox 7 "Right_Toe4_Joint03"	    -2.15   -0.32   -5.56     1.98    2.15    5.88
$hbox 2 "Spine01"	    -7.04  -13.00    0.00     0.96   13.00   22.43
$hbox 2 "Spine03"	    -8.00   -8.00  -13.00    12.00    8.00    3.00
$hbox 2 "Spine04"	    -4.00  -17.50  -13.00    26.00   17.50   15.00
$hbox 4 "L_Shoulder"	   -12.00  -12.00   -5.50    12.00   12.00    1.50
$hbox 4 "L_Arm01_Joint01"	    -4.00   -5.00   -1.00     4.00    5.00    9.00
$hbox 4 "L_Arm01_Joint02"	    -4.00   -5.00   -1.00     4.00    5.00    9.00
$hbox 4 "L_Arm01_Joint03"	    -4.00   -5.00   -1.00     4.00    5.00    9.00
$hbox 4 "L_Arm01_Joint04"	    -4.00   -5.00   -1.00     4.00    5.00    9.00
$hbox 4 "L_Hand"	    -7.00   -6.50   -8.00     3.00    6.50    8.00
$hbox 4 "weapon_boneL"	   -33.50    2.00   -9.30    21.50   16.00    4.70
$hbox 4 "L_Arm02_Joint01"	    -4.00   -4.00   -1.00     4.00    4.00    9.00
$hbox 4 "L_Arm02_Joint02"	    -4.00   -4.00   -1.00     4.00    4.00    9.00
$hbox 4 "L_Arm02_Joint03"	    -4.00   -4.00   -1.00     4.00    4.00    9.00
$hbox 4 "L_Arm02_Joint04"	    -4.00   -4.00   -1.00     4.00    4.00    9.00
$hbox 5 "R_Shoulder"	   -12.00  -12.00   -5.50    12.00   12.00    1.50
$hbox 5 "R_Arm01_Joint01"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm01_Joint02"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm01_Joint03"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm01_Joint04"	    -3.50   -3.50    0.00     3.50    3.50   10.00
$hbox 5 "R_Hand"	    -8.00   -9.00   -3.00    10.00    9.00   13.00
$hbox 5 "weapon_bone"	     9.50   -9.00   -6.00    46.50    3.00    6.00
$hbox 5 "R_Arm02_Joint01"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm02_Joint02"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm02_Joint03"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 5 "R_Arm02_Joint04"	    -3.50   -3.50   -1.00     3.50    3.50    9.00
$hbox 13 "Rope03_Seg01"	    -3.50   -3.50   -1.00     3.50    3.50   11.00
$hbox 13 "Rope03_Seg02"	    -2.50   -2.50   -0.50     2.50    2.50   11.50
$hbox 13 "Rope03_Seg03"	    -1.50   -1.50   -1.00     1.50    1.50   13.00
$hbox 13 "Rope03_Seg04"	    -1.00   -1.00   -0.50     1.00    1.00    8.50
$hbox 13 "Rope01_Seg01"	    -5.50   -5.50   -2.50     5.50    5.50   10.50
$hbox 13 "Rope01_Seg02"	    -4.00   -4.00   -2.50     4.00    4.00   10.50
$hbox 13 "Rope01_Seg03"	    -3.00   -3.00   -1.00     3.00    3.00    9.00
$hbox 13 "Rope01_Seg04"	    -2.50   -2.50   -1.00     2.50    2.50    9.00
$hbox 13 "Rope01_Seg05"	    -2.00   -2.00    0.00     2.00    2.00    8.00
$hbox 13 "Rope01_Seg06"	    -1.50   -1.50   -1.00     1.50    1.50    7.00
$hbox 1 "Head"	    -3.00   -6.00   -5.97    11.00    6.00    9.03
$hbox 13 "Rope02_Seg01"	    -5.50   -5.50   -2.50     5.50    5.50   10.50
$hbox 13 "Rope02_Seg02"	    -4.00   -4.00   -2.50     4.00    4.00   10.50
$hbox 13 "Rope02_Seg03"	    -3.00   -3.00   -1.00     3.00    3.00    9.00
$hbox 13 "Rope02_Seg04"	    -2.50   -2.50   -1.00     2.50    2.50    9.00
$hbox 13 "Rope02_Seg05"	    -2.00   -2.00    0.00     2.00    2.00    8.00
$hbox 13 "Rope02_Seg06"	    -1.50   -1.50   -1.00     1.50    1.50    7.00
$hbox 5 "weapon_bone"	   -28.00   -1.00   -3.00    -2.00    7.00    5.00
$hbox 12 "Jelly"	   -14.50   -7.00    4.00     8.50    7.00   20.00
$hbox 12 "Jelly"	    -6.50  -11.50    1.00    16.50   11.50   19.00
$hbox 12 "Jelly"	    -2.00  -12.00  -18.00    18.00   12.00    8.00

$collisionjoints "physmesh.smd"
{
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "heavy_root"
	$collisionjoints ragdoll {

	$jointconstrain "spine03" x limit -50.00 50.00 0.00
	$jointconstrain "spine03" y limit -50.00 50.00 0.00
	$jointconstrain "spine03" z limit -50.00 50.00 0.00

	$jointconstrain "r_arm01_joint01" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm01_joint01" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm01_joint01" z limit -60.00 60.00 0.00

	$jointconstrain "r_arm01_joint03" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm01_joint03" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm01_joint03" z limit -60.00 60.00 0.00

	$jointconstrain "r_arm02_joint01" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm02_joint01" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm02_joint01" z limit -60.00 60.00 0.00

	$jointconstrain "rope02_seg01" x limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg01" y limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg01" z limit -60.00 60.00 0.00

	$jointconstrain "rope02_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "rope02_seg05" x limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg05" y limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg05" z limit -60.00 60.00 0.00

	$jointconstrain "head" x limit -40.00 40.00 0.00
	$jointconstrain "head" y limit -40.00 40.00 0.00
	$jointconstrain "head" z limit -45.00 45.00 0.00

	$jointconstrain "rope01_seg01" x limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg01" y limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg01" z limit -60.00 60.00 0.00

	$jointconstrain "rope01_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "rope01_seg05" x limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg05" y limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg05" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm02_joint01" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm02_joint01" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm02_joint01" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm02_joint03" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm02_joint03" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm02_joint03" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm01_joint01" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm01_joint01" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm01_joint01" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm01_joint03" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm01_joint03" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm01_joint03" z limit -60.00 60.00 0.00

	$jointconstrain "l_hand" x limit -90.00 90.00 0.00
	$jointconstrain "l_hand" y limit -90.00 90.00 0.00
	$jointconstrain "l_hand" z limit -60.00 60.00 0.00

	$jointconstrain "rope03_seg01" x limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg01" y limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg01" z limit -60.00 60.00 0.00

	$jointconstrain "rope03_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "r_hand" x limit -90.00 90.00 0.00
	$jointconstrain "r_hand" y limit -90.00 90.00 0.00
	$jointconstrain "r_hand" z limit -60.00 60.00 0.00

	$jointconstrain "r_leg01" x limit -70.00 70.00 0.00
	$jointconstrain "r_leg01" y limit -90.00 90.00 0.00
	$jointconstrain "r_leg01" z limit -30.00 30.00 0.00

	$jointconstrain "r_leg02" x limit 0.00 0.00 0.00
	$jointconstrain "r_leg02" y limit -50.00 50.00 0.00
	$jointconstrain "r_leg02" z limit 0.00 0.00 0.00

	$jointconstrain "r_arm02_joint03" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm02_joint03" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm02_joint03" z limit -60.00 60.00 0.00

	$jointconstrain "r_leg03" x limit 0.00 0.00 0.00
	$jointconstrain "r_leg03" y limit -70.00 70.00 0.00
	$jointconstrain "r_leg03" z limit 0.00 0.00 0.00

	$jointconstrain "l_leg01" x limit -70.00 70.00 0.00
	$jointconstrain "l_leg01" y limit -90.00 90.00 0.00
	$jointconstrain "l_leg01" z limit -30.00 30.00 0.00

	$jointconstrain "l_leg02" x limit 0.00 0.00 0.00
	$jointconstrain "l_leg02" y limit -50.00 50.00 0.00
	$jointconstrain "l_leg02" z limit 0.00 0.00 0.00

	$jointconstrain "l_leg03" x limit 0.00 0.00 0.00
	$jointconstrain "l_leg03" y limit -70.00 70.00 0.00
	$jointconstrain "l_leg03" z limit 0.00 0.00 0.00

	$jointconstrain "l_foot" x limit -40.00 40.00 0.00
	$jointconstrain "l_foot" y limit -50.00 50.00 0.00
	$jointconstrain "l_foot" z limit -30.00 30.00 0.00

	$jointconstrain "r_foot" x limit -40.00 40.00 0.00
	$jointconstrain "r_foot" y limit -50.00 50.00 0.00
	$jointconstrain "r_foot" z limit -30.00 30.00 0.00
}

$collisiontext
{
 animatedfriction 
 {
  "animfrictionmin" "1.000000"
  "animfrictionmax" "400.000000"
  "animfrictiontimein" "0.500000"
  "animfrictiontimeout" "0.300000"
  "animfrictiontimehold" "0.000000"
 }
 editparams 
 {
  "rootname" "heavy_root"
  "totalmass" "90.000000"
 }
}