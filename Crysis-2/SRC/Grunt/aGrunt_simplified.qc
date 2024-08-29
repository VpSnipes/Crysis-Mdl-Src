$origin 0 0 0 180
$modelname "crysis2\Grunt.mdl"
$model "Grunt"	"Grunt-Ref"
$model "Grunt"	"Grunt-Jelly-New"
$model "Grunt"	"Grunt-SSS"
$model "Grunt"	"Grunt-Refract"
$attachment "fx_point_ping" "Spine04" 0 0 0 rotate 0 0 0
$poseparameter "move_yaw" -180 180 wrap
$contents "solid"
$cdmaterials "models\crysis2\agrunt\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

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

$Sequence "Ragdoll" { 
	"Grunt-Pose-Ref.smd"
	activity "ACT_DIERAGDOLL" 1
}

$include "qci/srcmdl_simplified.qci"
//$include "qci/transitions.qci" //-- Weird issues with NPC, doesn't work outside controller DNI

$surfaceprop "metal"
$jointsurfaceprop "jellyBone"	 "default_silent" //-- Use this for no noise on impact or shot, this will give us things without decals as well as no noise
$hboxset "default"

$hbox 3 "Pelvis"	    -3.15   -6.00   -5.26     5.62    6.00    4.74
$hbox 6 "L_Leg01"	    -4.50   -3.00   -4.50     5.50    2.00   18.50
$hbox 6 "L_Leg02"	    -5.03   -2.29   -4.17     2.97    2.71   15.83
$hbox 6 "L_Leg03"	    -3.92   -2.40   -4.42     4.08    2.60   17.58
$hbox 6 "L_Foot"	    -3.11   -2.67   -3.05     3.17    2.75    3.19
$hbox 6 "Left_Toe1_Joint00"	    -0.73   -0.67   -0.66     1.64    0.73    5.87
$hbox 6 "Left_Toe1_Joint01"	    -1.59   -1.31   -3.88     0.55    1.25    5.51
$hbox 6 "Left_Toe2_Joint00"	    -0.84   -0.85   -0.65     1.53    0.57    5.87
$hbox 6 "Left_Toe2_Joint01"	    -1.62   -1.44   -4.02     0.54    1.15    5.39
$hbox 6 "Left_Toe3_Joint00"	    -1.61   -0.95   -0.88     0.83    0.82    3.99
$hbox 6 "Left_Toe3_Joint01"	    -1.05   -0.71   -0.93     0.57    0.60    2.78
$hbox 6 "Left_Toe3_Joint02"	    -1.03   -1.70   -2.18     0.59    1.22    5.67
$hbox 6 "Left_Toe4_Joint00"	    -1.50   -0.85   -0.86     0.93    0.91    3.96
$hbox 6 "Left_Toe4_Joint01"	    -0.95   -0.60   -0.95     0.66    0.71    2.72
$hbox 6 "Left_Toe4_Joint02"	    -1.01   -1.45   -2.28     0.62    1.48    5.57
$hbox 7 "R_Leg01"	    -4.50   -2.00   -4.50     5.50    3.00   18.50
$hbox 7 "R_Leg02"	    -5.03   -2.70   -5.08     2.97    2.30   14.92
$hbox 7 "R_Leg03"	    -4.38   -2.59   -4.20     3.62    2.41   17.80
$hbox 7 "R_Foot"	    -3.10   -2.74   -3.03     3.18    2.68    3.21
$hbox 7 "Right_Toe1_Joint00"	    -1.62   -0.69   -0.70     0.74    0.72    5.82
$hbox 7 "Right_Toe1_Joint01"	    -0.64   -1.31   -3.89     1.58    1.29    5.50
$hbox 7 "Right_Toe2_Joint00"	    -1.52   -0.82   -0.69     0.85    0.61    5.83
$hbox 7 "Right_Toe2_Joint01"	    -0.60   -1.41   -4.00     1.58    1.16    5.41
$hbox 7 "Right_Toe3_Joint00"	    -0.83   -0.95   -0.83     1.63    0.82    4.04
$hbox 7 "Right_Toe3_Joint01"	    -0.59   -0.71   -0.89     1.02    0.60    2.83
$hbox 7 "Right_Toe3_Joint02"	    -0.63   -1.70   -2.18     0.96    1.23    5.68
$hbox 7 "Right_Toe4_Joint00"	    -0.93   -0.86   -0.81     1.51    0.90    4.01
$hbox 7 "Right_Toe4_Joint01"	    -0.69   -0.60   -0.91     0.92    0.71    2.76
$hbox 7 "Right_Toe4_Joint02"	    -0.65   -1.45   -2.29     0.94    1.48    5.57
$hbox 2 "Spine01"	    -3.00   -5.00    0.00     3.00    5.00   16.00
$hbox 2 "Spine04"	    -6.00  -10.00   -6.00    12.00   10.00   12.00
$hbox 4 "L_Arm01"	    -3.00   -2.00   -1.00     3.00    2.00   11.00
$hbox 4 "L_Arm02"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 4 "L_Arm03"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 4 "L_Arm04"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 4 "L_Arm05"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 4 "L_Hand"	    -2.28   -2.36   -2.44     2.38    2.54    2.77
$hbox 4 "L_Hand_Top"	    -3.01   -1.65   -4.74     2.40    1.90    0.78
$hbox 4 "L_Finger1_01"	    -1.20   -0.84   -0.87     1.15    0.81    2.55
$hbox 4 "L_Finger1_02"	    -1.26   -0.55   -0.53     0.46    0.56    2.47
$hbox 4 "L_Finger1_03"	    -0.59   -0.62   -0.38     1.13    0.70    3.75
$hbox 4 "L_Finger2_01"	    -1.09   -0.70   -0.51     0.94    0.95    2.64
$hbox 4 "L_Finger2_02"	    -1.06   -0.54   -0.45     0.44    0.57    2.66
$hbox 4 "L_Finger2_03"	    -0.70   -0.61   -0.37     1.13    0.69    3.71
$hbox 4 "L_Finger3_01"	    -1.00   -0.84   -1.01     0.78    0.82    2.63
$hbox 4 "L_Finger3_02"	    -1.36   -0.52   -0.51     0.41    0.59    2.48
$hbox 4 "L_Finger3_03"	    -0.69   -0.63   -0.42     1.19    0.68    3.64
$hbox 4 "L_ShoulderPad"	    -7.50   -0.27   -5.88     5.93    7.21    6.06
$hbox 1 "Neck_01"	    -5.50   -3.00   -1.00     3.50    3.00    7.00
$hbox 1 "Head"	    -1.00   -4.00   -5.00     7.00    4.00    7.00
$hbox 5 "R_Arm01"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 5 "R_Arm02"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 5 "R_Arm03"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 5 "R_Arm04"	    -3.00   -2.00   -1.00     3.00    2.00    9.00
$hbox 11 "R_Hand"	    -3.50   -3.50   -1.00     3.50    5.50   37.00
$hbox 5 "R_ShoulderPad"	    -7.27   -0.78   -7.00     6.17    6.21    5.82
$hbox 12 "jellyBone"	    -3.50   -4.00    2.00     3.50    4.00   12.00
$hbox 13 "Rope01_Seg01"	    -2.50   -2.50   -1.00     2.50    2.50   11.00
$hbox 13 "Rope01_Seg02"	    -2.00   -2.00   -2.00     2.00    2.00   10.00
$hbox 13 "Rope01_Seg03"	    -1.50   -1.50   -1.00     1.50    1.50    9.00
$hbox 13 "Rope01_Seg04"	    -1.00   -1.00   -1.00     1.00    1.00    7.00
$hbox 13 "Rope01_Seg05"	    -1.00   -1.00   -1.00     1.00    1.00    5.00
$hbox 13 "Rope01_Seg06"	    -0.50   -0.50    0.00     0.50    0.50    4.00
$hbox 13 "Rope02_Seg01"	    -2.50   -2.50   -1.00     2.50    2.50   11.00
$hbox 13 "Rope02_Seg02"	    -2.00   -2.00   -2.00     2.00    2.00   10.00
$hbox 13 "Rope02_Seg03"	    -1.50   -1.50   -1.00     1.50    1.50    9.00
$hbox 13 "Rope02_Seg04"	    -1.00   -1.00   -1.00     1.00    1.00    7.00
$hbox 13 "Rope02_Seg05"	    -1.00   -1.00   -1.00     1.00    1.00    5.00
$hbox 13 "Rope02_Seg06"	    -0.50   -0.50    0.00     0.50    0.50    4.00
$hbox 13 "Rope03_Seg01"	    -2.00   -2.00   -0.50     2.00    2.00    6.50
$hbox 13 "Rope03_Seg02"	    -1.50   -1.50   -1.00     1.50    1.50    9.00
$hbox 13 "Rope03_Seg03"	    -1.00   -1.00   -0.50     1.00    1.00    8.50
$hbox 13 "Rope03_Seg04"	    -0.50   -0.50   -0.50     0.50    0.50    4.50
$hbox 11 "R_Hand"	    -1.00   -7.50    1.00     1.00   -0.50   31.00
$hbox 2 "Spine03"	    -6.50   -6.50   -3.50     6.50    6.50    9.50
$hbox 12 "jellyBone"	    -2.00   -6.00   -9.00    10.00    6.00    7.00
$hbox 12 "jellyBone"	    -6.50   -6.50  -12.00     6.50    6.50    2.00

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