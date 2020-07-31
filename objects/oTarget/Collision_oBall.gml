/// @description Destroy
phy_active = false;
alarm[0] = 1;
alarm[1] = 160;

var _elm = layer_sequence_create(layer, x, y, seqRedbotDestroy);
layer_sequence_speedscale(_elm, 1.2);
layer_sequence_headpos(_elm, 6);