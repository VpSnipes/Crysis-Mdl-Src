$origin 0 0 0 180
$modelname "crysis2\aStalker.mdl"
$model "Body" "aStalker_Suit.smd"
$model "Body" "aStalker_Weapons.smd"
$model "Body" "aStalker_Head_Tentacles.smd"
$model "Body" "aStalker_Jelly.smd"
$model "Body" "aStalker_Jelly_sss.smd"
$model "Body" "aStalker_Jelly_refract.smd"
$model "Body" "aStalker_Jelly_metal.smd"
$poseparameter "move_yaw" -180 180 wrap
$contents "solid"
$cdmaterials "models\crysis2\astalker\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$bodygroup "Helmet"
{
	studio "aStalker_Helmet.smd"
	studio "aStalker_Guardian_Helmet.smd"
	studio "aStalker_Elite_Helmet.smd"
	blank
}

$texturegroup "skinfamilies"
{
    { "weapon" "plate" "jelly" "jelly_guts" "jelly_sss" }
    { "elite_weapon" "elite_plate" "elite_jelly" "elite_jelly_guts" "elite_jelly_sss" }
    { "elite_weapon" "elite_plate" "guardian_jelly" "elite_jelly_guts" "elite_jelly_sss" }
}

$weightlist worldblend_params {
	"Stalker_Root"		0
	"L_Clavicle"		1
	"R_Clavicle"		1
}

