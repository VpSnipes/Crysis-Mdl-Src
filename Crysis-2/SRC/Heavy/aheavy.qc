$modelname "crysis2\aheavy.mdl"
$model "Body" "aheavy_reference.smd"
$model "Body" "aHeavy_Jelly_Guts.smd"
$model "Body" "aheavy_jelly.smd"
$model "Body" "aheavy_jelly_sss.smd"
$model "Body" "aheavy_jelly_refract.smd"

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
$ikchain l_foot "l_foot" Z 0 height 36
$ikchain r_foot "r_foot" Z 0 height 36
$cmdlist lockfeet {
	ikrule l_foot footstep
	ikrule r_foot footstep
}

$cdmaterials "models\crysis2\aheavy\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$Animation "aimidle_lo_com_ref" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 2 2	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_down_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 7 7	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 5 5	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 9 9	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_left_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 0 0	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_right_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 4 4	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_up_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 12 12	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_up_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 10 10	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 14 14	subtract	"aimidle_lo_com_ref" 0	rotate 180 weightlist aim_parameters

$Animation "aimrun_lo_com_ref" 			"anims/aimparams/aim_pose_lo_run.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_com" 				"anims/aimparams/aim_pose_lo_run.smd" 	frame 2 2 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_down_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 7 7 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 5 5 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 9 9 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 0 0 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_right_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 4 4 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_up_com" 			"anims/aimparams/aim_pose_lo_run.smd" 	frame 12 12 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_up_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 10 10 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimrun_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 14 14 subtract "aimrun_lo_com_ref" 0	rotate 180 weightlist aim_parameters

$Animation "aimwalk_lo_alr_ref" 		"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 2 2	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_down_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 7 7	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_down_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 5 5	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_down_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 9 9	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_left_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 0 0	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_right_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 4 4	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_up_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 12 12	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_up_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 10 10	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_lo_up_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 14 14	subtract	"aimwalk_lo_alr_ref" 0	rotate 180 weightlist aim_parameters

$Animation "aimidle_hi_com_ref" 		"anims/aimparams/aim_pose_hi_idle.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 2 2	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 7 7	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 5 5	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 9 9	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_left_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 0 0	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_right_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 4 4	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 12 12	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 10 10	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 14 14	subtract	"aimidle_hi_com_ref" 0	rotate 180 weightlist aim_parameters

$Animation "aimidle_hi_alr_ref" 		"anims/aimparams/aim_pose_hi_mortar.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_alr" 			"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 2 2	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_alr" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 7 7	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_left_alr" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 5 5	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_down_right_alr" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 9 9	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_left_alr" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 0 0	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_right_alr" 		"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 4 4	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_alr" 			"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 12 12	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_left_alr" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 10 10	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimidle_hi_up_right_alr" 	"anims/aimparams/aim_pose_hi_mortar.smd" 	frame 14 14	subtract	"aimidle_hi_alr_ref" 0	rotate 180 weightlist aim_parameters

$Animation "aimwalk_hi_alr_ref" 		"anims/aimparams/aim_pose_hi_walk.smd"	frame 2 2	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 2 2	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_down_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 7 7	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_down_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 5 5	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_down_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 9 9	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_left_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 0 0	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_right_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 4 4	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_up_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 12 12	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_up_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 10 10	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters
$Animation "aimwalk_hi_up_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 14 14	subtract "aimwalk_hi_alr_ref" 0	rotate 180 weightlist aim_parameters

