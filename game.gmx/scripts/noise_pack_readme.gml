// Perlin Noise
scr_pn_init();
scr_pn_set_seed(some_integer); // optional
scr_pn_noise(min, max, octaves, persistence, scale, x, [y, z]);

// Simplex Noise
scr_sn_init();
scr_sn_set_seed(some_integer); // optional
scr_sn_noise(min, max, octaves, persistence, scale, x, [y, z]);

// Improved Noise (seedless)
scr_in_init();
scr_in_noise(min, max, octaves, persistence, scale, x, [y, z]);
