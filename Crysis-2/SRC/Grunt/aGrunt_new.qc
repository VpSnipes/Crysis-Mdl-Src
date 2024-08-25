$origin 0 0 0 180
$modelname "crysis2\Grunt.mdl"
$model "Grunt"	"Grunt-Ref"
$model "Grunt"	"Grunt-Jelly"
$model "Grunt"	"Grunt-Guts"
$model "Grunt"	"Grunt-SSS"
$model "Grunt"	"Grunt-Refract"
$poseparameter "move_yaw" -180 180 wrap

$bodygroup "Helmet"
{
	studio "Grunt-Helmet.smd"
	studio "Grunt-Helmet-Leader.smd"
	blank
}
$bodygroup "RightChest"
{
	studio "Grunt-Armor-Right.smd"
	blank
}
$bodygroup "LeftChest"
{
	studio "Grunt-Armor-Left.smd"
	blank
}

$surfaceprop "metal"
$contents "solid"
$cdmaterials "models\crysis2\agrunt\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$texturegroup "skinfamilies"
{
    { "weapon" 			"plate_low" 		"plate_up" 			"metal" 		"metal_share" 			"metal_share_noshadow" 			"jelly" 		"jelly_guts" 		"jelly_sss" }
    { "elite_weapon" 	"elite_plate_low" 	"elite_plate_up" 	"elite_metal" 	"elite_metal_share" 	"elite_metal_share_noshadow" 	"elite_jelly" 	"elite_jelly_guts" 	"elite_jelly_sss" }
}

$weightlist worldblend_params {
	"Spine01"              0
	"Spine02"              0.2
	"Spine03"              0.4
	"Spine04"              0.6
	"jellyBone"            0
	"jelly_back_proxy"     0
	"L_Clavicle"           0.8
	"L_Arm01"			   1
	"L_Hand"			   0
	"Neck_01"              0
	"Head"                 0
	"R_Clavicle"           0.8
	"R_Arm01"       	   1
}

$weightlist aim_parameters {
	"Spine01"              1
	"jellyBone"            0
	"jelly_back_proxy"     0
}

