Pbindef( \ping_mh,
	\instrument, "ping_mh",
	\ctranspose, -4,
	\dur, Pseq([
		2/6, 1/6, 2/6, 1/6, 1/6, 5/6,
		2/6, 1/6, 2/6, 1/6, 5/6, 1/6,
		2/6, 1/6, 2/6, 1/6, 1/6, 4/6, 1/6,
		1/6, 1/6, 1/6, 1/6, 1/6, 1/6, 1]),
    \degree, Pseq([
		3, 10, 4, 11, 5, 7,
		3, 10, 4, 1,  0, 2,
		3, 10, 4, 11, 5, 7, 5,
		4,  3, 2,  3, 2, 1, 0]),
	\amp, 0.1,
);