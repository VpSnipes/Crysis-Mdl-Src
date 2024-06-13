$modelname "crysis3\Grunt.mdl"
$attachment "HandPos" "LArm_IK_Target" 0 0 0 rotate 0 0 0
$origin 0 0 0 180

$bodygroup "Helmet"
{
	studio "msh_helmet.smd"
	studio "msh_armor_headAssault.smd"
	studio "msh_sniper_head.smd"
	blank
}
$bodygroup "HeadTentacles"
{
	studio "msh_head_tentacles.smd"
	studio "msh_head_tentaclesAssault.smd"
	blank
}
$bodygroup "Armor"
{
	studio "msh_plates.smd"
	studio "msh_armor_chestAssault.smd"
	blank
}
$bodygroup "SuitType"
{
	studio "msh_suit.smd"
	studio "msh_suitAssault.smd"
	studio "msh_suitSniper.smd"
}
$bodygroup "Jelly"
{
	studio "msh_jelly_alive.smd"
	studio "msh_jelly_destroyed_chest.smd"
	studio "msh_jelly_destroyed_head.smd"
}

$surfaceprop "metal"
$contents "solid"
$illumposition -0.77 5.848 47.836
$cdmaterials "models\crysis3\agrunt\"
$cdmaterials "models\crysis3\shared\"
$mostlyopaque

