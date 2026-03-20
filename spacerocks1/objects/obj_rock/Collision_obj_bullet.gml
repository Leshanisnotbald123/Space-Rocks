pitch_add = 0

obj_game.points += 25

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big
{
	pitch_add -= 0.5
	obj_game.points += 25
	sprite_index = spr_rock_small;
	instance_copy(true);
	
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
	
}
else
{
	instance_destroy();
}

audio_play_sound(snd_hit, 0, false, 1, 0, random_range(0.9, 1.2) + pitch_add);