$weightlist all {
	"Grunt_Root"           1
}
/*
$ikchain l_foot "l_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 0 0 4
$ikchain r_foot "r_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 0 0 4
$cmdlist lockfeet {
	ikrule l_foot footstep height 20 floor 0
	ikrule r_foot footstep height 20 floor 0
	//ikrule lhand touch "LArm_IK_Target" usesource
}
*/
$Sequence "Ragdoll" { 
	"Grunt-Pose-Ref.smd"
	activity "ACT_DIERAGDOLL" 1
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

$Animation "aimrun_hi_com_ref" 			"anims/aimparams/aim_pose_hi_run.smd"	frame 2 2	weightlist aim_parameters
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

$sequence "aimidle_lo_params" {
    "aimidle_lo_up_right_com" 		"aimidle_lo_up_com" 	"aimidle_lo_up_left_com"
    "aimidle_lo_right_com" 			"aimidle_lo_com" 		"aimidle_lo_left_com"
    "aimidle_lo_down_right_com" 	"aimidle_lo_down_com" 	"aimidle_lo_down_left_com"
	blendcenter aimidle_lo_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimrun_lo_params" {
    "aimrun_lo_up_right_com" 	"aimrun_lo_up_com" 		"aimrun_lo_up_left_com"
    "aimrun_lo_right_com" 		"aimrun_lo_com" 		"aimrun_lo_left_com"
    "aimrun_lo_down_right_com" 	"aimrun_lo_down_com" 	"aimrun_lo_down_left_com"
	blendcenter aimrun_lo_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimwalk_lo_params" {
    "aimwalk_lo_up_right_alr" 	"aimwalk_lo_up_alr"		"aimwalk_lo_up_left_alr"
    "aimwalk_lo_right_alr" 		"aimwalk_lo_alr" 		"aimwalk_lo_left_alr"
    "aimwalk_lo_down_right_alr"	"aimwalk_lo_down_alr" 	"aimwalk_lo_down_left_alr"
	blendcenter aimwalk_lo_alr
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimidle_hi_params" {
    "aimidle_hi_up_right_com" 		"aimidle_hi_up_com" 	"aimidle_hi_up_left_com"
    "aimidle_hi_right_com" 			"aimidle_hi_com" 		"aimidle_hi_left_com"
    "aimidle_hi_down_right_com" 	"aimidle_hi_down_com" 	"aimidle_hi_down_left_com"
	blendcenter aimidle_hi_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimrun_hi_params" {
    "aimrun_hi_up_right_com" 	"aimrun_hi_up_com" 		"aimrun_hi_up_left_com"
    "aimrun_hi_right_com" 		"aimrun_hi_com" 		"aimrun_hi_left_com"
    "aimrun_hi_down_right_com" 	"aimrun_hi_down_com" 	"aimrun_hi_down_left_com"
	blendcenter aimrun_hi_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimwalk_hi_params" {
    "aimwalk_hi_up_right_alr"	"aimwalk_hi_up_alr"		"aimwalk_hi_up_left_alr"
    "aimwalk_hi_right_alr"		"aimwalk_hi_alr" 		"aimwalk_hi_left_alr"
    "aimwalk_hi_down_right_alr"	"aimwalk_hi_down_alr" 	"aimwalk_hi_down_left_alr"
	blendcenter aimwalk_hi_alr
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$Animation "aim-neutral" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 weightlist "worldblend_params"
$Animation "aim-up" 			"anims/aimparams/ADS_AimUp.smd"		frame 0 0 subtract "aim-neutral" 0 weightlist "worldblend_params"
$Animation "aim-down" 			"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 subtract "aim-neutral" 0 weightlist "worldblend_params"
$Sequence "aim_com" {
	"aim-down"
	"aim-up"
	blendwidth 2 blend "ads" 0 1
	delta
	//autoplay
	hidden
}

$Animation "aim-move-neutral" 		"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2 weightlist "worldblend_params"
$Animation "aim-move-up" 			"anims/aimparams/ADS_AimUp_M.smd"		frame 0 0 subtract "aim-move-neutral" 0 weightlist "worldblend_params"
$Animation "aim-move-down" 			"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2 subtract "aim-move-neutral" 0 weightlist "worldblend_params"
$Sequence "aim_move_com" {
	"aim-move-down"
	"aim-move-up"
	blendwidth 2 blend "ads" 0 1
	delta
	//autoplay
	hidden
}

$include "qci/beh.qci"
$include "qci/beh_additives.qci"
$include "qci/beh_idle.qci"
//$include "qci/beh_interacts.qci"
//$include "qci/cin_07_times_square.qci"
//$include "qci/cin_alien_vessel.qci"
$include "qci/det.qci"
$include "qci/hit.qci"
$include "qci/loc_run.qci"
$include "qci/loc_step.qci"
$include "qci/loc_walk.qci"
//$include "qci/smo_cover.qci"
//$include "qci/smo_jump.qci"
//$include "qci/syn_pva.qci"
$include "qci/wep.qci"

$collisionjoints "physmesh.smd"
{
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "Pelvis"

	$jointconstrain "spine04" x limit -50.00 50.00 0.00
	$jointconstrain "spine04" y limit -50.00 50.00 0.00
	$jointconstrain "spine04" z limit -50.00 50.00 0.00

	$jointconstrain "r_arm01" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm01" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm01" z limit -60.00 60.00 0.00

	$jointconstrain "r_arm02" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm02" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm02" z limit -60.00 60.00 0.00

	$jointconstrain "r_arm03" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm03" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm03" z limit -60.00 60.00 0.00

	$jointconstrain "r_arm04" x limit -90.00 90.00 0.00
	$jointconstrain "r_arm04" y limit -90.00 90.00 0.00
	$jointconstrain "r_arm04" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm01" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm01" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm01" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm02" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm02" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm02" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm03" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm03" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm03" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm04" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm04" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm04" z limit -60.00 60.00 0.00

	$jointconstrain "l_arm05" x limit -90.00 90.00 0.00
	$jointconstrain "l_arm05" y limit -90.00 90.00 0.00
	$jointconstrain "l_arm05" z limit -60.00 60.00 0.00

	$jointconstrain "l_hand" x limit -90.00 90.00 0.00
	$jointconstrain "l_hand" y limit -90.00 90.00 0.00
	$jointconstrain "l_hand" z limit -60.00 60.00 0.00

	$jointconstrain "null_rope03_connect" x limit -80.00 80.00 0.00
	$jointconstrain "null_rope03_connect" y limit -80.00 80.00 0.00
	$jointconstrain "null_rope03_connect" z limit -60.00 60.00 0.00

	$jointconstrain "rope03_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope03_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "null_rope02_connect" x limit -80.00 80.00 0.00
	$jointconstrain "null_rope02_connect" y limit -80.00 80.00 0.00
	$jointconstrain "null_rope02_connect" z limit -60.00 60.00 0.00

	$jointconstrain "rope02_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "rope02_seg05" x limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg05" y limit -80.00 80.00 0.00
	$jointconstrain "rope02_seg05" z limit -60.00 60.00 0.00

	$jointconstrain "null_rope01_connect" x limit -80.00 80.00 0.00
	$jointconstrain "null_rope01_connect" y limit -80.00 80.00 0.00
	$jointconstrain "null_rope01_connect" z limit -60.00 60.00 0.00

	$jointconstrain "rope01_seg03" x limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg03" y limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg03" z limit -60.00 60.00 0.00

	$jointconstrain "rope01_seg05" x limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg05" y limit -80.00 80.00 0.00
	$jointconstrain "rope01_seg05" z limit -60.00 60.00 0.00

	$jointconstrain "r_hand" x limit -90.00 90.00 0.00
	$jointconstrain "r_hand" y limit -90.00 90.00 0.00
	$jointconstrain "r_hand" z limit -60.00 60.00 0.00

	$jointconstrain "r_leg01" x limit -70.00 70.00 0.00
	$jointconstrain "r_leg01" y limit -90.00 90.00 0.00
	$jointconstrain "r_leg01" z limit -30.00 30.00 0.00

	$jointconstrain "r_leg02" x limit 0.00 0.00 0.00
	$jointconstrain "r_leg02" y limit -50.00 50.00 0.00
	$jointconstrain "r_leg02" z limit 0.00 0.00 0.00

	$jointconstrain "r_leg03" x limit 0.00 0.00 0.00
	$jointconstrain "r_leg03" y limit -70.00 70.00 0.00
	$jointconstrain "r_leg03" z limit 0.00 0.00 0.00

	$jointconstrain "r_foot" x limit -40.00 40.00 0.00
	$jointconstrain "r_foot" y limit -50.00 50.00 0.00
	$jointconstrain "r_foot" z limit -30.00 30.00 0.00

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

	$jointconstrain "head" x limit -40.00 40.00 0.00
	$jointconstrain "head" y limit -40.00 40.00 0.00
	$jointconstrain "head" z limit -45.00 45.00 0.00
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
  "rootname" "Pelvis"
  "totalmass" "90.000000"
 }
}