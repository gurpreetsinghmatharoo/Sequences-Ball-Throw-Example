/// @description 
// Draw input
if (gameState == GAME_STATE.INPUT) {
	var _dir = point_direction(ballInst.x, ballInst.y, mouse_x, mouse_y);
	draw_sprite_ext(input_arrow, 0, ballInst.x, ballInst.y, 1, 1, _dir, -1, 1);
}