$weightlist all {
	"Stalker_Root"		1
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

$Animation "aimidle_lo_com_ref" 		"anims/aimparams/aim_pose_lo_idle_com.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_lo_com" 			"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 2 2	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_com" 		"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 7 7	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 5 5	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 9 9	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_left_com" 		"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 0 0	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_right_com" 		"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 4 4	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_com" 			"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 12 12	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_left_com" 	"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 10 10	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_idle_com.smd" 	frame 14 14	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimidle_lo_ref" 			"anims/aimparams/aim_pose_lo_idle_alr.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_lo" 				"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 2 2	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down" 			"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 7 7	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_left" 		"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 5 5	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_right" 		"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 9 9	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_left" 			"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 0 0	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_right" 			"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 4 4	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up" 				"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 12 12	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_left" 		"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 10 10	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_right" 		"anims/aimparams/aim_pose_lo_idle_alr.smd" 	frame 14 14	subtract	"aimidle_lo_ref" 0	weightlist aim_parameters

$Animation "aimrun_lo_com_ref" 			"anims/aimparams/aim_pose_lo_run_com.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimrun_lo_com" 				"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 2 2 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_com" 		"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 7 7 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 5 5 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 9 9 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_left_com" 		"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 0 0 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_right_com" 		"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 4 4 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_com" 			"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 12 12 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_left_com" 		"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 10 10 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_run_com.smd" 	frame 14 14 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_lo_ref" 			"anims/aimparams/aim_pose_lo_walk_alr.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_lo" 				"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 2 2	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down" 			"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 7 7	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_left" 		"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 5 5	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_right" 		"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 9 9	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_left" 			"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 0 0	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_right" 			"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 4 4	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up" 				"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 12 12	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_left" 		"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 10 10	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_right" 		"anims/aimparams/aim_pose_lo_walk_alr.smd" 	frame 14 14	subtract	"aimwalk_lo_ref" 0	weightlist aim_parameters

$Animation "aimidle_hi_com_ref" 		"anims/aimparams/aim_pose_hi_idle_com.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_hi_com" 			"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 2 2	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_com" 		"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 7 7	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 5 5	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 9 9	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_left_com" 		"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 0 0	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_right_com" 		"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 4 4	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_com" 			"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 12 12	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_left_com" 	"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 10 10	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_idle_com.smd" 	frame 14 14	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimidle_hi_ref" 			"anims/aimparams/aim_pose_hi_idle_alr.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_hi" 				"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 2 2	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down" 			"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 7 7	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_left" 		"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 5 5	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_right" 		"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 9 9	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_left" 			"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 0 0	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_right" 			"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 4 4	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up" 				"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 12 12	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_left" 		"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 10 10	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_right" 		"anims/aimparams/aim_pose_hi_idle_alr.smd" 	frame 14 14	subtract	"aimidle_hi_ref" 0	weightlist aim_parameters

$Animation "aimrun_hi_com_ref" 			"anims/aimparams/aim_pose_hi_run_com.smd"	frame 2 2 weightlist aim_parameters
$Animation "aimrun_hi_com" 				"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 2 2 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_com" 		"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 7 7 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 5 5 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 9 9 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_left_com" 		"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 0 0 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_right_com" 		"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 4 4 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_com" 			"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 12 12 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_left_com" 		"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 10 10 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_run_com.smd" 	frame 14 14 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_hi_ref" 			"anims/aimparams/aim_pose_hi_walk_alr.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_hi" 				"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 2 2	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down" 			"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 7 7	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_left" 		"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 5 5	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_right" 		"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 9 9	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_left" 			"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 0 0	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_right" 			"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 4 4	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up" 				"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 12 12	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_left" 		"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 10 10	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_right" 		"anims/aimparams/aim_pose_hi_walk_alr.smd" 	frame 14 14	subtract "aimwalk_hi_ref" 0	weightlist aim_parameters

$sequence "aimidle_lo_com_params" {
    "aimidle_lo_up_right_com" 		"aimidle_lo_up_com" 	"aimidle_lo_up_left_com"
    "aimidle_lo_right_com" 			"aimidle_lo_com" 		"aimidle_lo_left_com"
    "aimidle_lo_down_right_com" 	"aimidle_lo_down_com" 	"aimidle_lo_down_left_com"
	blendcenter aimidle_lo_com
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimidle_lo_params" {
    "aimidle_lo_up_right" 		"aimidle_lo_up" 	"aimidle_lo_up_left"
    "aimidle_lo_right" 			"aimidle_lo" 		"aimidle_lo_left"
    "aimidle_lo_down_right" 	"aimidle_lo_down" 	"aimidle_lo_down_left"
	blendcenter aimidle_lo
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimrun_lo_com_params" {
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

$sequence "aimidle_hi_com_params" {
    "aimidle_hi_up_right_com" 		"aimidle_hi_up_com" 	"aimidle_hi_up_left_com"
    "aimidle_hi_right_com" 			"aimidle_hi_com" 		"aimidle_hi_left_com"
    "aimidle_hi_down_right_com" 	"aimidle_hi_down_com" 	"aimidle_hi_down_left_com"
	blendcenter aimidle_hi_com
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimidle_hi_params" {
    "aimidle_hi_up_right" 		"aimidle_hi_up" 	"aimidle_hi_up_left"
    "aimidle_hi_right" 			"aimidle_hi" 		"aimidle_hi_left"
    "aimidle_hi_down_right" 	"aimidle_hi_down" 	"aimidle_hi_down_left"
	blendcenter aimidle_hi
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimrun_hi_com_params" {
    "aimrun_hi_up_right_com" 	"aimrun_hi_up_com" 		"aimrun_hi_up_left_com"
    "aimrun_hi_right_com" 		"aimrun_hi_com" 		"aimrun_hi_left_com"
    "aimrun_hi_down_right_com" 	"aimrun_hi_down_com" 	"aimrun_hi_down_left_com"
	blendcenter aimrun_hi_com
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
$Sequence "stand_idle_com_taunt" { 
	"anims/behavior/stand_idle_com_taunt.smd"
	activity "act_stand_idle_com_taunt" 1
	addlayer aimidle_lo_com_params
}

$Sequence "stand_idle_com_taunt_leader" { 
	"anims/behavior/stand_idle_com_taunt_leader.smd"
	activity "act_stand_idle_com_taunt_leader" 1
	addlayer aimidle_lo_com_params
}

$Sequence "stand_idle_sightedsurprise" { 
	"anims/behavior/stand_idle_sightedsurprise.smd"
	activity "act_stand_idle_sightedsurprise" 1
	addlayer aimidle_lo_com_params
}

$Sequence "stand_ping_com" { 
	"anims/behavior/stand_ping_com.smd"
	activity "act_stand_ping_com" 1
	addlayer aimidle_lo_com_params
}

// --- Idle -------------------------------------------------------------------------------
$Sequence "stand_idle_alr" { 
	"anims/behavior/idle/stand_idle_alr.smd"
	activity "act_idle_relaxed" 1
	addlayer aimidle_lo_params
	loop
}

$Sequence "stand_idle_alr_sightedsuspect" { 
	"anims/behavior/idle/stand_idle_alr_sightedsuspect.smd"
	activity "act_alert" 1
	addlayer aimidle_lo_params
}

$Sequence "stand_idle_alr_tocom" { 
	"anims/behavior/idle/stand_idle_alr_tocom.smd"
	activity "act_stand_idle_alr_tocom" 1
	addlayer aimidle_lo_params
}

$Sequence "stand_idle_com" { 
	"anims/behavior/idle/stand_idle_com.smd"
	activity "act_idle" 1
	addlayer aimidle_lo_params
	loop
}

$Sequence "stand_idle_com_aim" { 
	"anims/behavior/idle/stand_idle_com_aim.smd"
	activity "act_stand_idle_com_aim" 1
	addlayer aimidle_hi_com_params
	loop
	weightlist worldblend_params	
	worldspaceblend "aimidle_hi_com_ref"
	weightlist all
}

$Sequence "stand_idle_com_toalr" { 
	"anims/behavior/idle/stand_idle_com_toalr.smd"
	activity "act_stand_idle_com_toalr" 1
	addlayer aimidle_lo_com_params
}

// ---  Death   ----------------------------------------------------------------------------
$Sequence "stand_death_headshot" { 
	"anims/deaths/stand_death_headshot.smd"
	activity "act_stand_death_headshot" 1
}
$Sequence "stand_death_microwave" { 
	"anims/deaths/stand_death_microwave.smd"
	activity "act_stand_death_microwave" 1
}
$Sequence "stand_deathheavy_front_torso" { 
	"anims/deaths/stand_deathheavy_front_torso.smd"
	activity "act_stand_deathheavy_front_torso" 1
}
$Sequence "stand_deathmech_front_torso_01" { 
	"anims/deaths/stand_deathmech_front_torso_01.smd"
	activity "act_stand_deathmech_front_torso_01" 1
}
$Sequence "stand_deathmech_front_torso_02" { 
	"anims/deaths/stand_deathmech_front_torso_02.smd"
	activity "act_stand_deathmech_front_torso_02" 1
}
$Sequence "stand_deathmech_front_torso_03" { 
	"anims/deaths/stand_deathmech_front_torso_03.smd"
	activity "act_stand_deathmech_front_torso_03" 1
}

// ---  Hit     ----------------------------------------------------------------------------
$Sequence "stand_hit_explosionreact_com" { 
	"anims/hits/stand_hit_explosionreact_com.smd"
	activity "act_stand_hit_explosionreact_com" 1
	addlayer aimidle_hi_params
}
$Sequence "stand_hit_front_legs" { 
	"anims/hits/stand_hit_front_legs.smd"
	activity "act_stand_hit_front_legs" 1
	addlayer aimidle_hi_params
}
$Sequence "stand_hit_front_r_leg" { 
	"anims/hits/stand_hit_front_r_leg.smd"
	activity "act_stand_hit_front_r_leg" 1
	addlayer aimidle_hi_params
}
$Sequence "stand_hit_front_r_shoulder" { 
	"anims/hits/stand_hit_front_r_shoulder.smd"
	activity "act_stand_hit_front_r_shoulder" 1
	addlayer aimidle_hi_params
}
$Sequence "stand_hit_front_torso" { 
	"anims/hits/stand_hit_front_torso.smd"
	activity "act_stand_hit_front_torso" 1
	addlayer aimidle_hi_params
}
$Sequence "stand_stun_com" { 
	"anims/hits/stand_stun_com.smd"
	activity "act_stand_stun_com" 1
}

// ---  Run     ----------------------------------------------------------------------------
$Animation "Run_com_Front" 			"anims/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			loop LX LY	 rotateto 	0
$Animation "Run_com_Back" 			"anims/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			loop LX LY	 rotateto  -180
$Animation "Run_com_Right" 			"anims/locomotion/run/stand/stand_runstrafefwd_com_rgt_fast.smd" 	loop LX LY	 rotateto  -90
$Animation "Run_com_Left" 			"anims/locomotion/run/stand/stand_runstrafefwd_com_lft_fast.smd" 	loop LX LY	 rotateto 	90

$sequence "stand_run_com" {
	"Run_com_Back"
	"Run_com_Right"
	"Run_com_Front"
	"Run_com_Left"
	"Run_com_Back"
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer aimrun_lo_com_params
}

$Animation "Runaim_com_Front" 			"anims/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			loop LX LY	 rotateto 	0		weightlist worldblend_params	worldspaceblend "aimrun_hi_com_ref"	weightlist all
$Animation "Runaim_com_Back" 			"anims/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			loop LX LY	 rotateto  -180		weightlist worldblend_params	worldspaceblend "aimrun_hi_com_ref"	weightlist all
$Animation "Runaim_com_Right" 			"anims/locomotion/run/stand/stand_runstrafefwd_com_rgt_fast.smd" 	loop LX LY	 rotateto  -90		weightlist worldblend_params	worldspaceblend "aimrun_hi_com_ref"	weightlist all
$Animation "Runaim_com_Left" 			"anims/locomotion/run/stand/stand_runstrafefwd_com_lft_fast.smd" 	loop LX LY	 rotateto 	90		weightlist worldblend_params	worldspaceblend "aimrun_hi_com_ref"	weightlist all

$sequence "stand_runaim_com" {
	"Runaim_com_Back"
	"Runaim_com_Right"
	"Runaim_com_Front"
	"Runaim_com_Left"
	"Runaim_com_Back"
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_RUN_AIM" 1
	addlayer aimrun_hi_com_params
}

// ---  Step    ----------------------------------------------------------------------------
$Sequence "stand_step_com_180_fast_lfoot" { 
	"anims/locomotion/step/stand/stand_step_com_180_fast_lfoot.smd"
	activity "act_stand_step_com_180_fast_lfoot" 1
	addlayer aimidle_lo_com_params
	ZR
}
$Sequence "stand_step_com_180_fast_rfoot" { 
	"anims/locomotion/step/stand/stand_step_com_180_fast_rfoot.smd"
	activity "act_stand_step_com_180_fast_rfoot" 1
	addlayer aimidle_lo_com_params
	ZR
}
$Sequence "stand_step_rlx_180_fast_lfoot" { 
	"anims/locomotion/step/stand/stand_step_rlx_180_fast_lfoot.smd"
	activity "act_stand_step_rlx_180_fast_lfoot" 1
	addlayer aimidle_lo_params
	ZR
}
$Sequence "stand_step_rlx_180_fast_rfoot" { 
	"anims/locomotion/step/stand/stand_step_rlx_180_fast_rfoot.smd"
	activity "act_stand_step_rlx_180_fast_rfoot" 1
	addlayer aimidle_lo_params
	ZR
}
$Sequence "stand_steprotate_alr_lft" { 
	"anims/locomotion/step/stand/stand_steprotate_alr_lft.smd"
	activity "act_stand_steprotate_alr_lft" 1
	addlayer aimidle_lo_params
	ZR
}
$Sequence "stand_steprotate_alr_rgt" { 
	"anims/locomotion/step/stand/stand_steprotate_alr_rgt.smd"
	activity "act_stand_steprotate_alr_rgt" 1
	addlayer aimidle_lo_params
	ZR
}
$Sequence "stand_steprotate_com_lft" { 
	"anims/locomotion/step/stand/stand_steprotate_com_lft.smd"
	activity "act_stand_steprotate_com_lft" 1
	addlayer aimidle_lo_com_params
	ZR
}
$Sequence "stand_steprotate_com_rgt" { 
	"anims/locomotion/step/stand/stand_steprotate_com_rgt.smd"
	activity "act_stand_steprotate_com_rgt" 1
	addlayer aimidle_lo_com_params
	ZR
}

// ---  Walk    ----------------------------------------------------------------------------
$Animation "Walk_Front" 		"anims/locomotion/walk/stand/stand_walk_idle_fwd_fast.smd" 				loop LX LY	 rotateto 	0
$Animation "Walk_Back" 			"anims/locomotion/walk/stand/stand_walk_idle_bwd_fast.smd" 				loop LX LY	 rotateto  -180
$Animation "Walk_Right" 		"anims/locomotion/walk/stand/stand_walkstrafefwd_idle_rgt_fast.smd" 	loop LX LY	 rotateto  -90
$Animation "Walk_Left" 			"anims/locomotion/walk/stand/stand_walkstrafefwd_idle_lft_fast.smd" 	loop LX LY	 rotateto 	90

$sequence "stand_walk" {
	"Walk_Back"
	"Walk_Right"
	"Walk_Front"
	"Walk_Left"
	"Walk_Back"
    blendwidth 5 blend move_yaw -180 180
	activity "ACT_WALK" 1
}

// ---  Weapon  ----------------------------------------------------------------------------
$Sequence "stand_meleejump_com_end_01" { 
	"anims/weapons/stand_meleejump_com_end_01.smd"
	activity "act_stand_meleejump_com_end_01" 1
}
$Sequence "stand_meleejump_com_end_02" { 
	"anims/weapons/stand_meleejump_com_end_02.smd"
	activity "act_stand_meleejump_com_end_02" 1
}
$Sequence "stand_meleejump_com_mid_01" { 
	"anims/weapons/stand_meleejump_com_mid_01.smd"
	activity "act_stand_meleejump_com_mid_01" 1
	loop
}
$Sequence "stand_meleejump_com_mid_02" { 
	"anims/weapons/stand_meleejump_com_mid_02.smd"
	activity "act_stand_meleejump_com_mid_02" 1
	loop
}
$Sequence "stand_meleejump_com_start_01" { 
	"anims/weapons/stand_meleejump_com_start_01.smd"
	activity "act_stand_meleejump_com_start_01" 1
}
$Sequence "stand_meleejump_com_start_02" { 
	"anims/weapons/stand_meleejump_com_start_02.smd"
	activity "act_stand_meleejump_com_start_02" 1
}
$Sequence "stand_meleeshort_com_gun" { 
	"anims/weapons/stand_meleeshort_com_gun.smd"
	activity "act_stand_meleeshort_com_gun" 1
}
$Sequence "stand_meleeub_com_gun" { 
	"anims/weapons/stand_meleeub_com_gun.smd"
	subtract "stand_meleeub_com_gun" 0
	delta
}
$Sequence "stand_meleeub_com_start_run" { 
	"anims/weapons/stand_meleeub_com_start_run.smd"
	subtract "stand_meleeub_com_start_run" 0
	delta
}