$weightlist aim_parameters {
	"Grunt_Root"           0
	"Pelvis"               0
	"L_Hip"                0
	"L_Leg01"              0
	"L_Leg02"              0
	"L_Leg03"              0
	"L_Foot"               0
	"L_Heel"               0
	"L_Toe0Nub"            0
	"Left_Toe1_Joint00"    0
	"Left_Toe1_Joint01"    0
	"Left_Toe2_Joint00"    0
	"Left_Toe2_Joint01"    0
	"Left_Toe3_Joint00"    0
	"Left_Toe3_Joint01"    0
	"Left_Toe3_Joint02"    0
	"Left_Toe4_Joint00"    0
	"Left_Toe4_Joint01"    0
	"Left_Toe4_Joint02"    0
	"R_Hip"                0
	"R_Leg01"              0
	"R_Leg02"              0
	"R_Leg03"              0
	"R_Foot"               0
	"R_Heel"               0
	"R_Toe0Nub"            0
	"Right_Toe1_Joint00"   0
	"Right_Toe1_Joint01"   0
	"Right_Toe2_Joint00"   0
	"Right_Toe2_Joint01"   0
	"Right_Toe3_Joint00"   0
	"Right_Toe3_Joint01"   0
	"Right_Toe3_Joint02"   0
	"Right_Toe4_Joint00"   0
	"Right_Toe4_Joint01"   0
	"Right_Toe4_Joint02"   0
	"Spine01"              1
	"Spine02"              1
	"Spine03"              1
	"Spine04"              1
	"jellyBone"            1
	"jelly_back_proxy"     1
	"null_Rope01_connect"  0
	"Rope01_Seg01"         0
	"Rope01_Seg02"         0
	"Rope01_Seg03"         0
	"Rope01_Seg04"         0
	"Rope01_Seg05"         0
	"Rope01_Seg06"         0
	"Rope01_Seg07"         0
	"null_Rope02_connect"  0
	"Rope02_Seg01"         0
	"Rope02_Seg02"         0
	"Rope02_Seg03"         0
	"Rope02_Seg04"         0
	"Rope02_Seg05"         0
	"Rope02_Seg06"         0
	"Rope02_Seg07"         0
	"null_Rope03_connect"  0
	"Rope03_Seg01"         0
	"Rope03_Seg02"         0
	"Rope03_Seg03"         0
	"Rope03_Seg04"         0
	"Rope03_Seg05"         0
	"L_Clavicle"           1
	"L_Arm01"              1
	"L_Arm02"              1
	"L_Arm03"              1
	"L_Arm04"              1
	"L_Arm05"              1
	"L_Hand"               1
	"L_Hand_Top"           1
	"L_Finger1_01"         1
	"L_Finger1_02"         1
	"L_Finger1_03"         1
	"L_Finger2_01"         1
	"L_Finger2_02"         1
	"L_Finger2_03"         1
	"L_Finger3_01"         1
	"L_Finger3_02"         1
	"L_Finger3_03"         1
	"L_ShoulderPad"        1
	"Neck_01"              1
	"Head"                 1
	"BN_LookIK"            1
	"R_Clavicle"           1
	"R_Arm01"              1
	"R_Arm02"              1
	"R_Arm03"              1
	"R_Arm04"              1
	"R_Hand"               1
	"LArm_IK_Blend"        1
	"LArm_IK_Target"       1
	"weapon_bone"          1
	"R_ShoulderPad"        1
	"Spine04_Nub"          1
}
$ikchain l_foot "l_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0
$ikchain r_foot "r_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0
$cmdlist lockfeet {
	ikrule l_foot autolock
	ikrule r_foot autolock
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
$Animation "aimrun_lo_com" 				"anims/aimparams/aim_pose_lo_run.smd" 	frame 2 2	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 7 7	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 5 5	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 9 9	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 0 0	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_right_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 4 4	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_com" 			"anims/aimparams/aim_pose_lo_run.smd" 	frame 12 12 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 10 10 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 14 14 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_lo_alr_ref" 		"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_lo_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 2 2	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 7 7	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 5 5	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 9 9	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_left_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 0 0	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_right_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 4 4	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 12 12	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 10 10	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 14 14	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters

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

$Animation "aimrun_hi_com_ref" 			"anims/aimparams/aim_pose_hi_run.smd"	frame 2 2 weightlist aim_parameters
$Animation "aimrun_hi_com" 				"anims/aimparams/aim_pose_hi_run.smd" 	frame 2 2 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 7 7 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 5 5 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 9 9 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_left_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 0 0 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_right_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 4 4 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_com" 			"anims/aimparams/aim_pose_hi_run.smd" 	frame 12 12 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_left_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 10 10 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 14 14 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_hi_alr_ref" 		"anims/aimparams/aim_pose_hi_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_hi_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 2 2	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 7 7	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 5 5	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 9 9	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_left_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 0 0	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_right_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 4 4	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 12 12	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 10 10	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 14 14	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters

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

$sequence "aimrun_hi_com_params" {
    "aimrun_hi_up_right_com" 	"aimrun_hi_up_com" 		"aimrun_hi_up_left_com"
    "aimrun_hi_right_com" 		"aimrun_hi_com" 		"aimrun_hi_left_com"
    "aimrun_hi_down_right_com" 	"aimrun_hi_down_com" 	"aimrun_hi_down_left_com"
	blendcenter aimrun_hi_com
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

$Animation "aim-neutral" 		"anims/aimparams/ADS_AimDown.smd"	frame 0 0
$Animation "aim-up" 			"anims/aimparams/ADS_AimUp.smd"		frame 0 0 subtract "aim-neutral" 0
$Animation "aim-down" 			"anims/aimparams/ADS_AimDown.smd"	frame 0 0 subtract "aim-neutral" 0
$Sequence "aim-toggle" {
	"aim-down"
	"aim-up"
	blendwidth 2 blend "ads" 0 1
	delta
	autoplay
	hidden
}

$Sequence "stand_com_idle" { "anims/behavior/idle/stand_com_idle.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	addlayer "aimidle_hi_com_params"
	cmdlist lockfeet
}

$Sequence "stand_idle_rlx" { "anims/behavior/idle/stand_idle_rlx.smd"
	activity "ACT_IDLE_RELAXED" 1
	loop
	addlayer "aimidle_lo_com_params"
	cmdlist lockfeet
}

$Sequence "stand_idle_com_taunt" { "anims/behavior/stand_idle_com_taunt.smd"
	activity "ACT_TAUNT" 1
}

$Sequence "stand_idle_com_taunt_leader" { "anims/behavior/stand_idle_com_taunt_leader.smd"
	activity "ACT_TAUNT_LEADER" 1
}

$Sequence "stand_melee_com_gun" { "anims/weapons/stand_melee_com_gun.smd"
	activity "ACT_MELEE_ATTACK1" 1
	walkframe 5  LX LY
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 20 LX LY
	walkframe 25 LX LY
	walkframe 30 LX LY
	walkframe 35 LX LY
	walkframe 40 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
}

$Sequence "stand_meleeshort_com_gun" { "anims/weapons/stand_meleeshort_com_gun.smd"
	activity "ACT_MELEE_ATTACK2" 1
}

$Animation "Run_Front" 			"anims/CUSTOM/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 0	
$Animation "Run_Front-left" 	"anims/CUSTOM/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 45	
$Animation "Run_Front-right" 	"anims/CUSTOM/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto -45	
$Animation "Run_Back" 			"anims/CUSTOM/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -180
$Animation "Run_Back-left" 		"anims/CUSTOM/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto 135	
$Animation "Run_Back-right" 	"anims/CUSTOM/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -135
$Animation "Run_Right" 			"anims/CUSTOM/locomotion/run/stand/stand_runstrafefwd_com_rgt_fast.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "Run_Left" 			"anims/CUSTOM/locomotion/run/stand/stand_runstrafefwd_com_lft_fast.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Run_Combat" {
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
	addlayer "aimrun_hi_com_params"
}

$Animation "rRun_Front" 		"anims/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 0	
$Animation "rRun_Front-left" 	"anims/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 45	
$Animation "rRun_Front-right" 	"anims/locomotion/run/stand/stand_run_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto -45	
$Animation "rRun_Back" 			"anims/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -180
$Animation "rRun_Back-left" 	"anims/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto 135	
$Animation "rRun_Back-right" 	"anims/locomotion/run/stand/stand_run_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -135
$Animation "rRun_Right" 		"anims/locomotion/run/stand/stand_runstrafefwd_com_rgt_fast.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "rRun_Left" 			"anims/locomotion/run/stand/stand_runstrafefwd_com_lft_fast.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Run_Relaxed" {
	"rRun_Back"
    "rRun_Back-right"
	"rRun_Right"
	"rRun_Front-right"
	"rRun_Front"
	"rRun_Front-left"
	"rRun_Left"
	"rRun_Back-left"
	"rRun_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer "aimrun_hi_com_params"
}

