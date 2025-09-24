s.boot;
s.volume.gui;

// -----------------------UTILS----------------------------
/*
 Extract from an array of durations the index of rests.
    - param bar_dur: an array of duration values.
    - return a list of indexes related to the position of the rest in the given array.

*/

~rest_selector = {
    | bar_dur |
    var rests = List[];
    bar_dur.do(
        {
            |dur, i|
                if(dur.isRest,
                    {
                        rests.add(i)
                    };
                );
        }
    );
    rests
};

/*
    Given an array of durations, compiles a list of frequencies matching the length of the input
    - param item: number.
    - param list: a list of frequencies.
*/
~frequency_feeder = {
	| item, list|
	var arr = Array.fill(item, {500});
	arr.put(0, 700);
	list.add(arr)
};

/*
    Given an array of durations, compiles frequency and duration arrays to feed the metronome.
    - param bar_dur: a multidimensional array of durations
*/
~handler = {
    | bar_dur |

	var freq_list = List[];
	var dur = List[];

	bar_dur.do({
		| item |
		var arr;

		if(item.isKindOf(Pn)) {
			~frequency_feeder.(item.repeats, freq_list);
			dur.add(item);
		}
        {
			var counter = 0;

			item.do({
				| elem |
					if(elem.isKindOf(Pn)){
						counter = counter + elem.repeats;
					}{
						counter = counter +  1;
					};
					dur.add(elem);
				}
			);
			~frequency_feeder.(counter, freq_list);
		};
	});

	[dur.asArray, freq_list.asArray]
};

// percussive sound
(
SynthDef(\noiseSynth, { |out=0, freq=1000, rq=0.1, amp=0.1, dur=1|
    var noise = WhiteNoise.ar(amp);
    var filtered = BPF.ar(noise, freq, rq); // Band-pass filter
    var env = EnvGen.kr(Env.perc(0.01, dur), doneAction: 2);
    Out.ar(out, filtered * env)
}).add;
)


