/* Retrieved from
http://sccode.org/1-5aD

Glockenspiel, xylophone, and bell_tubular, are all based on a very similar structure.
By nicolaariutti and edited by Zé Craum
http://sccode.org/1-5ay#c835

Modified by Bruno Ruviaro and Josh Mitchell 8/19.
*/

SynthDef(\xylophone, {
	arg freq = 440, amp = 0.01, pan = 0, out = 0, att = 0.001, rel = 2, exciterRel = 0.05;

	var env, snd;

	env = Env.perc(att, exciterRel, 0.25).kr;

	snd = DynKlank.ar(
		specificationsArrayRef:
	        	Ref.new([
	        		[1, 3, 3.971, 5.024, 5.903, 7.13, 8.91],   // harmonics
			        [1, 0.95, 0.0891,, 0.65, 0.794, 0.53, 0.1], // amplitudes
		        	[1, 0.593, 0.19, 0.16, 0.26, 0.02, 0.05]     // ring times
		        ]),
		input: Impulse.ar(0),
		freqscale: freq,
		decayscale: rel
	);

	DetectSilence.ar(
		        in: snd,
		        amp: 0.001,
		        time: 0.5,
		        doneAction: 2
		    );

	Out.ar(out, Pan2.ar(snd, pan, amp));
},
metadata: (
	credit: "http://sccode.org/1-5aD",
	category: \bells,
	tags: [\pitched]
	)
).add