$Animation "Walk_Front" 		"anims/locomotion/walk/stand/stand_walk_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 0	
$Animation "Walk_Front-left" 	"anims/locomotion/walk/stand/stand_walk_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto 45	
$Animation "Walk_Front-right" 	"anims/locomotion/walk/stand/stand_walk_com_fwd_fast.smd" 			fudgeloop LX LY		rotateto -45	
$Animation "Walk_Back" 			"anims/locomotion/walk/stand/stand_walk_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -180
$Animation "Walk_Back-left" 	"anims/locomotion/walk/stand/stand_walk_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto 135	
$Animation "Walk_Back-right" 	"anims/locomotion/walk/stand/stand_walk_com_bwd_fast.smd" 			fudgeloop LX LY		rotateto -135
$Animation "Walk_Right" 		"anims/locomotion/walk/stand/stand_walkstrafefwd_com_rgt_fast.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "Walk_Left" 			"anims/locomotion/walk/stand/stand_walkstrafefwd_com_lft_fast.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Walk_Combat" {
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

$Animation "rWalk_Front" 		"anims/locomotion/walk/stand/stand_walk_idle_fwd_fast.smd" 	fudgeloop LX LY		rotateto 0	
$Animation "rWalk_Front-left" 	"anims/locomotion/walk/stand/stand_walk_idle_fwd_fast.smd" 	fudgeloop LX LY		rotateto 45	
$Animation "rWalk_Front-right" 	"anims/locomotion/walk/stand/stand_walk_idle_fwd_fast.smd" 	fudgeloop LX LY		rotateto -45	
$Animation "rWalk_Back" 		"anims/locomotion/walk/stand/stand_walk_idle_bwd_fast.smd" 	fudgeloop LX LY		rotateto -180
$Animation "rWalk_Back-left" 	"anims/locomotion/walk/stand/stand_walk_idle_bwd_fast.smd" 	fudgeloop LX LY		rotateto 135	
$Animation "rWalk_Back-right" 	"anims/locomotion/walk/stand/stand_walk_idle_bwd_fast.smd" 	fudgeloop LX LY		rotateto -135
$Animation "rWalk_Right" 		"anims/locomotion/walk/stand/stand_walkstrafefwd_idle_rgt_fast.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "rWalk_Left" 		"anims/locomotion/walk/stand/stand_walkstrafefwd_idle_lft_fast.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Walk_Relaxed" {
	"rWalk_Back"
    "rWalk_Back-right"
	"rWalk_Right"
	"rWalk_Front-right"
	"rWalk_Front"
	"rWalk_Front-left"
	"rWalk_Left"
	"rWalk_Back-left"
	"rWalk_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_WALK_ANGRY" 1
	addlayer "aimwalk_hi_alr_params"
}