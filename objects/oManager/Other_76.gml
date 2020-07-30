/// @description 
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];

if (_eventType == "sequence event") {
	switch (_message) {
		case "start":
			gameState = GAME_STATE.START;
			ballThrown = false;
			
			with (ballInst) {
				phy_speed_x = 0;
				phy_speed_y = 0;
				phy_angular_velocity = 0;
				
				timer = life;
				visible = true;
			}
		break;
		
		case "enable_input":
			gameState = GAME_STATE.INPUT;
			
			// Store element
			sequenceElement = _elementID;
		break;
		
		case "wait_for_input":
			// Pause sequence if input still enabled
			if (gameState == GAME_STATE.INPUT) {
				layer_sequence_pause(_elementID);
			}
			// Throw ball
			else {
				throwBall();
			}
		break;
		
		case "wait_for_ball":
			layer_sequence_pause(_elementID);
		break;
	}
}