$sequence "aimidle_lo_com_params" {
    "aimidle_lo_up_right_com" 		"aimidle_lo_up_com" 	"aimidle_lo_up_left_com"
    "aimidle_lo_right_com" 			"aimidle_lo_com" 		"aimidle_lo_left_com"
    "aimidle_lo_down_right_com" 	"aimidle_lo_down_com" 	"aimidle_lo_down_left_com"
	blendcenter aimidle_lo_com
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

$sequence "aimwalk_lo_alr_params" {
    "aimwalk_lo_up_right_alr" 	"aimwalk_lo_up_alr"		"aimwalk_lo_up_left_alr"
    "aimwalk_lo_right_alr" 		"aimwalk_lo_alr" 		"aimwalk_lo_left_alr"
    "aimwalk_lo_down_right_alr"	"aimwalk_lo_down_alr" 	"aimwalk_lo_down_left_alr"
	blendcenter aimwalk_lo_alr
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

$sequence "aimidle_hi_alr_params" {
    "aimidle_hi_up_right_alr" 		"aimidle_hi_up_alr" 	"aimidle_hi_up_left_alr"
    "aimidle_hi_right_alr" 			"aimidle_hi_alr" 		"aimidle_hi_left_alr"
    "aimidle_hi_down_right_alr" 	"aimidle_hi_down_alr" 	"aimidle_hi_down_left_alr"
	blendcenter aimidle_hi_alr
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$sequence "aimwalk_hi_alr_params" {
    "aimwalk_hi_up_right_alr"	"aimwalk_hi_up_alr"		"aimwalk_hi_up_left_alr"
    "aimwalk_hi_right_alr"		"aimwalk_hi_alr" 		"aimwalk_hi_left_alr"
    "aimwalk_hi_down_right_alr"	"aimwalk_hi_down_alr" 	"aimwalk_hi_down_left_alr"
	blendcenter aimwalk_hi_alr
    blendwidth 3 blend "aim_yaw" -90 90 blend "aim_pitch" -70 70
	delta
	hidden
}

$Sequence "a_idle_aim" { "anims/a_idle_aim.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	rotate 180
	cmdlist lockfeet
	addlayer "aimidle_hi_com_params"
}

$Sequence "a_idle" { "anims/a_idle.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	rotate 180
	cmdlist lockfeet
	addlayer "aimidle_lo_com_params"
}

$Animation "Run_Front" 			"anims\a_run_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 0	
$Animation "Run_Front-left" 	"anims\a_run_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 45	
$Animation "Run_Front-right" 	"anims\a_run_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto -45	
$Animation "Run_Back" 			"anims\a_run_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -180
$Animation "Run_Back-left" 		"anims\a_run_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto 135	
$Animation "Run_Back-right" 	"anims\a_run_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -135
$Animation "Run_Right" 			"anims\a_run_rgt.smd" 	fudgeloop LX LY		rotate 180 rotateto -90 
$Animation "Run_Left" 			"anims\a_run_lft.smd" 	fudgeloop LX LY		rotate 180 rotateto 90 	

$sequence "a_run" {
	"Run_Back"
    "Run_Back-right"
	"Run_Right"
	"Run_Front-right"
	"Run_Front"
	"Run_Front-left"
	"Run_Left"
	"Run_Back-left"
	"Run_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer "aimrun_lo_com_params"
}

$Animation "Walk_aim_Front" 		"anims\a_walk_aim_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 0	
$Animation "Walk_aim_Front-left" 	"anims\a_walk_aim_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 45	
$Animation "Walk_aim_Front-right" 	"anims\a_walk_aim_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto -45	
$Animation "Walk_aim_Back" 			"anims\a_walk_aim_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -180
$Animation "Walk_aim_Back-left" 	"anims\a_walk_aim_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto 135	
$Animation "Walk_aim_Back-right" 	"anims\a_walk_aim_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -135
$Animation "Walk_aim_Right" 		"anims\a_walk_aim_rgt.smd"	fudgeloop LX LY		rotate 180 rotateto -90 
$Animation "Walk_aim_Left" 			"anims\a_walk_aim_lft.smd"	fudgeloop LX LY		rotate 180 rotateto 90 	

$sequence "a_walk_aim_alr" {
	"Walk_aim_Back"
    "Walk_aim_Back-right"
	"Walk_aim_Right"
	"Walk_aim_Front-right"
	"Walk_aim_Front"
	"Walk_aim_Front-left"
	"Walk_aim_Left"
	"Walk_aim_Back-left"
	"Walk_aim_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_WALK" 1
	addlayer "aimwalk_hi_alr_params"
}

$Animation "Walk_Front" 		"anims\a_walk_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 0	
$Animation "Walk_Front-left" 	"anims\a_walk_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 45	
$Animation "Walk_Front-right" 	"anims\a_walk_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto -45	
$Animation "Walk_Back" 			"anims\a_walk_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -180
$Animation "Walk_Back-left" 	"anims\a_walk_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto 135	
$Animation "Walk_Back-right" 	"anims\a_walk_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -135
$Animation "Walk_Right" 		"anims\a_walk_rgt.smd" 	fudgeloop LX LY		rotate 180 rotateto -90 
$Animation "Walk_Left" 			"anims\a_walk_lft.smd" 	fudgeloop LX LY		rotate 180 rotateto 90 	

$sequence "a_walk_alr" {
	"Walk_Back"
    "Walk_Back-right"
	"Walk_Right"
	"Walk_Front-right"
	"Walk_Front"
	"Walk_Front-left"
	"Walk_Left"
	"Walk_Back-left"
	"Walk_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_WALK" 1
	addlayer "aimwalk_lo_alr_params"
}