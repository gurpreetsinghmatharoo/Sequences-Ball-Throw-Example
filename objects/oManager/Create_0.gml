/// @description 
// Game states
enum GAME_STATE {
	START,
	INPUT,
	END
}

gameState = GAME_STATE.START;

// Sequence
sequenceElement = -1;

// Ball
ballInst = instance_create_layer(-100, 0, "Instances", oBall);

ballThrown = false;
ballDirection = 0;

// Throw function
throwBall = function () {
	ballThrown = true;
	
	var _force = 500;
	var _forceX = lengthdir_x(_force, ballDirection);
	var _forceY = lengthdir_y(_force, ballDirection);
	with (ballInst) physics_apply_impulse(x, y, _forceX, _forceY);
}