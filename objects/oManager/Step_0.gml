/// @description 
// Place ball on tracker
if (!ballThrown) {
	ballInst.phy_position_x = oTracker.x;
	ballInst.phy_position_y = oTracker.y;
	ballInst.phy_active = false;
}

// Input
if (gameState == GAME_STATE.INPUT) {
	// Check for mouse press
	if (mouse_check_button_pressed(mb_left)) {
		gameState = GAME_STATE.END;
		ballDirection = point_direction(ballInst.x, ballInst.y, mouse_x, mouse_y);
		
		// Continue sequence
		if (layer_sequence_is_paused(sequenceElement)) {
			layer_sequence_play(sequenceElement);
			
			// Throw
			throwBall();
		}
	}
}

// Waiting for ball
if (gameState == GAME_STATE.END && layer_sequence_is_paused(sequenceElement)) {
	if (ballInst.timer <= 0) {
		layer_sequence_play(sequenceElement);
		ballInst.visible = false;
	}
}