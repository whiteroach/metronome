s.boot;
s.volume.gui;

//METRONOME
~metronome = {
	|dur_arr, tempo|
	var params = ~handler_two.(dur_arr);
	Pbind(
		\instrument, \noiseSynth,
		\dur, Pseq(params[0], inf),
		\freq, Pseq(params[1],inf),
		\amp, 0.4,
		\tempo, tempo,
	).play;
}


~metronome.(f, 60/60)
