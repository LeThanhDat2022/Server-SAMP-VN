
#include <a_samp>
#include <streamer>
#pragma tabsize 0
public OnGameModeInit()
{
// Internet
	new cobj0 = CreateDynamicObject(19437, 702.303406, -2322.680908, 2007.588745, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj0, 0, 18996, "mattextures", "sampwhite");

	       CreateDynamicObject(11737, 701.498108, -2322.110107, 2006.798340, 0.000000, 0.000000, 180.000000);

	new cobj1 = CreateDynamicObject(19445, 701.842468, -2322.688477, 2008.548706, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj1, 0, 18996, "mattextures", "sampblack");


	new cobj2 = CreateDynamicObject(19437, 700.703308, -2322.681152, 2007.588745, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj2, 0, 18996, "mattextures", "sampwhite");


	new cobj3 = CreateDynamicObject(19089, 701.509033, -2322.569092, 2009.370850, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj3, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(19311, 701.516602, -2322.649170, 2009.351563, 0.000000, 90.000000, 90.000000);
	       CreateDynamicObject(19827, 703.260498, -2322.591064, 2007.966919, 0.000000, 0.000000, 180.000000);

	new cobj4 = CreateDynamicObject(19087, 702.334167, -2322.602539, 2009.356934, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj4, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(1736, 701.535522, -2322.276123, 2009.826538, 0.000000, 0.000000, 180.000000);
	       CreateDynamicObject(11713, 703.550842, -2322.580078, 2008.704102, 0.000000, 0.000000, 90.000000);

	new cobj5 = CreateDynamicObject(19087, 703.094421, -2322.592285, 2009.356934, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj5, 0, 2361, "shopping_freezers", "white");


	new cobj6 = CreateDynamicObject(19089, 703.089722, -2322.584473, 2009.370850, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj6, 0, 2361, "shopping_freezers", "white");


	new cobj7 = CreateDynamicObject(19089, 699.888245, -2322.590820, 2009.370850, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj7, 0, 2361, "shopping_freezers", "white");


	new cobj8 = CreateDynamicObject(2198, 703.924744, -2322.177246, 2006.799072, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj8, 1536, 19424, "headphones", "headphones02");

	       CreateDynamicObject(19808, 704.154297, -2321.788086, 2007.585571, 0.000000, 0.000000, 93.959991);

	new cobj9 = CreateDynamicObject(19874, 704.156677, -2321.295898, 2007.605713, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj9, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(1840, 704.076416, -2321.707031, 2006.815308, 0.000000, 0.000000, 180.899994);

	new cobj10 = CreateDynamicObject(19564, 704.273010, -2321.287354, 2007.557739, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj10, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(1840, 704.119995, -2321.164063, 2006.815308, 0.000000, 0.000000, 180.899994);
	       CreateDynamicObject(1302, 698.930847, -2322.326660, 2006.797363, 0.000000, 0.000000, 180.000000);
	       CreateDynamicObject(2541, 698.825500, -2320.254883, 2007.588501, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(1778, 698.287842, -2320.911865, 2006.801392, 0.000000, 0.000000, 87.720001);
	       CreateDynamicObject(2788, 705.264404, -2321.539795, 2007.404297, 0.000000, 0.000000, 0.000000);

	new cobj11 = CreateDynamicObject(19446, 700.989441, -2322.655273, 2011.493164, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj11, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(1789, 698.646912, -2319.296875, 2007.317871, 0.000000, 0.000000, 90.360001);
	       CreateDynamicObject(927, 705.564636, -2321.914307, 2008.940552, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19616, 705.267944, -2321.300781, 2009.772949, 0.000000, 90.000000, 270.000000);

	new cobj12 = CreateDynamicObject(19378, 701.999695, -2318.395020, 2010.392456, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj12, 0, 8639, "chinatownmall", "ctmall19_128");

	       CreateDynamicObject(2293, 705.034119, -2319.318359, 2006.798340, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19848, 705.842712, -2322.886475, 2009.394043, 0.000000, 0.000000, 0.000000);

	new cobj13 = CreateDynamicObject(19874, 700.020874, -2317.462158, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj13, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj14 = CreateDynamicObject(19564, 699.895630, -2317.466797, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj14, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19808, 701.202942, -2317.141602, 2007.677490, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19184, 700.741211, -2317.143799, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19184, 700.527832, -2317.171875, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19422, 700.873718, -2317.104736, 2007.697510, 0.000000, 0.000000, -3.779990);

	new cobj15 = CreateDynamicObject(19624, 700.650818, -2317.128906, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj15, 769, 2098, "", "");


	new cobj16 = CreateDynamicObject(19624, 700.605530, -2317.128906, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj16, 769, 2098, "", "");

	       CreateDynamicObject(19422, 700.254272, -2317.169922, 2007.697510, 0.000000, 0.000000, -78.419983);

	new cobj17 = CreateDynamicObject(1714, 702.428894, -2317.073242, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj17, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj18 = CreateDynamicObject(19445, 698.252808, -2318.199219, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj18, 0, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19808, 700.021729, -2317.073242, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj19 = CreateDynamicObject(19564, 701.316956, -2316.716064, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj19, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj20 = CreateDynamicObject(19874, 701.186646, -2316.709473, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj20, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj21 = CreateDynamicObject(1714, 703.978882, -2317.187744, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj21, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19570, 700.927246, -2316.543945, 2007.677124, 0.000000, 0.000000, 0.000000);

	new cobj22 = CreateDynamicObject(19564, 704.999817, -2317.543457, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj22, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj23 = CreateDynamicObject(19445, 705.629395, -2318.167969, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj23, 0, 18996, "mattextures", "sampblack");


	new cobj24 = CreateDynamicObject(1714, 698.904785, -2317.139648, 2006.798096, 0.000000, 0.000000, 90.480019);
	SetDynamicObjectMaterial(cobj24, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj25 = CreateDynamicObject(19874, 705.123779, -2317.551270, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj25, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj26 = CreateDynamicObject(19874, 700.039490, -2316.461182, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj26, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj27 = CreateDynamicObject(19564, 699.885193, -2316.466797, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj27, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19808, 701.278625, -2316.081055, 2007.677490, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19422, 700.945374, -2316.103027, 2007.697510, 0.000000, 0.000000, -30.479980);
	       CreateDynamicObject(19808, 705.115356, -2317.142822, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19184, 700.741211, -2316.042725, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj28 = CreateDynamicObject(19425, 700.605713, -2316.063721, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj28, 0, 19080, "laserpointer2", "laserbeam-2-64x64");


	new cobj29 = CreateDynamicObject(19624, 700.650818, -2316.064941, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj29, 769, 2098, "", "");


	new cobj30 = CreateDynamicObject(19624, 700.605530, -2316.064941, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj30, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.527771, -2316.030029, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj31 = CreateDynamicObject(19437, 700.647461, -2315.978516, 2007.588745, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj31, 0, 14581, "ab_mafiasuitea", "ab_wood01");

	       CreateDynamicObject(19422, 700.224792, -2316.049316, 2007.697510, 0.000000, 0.000000, -117.660004);

	new cobj32 = CreateDynamicObject(1714, 702.428894, -2316.012695, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj32, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19808, 700.004089, -2316.075684, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19184, 705.515320, -2317.154785, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19422, 705.351929, -2316.958984, 2007.697510, 0.000000, 0.000000, -60.959999);

	new cobj33 = CreateDynamicObject(19624, 705.592041, -2317.128906, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj33, 769, 2098, "", "");


	new cobj34 = CreateDynamicObject(19564, 701.366089, -2315.675049, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj34, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj35 = CreateDynamicObject(19874, 701.237793, -2315.665771, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj35, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj36 = CreateDynamicObject(2691, 698.417786, -2316.572754, 2009.194946, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj36, 0, 6354, "sunset03_law2", "billLA01");


	new cobj37 = CreateDynamicObject(1714, 703.978882, -2316.070557, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj37, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj38 = CreateDynamicObject(19564, 705.005859, -2316.481934, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj38, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19835, 705.328613, -2316.654053, 2007.777954, 0.000000, 0.000000, 0.000000);

	new cobj39 = CreateDynamicObject(1714, 698.904785, -2316.157959, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj39, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj40 = CreateDynamicObject(19446, 698.265381, -2317.778564, 2011.493164, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj40, 0, 2361, "shopping_freezers", "white");


	new cobj41 = CreateDynamicObject(19446, 696.630127, -2317.829346, 2008.548706, 0.000000, 90.000000, -180.000000);
	SetDynamicObjectMaterial(cobj41, 0, 2361, "shopping_freezers", "white");


	new cobj42 = CreateDynamicObject(19874, 705.127930, -2316.490234, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj42, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj43 = CreateDynamicObject(2697, 705.487793, -2316.620605, 2009.143555, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj43, 0, 10023, "bigwhitesfe", "zombotech2");


	new cobj44 = CreateDynamicObject(19874, 700.011353, -2315.399170, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj44, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj45 = CreateDynamicObject(19446, 707.926880, -2324.345703, 2008.548706, 0.000000, 90.000000, -90.000000);
	SetDynamicObjectMaterial(cobj45, 0, 2361, "shopping_freezers", "white");


	new cobj46 = CreateDynamicObject(19564, 699.893982, -2315.386475, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj46, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19808, 705.126831, -2316.102295, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj47 = CreateDynamicObject(19446, 707.281372, -2318.204346, 2008.548706, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj47, 0, 2361, "shopping_freezers", "white");


	new cobj48 = CreateDynamicObject(19446, 705.615906, -2317.781738, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj48, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(19422, 705.356445, -2316.193848, 2007.697510, 0.000000, 0.000000, -145.259979);
	       CreateDynamicObject(19422, 700.944946, -2315.068359, 2007.697510, 0.000000, 0.000000, 50.760010);
	       CreateDynamicObject(19808, 701.274170, -2315.020508, 2007.677490, 0.000000, 0.000000, 90.000000);

	new cobj49 = CreateDynamicObject(19446, 695.066040, -2324.332764, 2008.548706, 0.000000, 90.000000, -90.000000);
	SetDynamicObjectMaterial(cobj49, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(19184, 700.741211, -2315.041016, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj50 = CreateDynamicObject(19624, 700.650818, -2315.024658, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj50, 769, 2098, "", "");


	new cobj51 = CreateDynamicObject(19624, 700.605530, -2315.024658, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj51, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.527771, -2315.007324, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19422, 700.264771, -2315.048340, 2007.697510, 0.000000, 0.000000, -117.660004);

	new cobj52 = CreateDynamicObject(1714, 702.428894, -2315.032471, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj52, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19184, 705.515320, -2316.051270, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj53 = CreateDynamicObject(19624, 705.591980, -2316.064941, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj53, 769, 2098, "", "");

	       CreateDynamicObject(19808, 700.006897, -2315.015137, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj54 = CreateDynamicObject(19425, 705.680664, -2316.060059, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj54, 0, 19080, "laserpointer2", "laserbeam-2-64x64");


	new cobj55 = CreateDynamicObject(19564, 701.374939, -2314.593994, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj55, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19835, 705.278687, -2315.560059, 2007.777954, 0.000000, 0.000000, 0.000000);

	new cobj56 = CreateDynamicObject(19564, 704.993042, -2315.400635, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj56, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj57 = CreateDynamicObject(19874, 701.227173, -2314.584961, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj57, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj58 = CreateDynamicObject(19874, 705.121338, -2315.409180, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj58, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj59 = CreateDynamicObject(1714, 703.978882, -2314.969727, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj59, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj60 = CreateDynamicObject(1714, 698.904785, -2315.033691, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj60, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19422, 705.308350, -2315.261230, 2007.697510, 0.000000, 0.000000, -74.759979);

	new cobj61 = CreateDynamicObject(19874, 700.019714, -2314.337646, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj61, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19808, 705.136658, -2315.001465, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj62 = CreateDynamicObject(19564, 699.903076, -2314.325439, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj62, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19422, 700.936646, -2314.086182, 2007.697510, 0.000000, 0.000000, 123.780006);
	       CreateDynamicObject(19184, 705.515320, -2315.010986, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19808, 701.289917, -2313.979492, 2007.677490, 0.000000, 0.000000, 90.000000);

	new cobj63 = CreateDynamicObject(19624, 705.591980, -2315.024658, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj63, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.741211, -2313.980225, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj64 = CreateDynamicObject(19624, 700.650818, -2313.964111, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj64, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.527771, -2313.966064, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj65 = CreateDynamicObject(19624, 700.605530, -2313.964111, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj65, 769, 2098, "", "");


	new cobj66 = CreateDynamicObject(1714, 702.428894, -2313.953369, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj66, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19808, 700.009644, -2313.934570, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19422, 700.296692, -2313.865967, 2007.697510, 0.000000, 0.000000, 223.500046);

	new cobj67 = CreateDynamicObject(19564, 704.993835, -2314.320313, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj67, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj68 = CreateDynamicObject(19874, 705.114746, -2314.328125, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj68, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj69 = CreateDynamicObject(19564, 701.394714, -2313.552979, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj69, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj70 = CreateDynamicObject(1714, 703.978882, -2313.948975, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj70, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj71 = CreateDynamicObject(19874, 701.271851, -2313.543945, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj71, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19835, 700.915955, -2313.442871, 2007.777954, 0.000000, 0.000000, 0.000000);

	new cobj72 = CreateDynamicObject(1714, 698.904785, -2313.893066, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj72, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj73 = CreateDynamicObject(2691, 705.501587, -2314.443848, 2009.194946, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj73, 0, 2362, "rc_shop_figure", "CJ_RC_9");

	       CreateDynamicObject(18648, 701.965088, -2314.186768, 2011.634644, 0.000000, 0.000000, 89.820023);
	       CreateDynamicObject(19808, 705.125977, -2313.941162, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj74 = CreateDynamicObject(19874, 700.048035, -2313.277588, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj74, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19422, 705.325989, -2313.933838, 2007.697510, 0.000000, 0.000000, -92.039978);

	new cobj75 = CreateDynamicObject(19564, 699.911926, -2313.265625, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj75, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19184, 705.515320, -2313.949951, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj76 = CreateDynamicObject(19624, 705.591980, -2313.964111, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj76, 769, 2098, "", "");

	       CreateDynamicObject(19808, 701.265259, -2312.898682, 2007.677490, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19422, 700.253845, -2312.966553, 2007.697510, 0.000000, 0.000000, 316.140015);
	       CreateDynamicObject(19184, 700.527771, -2312.924805, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj77 = CreateDynamicObject(19624, 700.650818, -2312.922852, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj77, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.741211, -2312.898193, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj78 = CreateDynamicObject(19624, 700.605530, -2312.922852, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj78, 769, 2098, "", "");


	new cobj79 = CreateDynamicObject(1714, 702.428894, -2312.933350, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj79, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19422, 700.949341, -2312.852539, 2007.697510, 0.000000, 0.000000, 423.540009);

	new cobj80 = CreateDynamicObject(19445, 700.630127, -2312.913818, 2006.506348, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj80, 0, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19808, 700.048645, -2312.871826, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj81 = CreateDynamicObject(19425, 700.605713, -2312.761230, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj81, 0, 19080, "laserpointer2", "laserbeam-2-64x64");


	new cobj82 = CreateDynamicObject(19564, 704.999634, -2313.319336, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj82, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj83 = CreateDynamicObject(19874, 705.112549, -2313.327148, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj83, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj84 = CreateDynamicObject(1714, 703.978882, -2312.929199, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj84, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj85 = CreateDynamicObject(19564, 701.374207, -2312.512695, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj85, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj86 = CreateDynamicObject(19874, 701.231628, -2312.503662, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj86, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj87 = CreateDynamicObject(1714, 698.904785, -2312.892822, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj87, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj88 = CreateDynamicObject(19437, 700.646973, -2312.482910, 2007.587524, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj88, 0, 14581, "ab_mafiasuitea", "ab_wood01");

	       CreateDynamicObject(19835, 700.339111, -2312.458496, 2007.777954, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19808, 705.155090, -2312.940430, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19184, 705.515320, -2312.910156, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj89 = CreateDynamicObject(19874, 700.027283, -2312.217529, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj89, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj90 = CreateDynamicObject(19564, 699.901184, -2312.224609, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj90, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj91 = CreateDynamicObject(19624, 705.591980, -2312.922852, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj91, 769, 2098, "", "");


	new cobj92 = CreateDynamicObject(2697, 698.414673, -2312.692871, 2009.143555, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj92, 0, 14654, "ab_trukstpe", "bbar_sports1");

	       CreateDynamicObject(19422, 705.443237, -2312.800049, 2007.697510, 0.000000, 0.000000, -227.999939);

	new cobj93 = CreateDynamicObject(2679, 706.357727, -2313.264893, 2009.417236, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj93, 512, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19808, 701.221008, -2311.917725, 2007.677490, 0.000000, 0.000000, 90.000000);

	new cobj94 = CreateDynamicObject(19425, 705.680725, -2312.765381, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj94, 0, 19080, "laserpointer2", "laserbeam-2-64x64");


	new cobj95 = CreateDynamicObject(2679, 706.196167, -2313.263428, 2009.927246, 0.000000, 63.000000, 0.000000);
	SetDynamicObjectMaterial(cobj95, 256, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(18075, 701.933289, -2312.236572, 2010.355713, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19422, 701.004211, -2311.912354, 2007.697510, 0.000000, 0.000000, 481.440063);
	       CreateDynamicObject(19184, 700.527771, -2311.863037, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj96 = CreateDynamicObject(19624, 700.650818, -2311.859375, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj96, 769, 2098, "", "");


	new cobj97 = CreateDynamicObject(19624, 700.605530, -2311.859375, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj97, 769, 2098, "", "");

	       CreateDynamicObject(19422, 700.264404, -2311.881104, 2007.697510, 0.000000, 0.000000, 561.119873);
	       CreateDynamicObject(19184, 700.741211, -2311.817139, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj98 = CreateDynamicObject(1714, 702.428894, -2311.853760, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj98, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19808, 700.028687, -2311.831299, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj99 = CreateDynamicObject(19564, 705.005371, -2312.258545, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj99, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj100 = CreateDynamicObject(19874, 705.130310, -2312.266113, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj100, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19835, 705.427002, -2312.339844, 2007.777954, 0.000000, 0.000000, 0.000000);

	new cobj101 = CreateDynamicObject(19445, 706.664917, -2312.913818, 2007.588745, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj101, 0, 14581, "ab_mafiasuitea", "ab_wood01");


	new cobj102 = CreateDynamicObject(1714, 703.978882, -2311.907959, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj102, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj103 = CreateDynamicObject(19564, 701.361511, -2311.525635, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj103, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj104 = CreateDynamicObject(19874, 701.203064, -2311.522217, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj104, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj105 = CreateDynamicObject(2679, 705.075317, -2312.230469, 2009.614258, 90.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj105, 512, 18996, "mattextures", "sampwhite");


	new cobj106 = CreateDynamicObject(1714, 698.904785, -2311.872070, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj106, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj107 = CreateDynamicObject(2679, 704.948303, -2312.260742, 2010.063232, 90.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj107, 256, 18996, "mattextures", "sampblack");


	new cobj108 = CreateDynamicObject(2679, 705.266541, -2312.233643, 2009.414185, -30.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj108, 256, 18996, "mattextures", "sampblack");


	new cobj109 = CreateDynamicObject(2679, 705.230896, -2312.214844, 2009.414185, 90.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj109, 256, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19808, 705.144775, -2311.879639, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19835, 700.904175, -2311.241211, 2007.777954, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19184, 705.515320, -2311.849365, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj110 = CreateDynamicObject(19624, 705.591980, -2311.859375, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj110, 769, 2098, "", "");


	new cobj111 = CreateDynamicObject(19874, 700.058228, -2311.156006, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj111, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj112 = CreateDynamicObject(19564, 699.929749, -2311.144775, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj112, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19422, 705.354187, -2311.544922, 2007.697510, 0.000000, 0.000000, -163.799942);
	       CreateDynamicObject(19808, 701.256409, -2310.797607, 2007.677490, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19184, 700.527771, -2310.821289, 2007.804443, 0.000000, 90.000000, 0.000000);
	       CreateDynamicObject(19422, 700.989380, -2310.776123, 2007.697510, 0.000000, 0.000000, 452.099854);

	new cobj113 = CreateDynamicObject(19624, 700.650818, -2310.798828, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj113, 769, 2098, "", "");


	new cobj114 = CreateDynamicObject(19624, 700.605530, -2310.798828, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj114, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.741211, -2310.775391, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj115 = CreateDynamicObject(1714, 702.428894, -2310.774414, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj115, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19808, 700.067322, -2310.749023, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj116 = CreateDynamicObject(19564, 704.988831, -2311.157471, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj116, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19422, 700.284424, -2310.690186, 2007.697510, 0.000000, 0.000000, 583.319824);

	new cobj117 = CreateDynamicObject(19874, 705.128174, -2311.165039, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj117, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj118 = CreateDynamicObject(1714, 703.978882, -2310.766602, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj118, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj119 = CreateDynamicObject(1714, 698.904785, -2310.831543, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj119, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj120 = CreateDynamicObject(19564, 701.380249, -2310.404785, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj120, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj121 = CreateDynamicObject(19874, 701.216125, -2310.401855, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj121, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19422, 705.291992, -2310.979980, 2007.697510, 0.000000, 0.000000, -115.979927);
	       CreateDynamicObject(19835, 700.411377, -2310.307373, 2007.777954, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19808, 705.132019, -2310.779053, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19184, 705.515320, -2310.788330, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj122 = CreateDynamicObject(19624, 705.591980, -2310.798828, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj122, 769, 2098, "", "");


	new cobj123 = CreateDynamicObject(19874, 700.074158, -2310.152832, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj123, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj124 = CreateDynamicObject(19564, 699.939514, -2310.163574, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj124, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj125 = CreateDynamicObject(2679, 706.313416, -2310.897217, 2009.417236, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj125, 256, 18996, "mattextures", "sampblack");


	new cobj126 = CreateDynamicObject(2679, 706.178345, -2310.916260, 2009.927246, 0.000000, 63.000000, 0.000000);
	SetDynamicObjectMaterial(cobj126, 256, 18996, "mattextures", "sampblack");


	new cobj127 = CreateDynamicObject(19437, 700.647522, -2309.824219, 2007.588745, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj127, 0, 14581, "ab_mafiasuitea", "ab_wood01");


	new cobj128 = CreateDynamicObject(19425, 700.605713, -2309.785889, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj128, 0, 19080, "laserpointer2", "laserbeam-2-64x64");

	       CreateDynamicObject(19808, 701.231995, -2309.736572, 2007.677490, 0.000000, 0.000000, 90.000000);

	new cobj129 = CreateDynamicObject(19624, 700.650818, -2309.741455, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj129, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.527771, -2309.739502, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj130 = CreateDynamicObject(19624, 700.605530, -2309.741699, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj130, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.741211, -2309.712402, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj131 = CreateDynamicObject(19564, 705.025879, -2310.156494, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj131, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj132 = CreateDynamicObject(19874, 705.158325, -2310.183594, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj132, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19422, 700.318237, -2309.728027, 2007.697510, 0.000000, 0.000000, 682.619934);
	       CreateDynamicObject(19422, 700.976440, -2309.675781, 2007.697510, 0.000000, 0.000000, 541.559937);
	       CreateDynamicObject(19808, 700.068787, -2309.748047, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj133 = CreateDynamicObject(1714, 702.428894, -2309.711426, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj133, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj134 = CreateDynamicObject(1714, 698.904785, -2309.790771, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj134, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj135 = CreateDynamicObject(1714, 703.978882, -2309.705811, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj135, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj136 = CreateDynamicObject(19874, 701.205444, -2309.375732, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj136, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj137 = CreateDynamicObject(19564, 701.338989, -2309.364502, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj137, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj138 = CreateDynamicObject(2697, 705.504639, -2309.985107, 2009.143555, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj138, 0, 14787, "ab_sfgymbits02", "sign_cobra2");

	       CreateDynamicObject(19808, 705.158325, -2309.760986, 2007.677490, 0.000000, 0.000000, -90.000000);

	new cobj139 = CreateDynamicObject(19425, 705.680725, -2309.764893, 2007.657104, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj139, 0, 19080, "laserpointer2", "laserbeam-2-64x64");

	       CreateDynamicObject(19184, 705.515320, -2309.708008, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj140 = CreateDynamicObject(19624, 705.591980, -2309.741455, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj140, 769, 2098, "", "");


	new cobj141 = CreateDynamicObject(19874, 700.074951, -2309.183838, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj141, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj142 = CreateDynamicObject(19564, 699.949402, -2309.183105, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj142, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19422, 705.335876, -2309.439941, 2007.697510, 0.000000, 0.000000, -115.979927);
	       CreateDynamicObject(19808, 701.267822, -2308.755615, 2007.677490, 0.000000, 0.000000, 90.000000);
	       CreateDynamicObject(19422, 700.333801, -2308.806396, 2007.697510, 0.000000, 0.000000, 615.840088);
	       CreateDynamicObject(19808, 700.072571, -2308.784424, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19422, 700.989197, -2308.694092, 2007.697510, 0.000000, 0.000000, 523.380127);

	new cobj143 = CreateDynamicObject(19624, 700.650818, -2308.679443, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj143, 769, 2098, "", "");

	       CreateDynamicObject(19184, 700.527771, -2308.678223, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj144 = CreateDynamicObject(19624, 700.605530, -2308.679443, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj144, 769, 2098, "", "");


	new cobj145 = CreateDynamicObject(19564, 705.021423, -2309.075684, 2007.637695, 90.000000, 0.000000, 89.040001);
	SetDynamicObjectMaterial(cobj145, 0, 10864, "bridgeland_sfse", "prolaps02");


	new cobj146 = CreateDynamicObject(1714, 702.428894, -2308.690186, 2006.798462, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj146, 256, 10377, "cityhall_sfs", "ws_copart3");

	       CreateDynamicObject(19184, 700.741211, -2308.651367, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj147 = CreateDynamicObject(19874, 705.147278, -2309.082520, 2007.685669, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj147, 0, 5712, "cemetint_law", "crypttv_law");

	       CreateDynamicObject(19835, 705.392090, -2309.143066, 2007.777954, 0.000000, 0.000000, 0.000000);

	new cobj148 = CreateDynamicObject(19378, 701.999695, -2308.782227, 2010.392456, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj148, 0, 8639, "chinatownmall", "ctmall19_128");


	new cobj149 = CreateDynamicObject(1714, 698.904785, -2308.710693, 2006.798096, 0.000000, 0.000000, 90.480003);
	SetDynamicObjectMaterial(cobj149, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj150 = CreateDynamicObject(1714, 703.978882, -2308.604980, 2006.798096, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj150, 256, 10377, "cityhall_sfs", "ws_copart3");


	new cobj151 = CreateDynamicObject(19874, 701.134277, -2308.348145, 2007.685669, 0.000000, 0.000000, 180.000000);
	SetDynamicObjectMaterial(cobj151, 0, 5712, "cemetint_law", "crypttv_law");


	new cobj152 = CreateDynamicObject(19564, 701.277466, -2308.344238, 2007.637695, 90.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj152, 0, 10864, "bridgeland_sfse", "prolaps02");

	       CreateDynamicObject(19808, 705.187988, -2308.679932, 2007.677490, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(19422, 705.367249, -2308.699707, 2007.697510, 0.000000, 0.000000, -71.099953);

	new cobj153 = CreateDynamicObject(19445, 698.253418, -2308.576172, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj153, 0, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19184, 705.515320, -2308.666748, 2007.804443, 0.000000, 90.000000, 0.000000);

	new cobj154 = CreateDynamicObject(19624, 705.591980, -2308.679443, 2008.270752, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj154, 769, 2098, "", "");


	new cobj155 = CreateDynamicObject(19445, 705.625366, -2308.570313, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj155, 0, 18996, "mattextures", "sampblack");


	new cobj156 = CreateDynamicObject(19446, 707.265259, -2308.578613, 2008.548706, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj156, 0, 2361, "shopping_freezers", "white");


	new cobj157 = CreateDynamicObject(19446, 696.620728, -2308.226074, 2008.548706, 0.000000, 90.000000, -180.000000);
	SetDynamicObjectMaterial(cobj157, 0, 2361, "shopping_freezers", "white");


	new cobj158 = CreateDynamicObject(19446, 698.278442, -2308.143555, 2011.493164, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj158, 0, 2361, "shopping_freezers", "white");


	new cobj159 = CreateDynamicObject(19446, 705.614624, -2308.159668, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj159, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(19827, 704.293091, -2306.668945, 2008.550781, 0.000000, 0.000000, 0.000000);
	       CreateDynamicObject(19325, 699.288757, -2306.550537, 2008.304321, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(11713, 704.778198, -2306.659668, 2008.298096, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(1502, 704.198914, -2306.572266, 2006.798584, 0.000000, 0.000000, 180.000000);

	new cobj160 = CreateDynamicObject(19445, 700.933472, -2306.566650, 2011.027832, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj160, 0, 18996, "mattextures", "sampblack");


	new cobj161 = CreateDynamicObject(19446, 700.738220, -2306.587891, 2011.493164, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj161, 0, 2361, "shopping_freezers", "white");


	new cobj162 = CreateDynamicObject(1897, 705.290283, -2306.525879, 2008.529053, 0.000000, 90.000000, 180.000000);
	SetDynamicObjectMaterial(cobj162, 0, 2361, "shopping_freezers", "white");


	new cobj163 = CreateDynamicObject(1897, 705.290283, -2306.525879, 2008.588989, 0.000000, 90.000000, 180.000000);
	SetDynamicObjectMaterial(cobj163, 0, 2361, "shopping_freezers", "white");


	new cobj164 = CreateDynamicObject(19445, 697.865051, -2306.568604, 2006.013550, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj164, 0, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(19827, 702.532104, -2305.946533, 2008.353882, 0.000000, 0.000000, -90.000000);

	new cobj165 = CreateDynamicObject(19446, 698.769897, -2306.535645, 2011.493164, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj165, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(2812, 699.593445, -2305.885498, 2007.526367, 0.000000, 0.000000, 176.699951);
	       CreateDynamicObject(2027, 699.565735, -2305.673828, 2007.303101, 0.000000, 0.000000, 0.000000);

	new cobj166 = CreateDynamicObject(19446, 707.526001, -2306.556885, 2011.493164, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj166, 0, 2361, "shopping_freezers", "white");


	new cobj167 = CreateDynamicObject(19383, 702.618530, -2305.034180, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj167, 0, 18996, "mattextures", "sampblack");


	new cobj168 = CreateDynamicObject(19445, 708.996521, -2306.527100, 2008.548706, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj168, 0, 18996, "mattextures", "sampblack");


	new cobj169 = CreateDynamicObject(2691, 698.425720, -2304.846680, 2009.194946, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj169, 0, 14859, "gf1", "mp_apt1_pos4");

	       CreateDynamicObject(1502, 702.587769, -2304.250488, 2006.798584, 0.000000, 0.000000, 270.000000);
	       CreateDynamicObject(19827, 705.528442, -2304.093994, 2008.538086, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(1506, 705.568970, -2303.934082, 2006.716553, 0.000000, 0.000000, 90.000000);

	new cobj170 = CreateDynamicObject(1897, 702.585876, -2303.153320, 2008.537964, 0.000000, 90.000000, 270.000000);
	SetDynamicObjectMaterial(cobj170, 0, 2361, "shopping_freezers", "white");


	new cobj171 = CreateDynamicObject(1897, 702.656982, -2303.155518, 2008.537964, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj171, 0, 2361, "shopping_freezers", "white");


	new cobj172 = CreateDynamicObject(1897, 702.585876, -2303.153320, 2008.588989, 0.000000, 90.000000, 270.000000);
	SetDynamicObjectMaterial(cobj172, 0, 2361, "shopping_freezers", "white");


	new cobj173 = CreateDynamicObject(1897, 702.656982, -2303.156006, 2008.588989, 0.000000, 90.000000, 90.000000);
	SetDynamicObjectMaterial(cobj173, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(1789, 703.036926, -2303.067627, 2007.317871, 0.000000, 0.000000, 90.360001);
	       CreateDynamicObject(2227, 698.430786, -2302.708740, 2006.473877, 0.000000, 0.000000, 90.000000);

	new cobj174 = CreateDynamicObject(2691, 702.483765, -2302.103760, 2009.194946, 0.000000, 0.000000, 270.000000);
	SetDynamicObjectMaterial(cobj174, 0, 14859, "gf1", "mp_apt1_pos2");

	       CreateDynamicObject(1727, 701.307556, -2301.792725, 2006.798096, 0.000000, 0.000000, -94.020012);

	new cobj175 = CreateDynamicObject(19446, 702.629578, -2301.667969, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj175, 0, 2361, "shopping_freezers", "white");


	new cobj176 = CreateDynamicObject(2028, 698.896606, -2301.492920, 2007.382935, 0.000000, 0.000000, 90.059998);
	SetDynamicObjectMaterial(cobj176, 769, 1420, "", "");


	new cobj177 = CreateDynamicObject(19446, 702.609680, -2301.665771, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj177, 0, 2361, "shopping_freezers", "white");


	new cobj178 = CreateDynamicObject(19445, 707.512024, -2302.157227, 2008.548706, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj178, 0, 18996, "mattextures", "sampblack");


	new cobj179 = CreateDynamicObject(19786, 698.298035, -2301.523926, 2008.448730, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj179, 256, 14544, "ab_woozieb", "ap_screens1");


	new cobj180 = CreateDynamicObject(19446, 707.532532, -2302.166016, 2011.493164, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj180, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(2311, 698.816528, -2300.784424, 2006.798340, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(1727, 700.888672, -2300.262939, 2006.798096, 0.000000, 0.000000, -71.880020);

	new cobj181 = CreateDynamicObject(19378, 701.999695, -2299.148926, 2010.392456, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj181, 0, 8639, "chinatownmall", "ctmall19_128");

	       CreateDynamicObject(18075, 702.898865, -2298.914795, 2010.355713, 0.000000, 0.000000, 0.000000);

	new cobj182 = CreateDynamicObject(19445, 698.250610, -2298.952148, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj182, 0, 18996, "mattextures", "sampblack");


	new cobj183 = CreateDynamicObject(19445, 702.619263, -2298.641846, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj183, 0, 18996, "mattextures", "sampblack");


	new cobj184 = CreateDynamicObject(19445, 705.633667, -2298.947754, 2008.548706, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj184, 0, 18996, "mattextures", "sampblack");

	       CreateDynamicObject(2227, 698.518738, -2298.727295, 2006.473877, 0.000000, 0.000000, 90.000000);

	new cobj185 = CreateDynamicObject(19446, 696.616882, -2298.617432, 2008.548706, 0.000000, 90.000000, -180.000000);
	SetDynamicObjectMaterial(cobj185, 0, 2361, "shopping_freezers", "white");


	new cobj186 = CreateDynamicObject(19446, 698.254578, -2298.505615, 2011.493164, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj186, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(1727, 701.251038, -2297.989502, 2006.798096, 0.000000, 0.000000, -94.260040);

	new cobj187 = CreateDynamicObject(19446, 705.607788, -2298.524658, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj187, 0, 2361, "shopping_freezers", "white");


	new cobj188 = CreateDynamicObject(2028, 698.909668, -2297.572266, 2007.382935, 0.000000, 0.000000, 90.059998);
	SetDynamicObjectMaterial(cobj188, 769, 1420, "", "");


	new cobj189 = CreateDynamicObject(19786, 698.287170, -2297.621582, 2008.448730, 0.000000, 0.000000, 90.000000);
	SetDynamicObjectMaterial(cobj189, 256, 14859, "gf1", "mp_apt1_pos3");


	new cobj190 = CreateDynamicObject(19446, 704.273193, -2297.432861, 2008.548706, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj190, 0, 2361, "shopping_freezers", "white");


	new cobj191 = CreateDynamicObject(19446, 707.285706, -2297.613037, 2008.548706, 0.000000, 90.000000, 0.000000);
	SetDynamicObjectMaterial(cobj191, 0, 2361, "shopping_freezers", "white");

	       CreateDynamicObject(2311, 698.826843, -2296.793701, 2006.798340, 0.000000, 0.000000, -90.000000);
	       CreateDynamicObject(1727, 701.104736, -2296.463135, 2006.798096, 0.000000, 0.000000, -76.980049);

	new cobj192 = CreateDynamicObject(19445, 701.410034, -2295.996094, 2008.548706, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj192, 0, 18996, "mattextures", "sampblack");


	new cobj193 = CreateDynamicObject(19446, 703.123962, -2296.015625, 2011.493164, 0.000000, 0.000000, -90.000000);
	SetDynamicObjectMaterial(cobj193, 0, 2361, "shopping_freezers", "white");


	new cobj194 = CreateDynamicObject(19446, 702.229553, -2294.337646, 2008.548706, 0.000000, 90.000000, -270.000000);
	SetDynamicObjectMaterial(cobj194, 0, 2361, "shopping_freezers", "white");


	new cobj195 = CreateDynamicObject(19446, 702.613403, -2292.045654, 2011.493164, 0.000000, 0.000000, -180.000000);
	SetDynamicObjectMaterial(cobj195, 0, 2361, "shopping_freezers", "white");


	new cobj196 = CreateDynamicObject(19532, 702.013062, -2260.628418, 2006.800049, 0.000000, 0.000000, 0.000000);
	SetDynamicObjectMaterial(cobj196, 0, 14415, "carter_block_2", "cd_wall1");
	 ///////////////XUONG CONG NHAN//////////////////////////
	CreateDynamicObject(14795, 1389.94250, 55.91454, 1005.21313,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1508, 1421.99072, 80.80550, 1003.04883,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1415, 1383.99902, 83.80144, 1000.03400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2722, 1421.17834, 62.19230, 1002.35907,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(3630, 1372.96350, 82.79310, 1001.38373,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1415, 1381.99902, 83.80140, 1000.03400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1415, 1379.99902, 83.80140, 1000.03400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3630, 1363.46350, 82.79310, 1001.38373,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1635, 1415.65271, 83.75550, 1004.16772,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(939, 1368.12585, 29.03549, 1002.40558,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(939, 1374.12585, 29.03550, 1002.40558,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(939, 1380.12585, 29.03550, 1002.40558,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2722, 1421.17834, 42.19230, 1002.35907,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2722, 1421.17834, 31.19230, 1002.35907,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8553, 1406.76758, 83.93370, 1010.79010,   0.00000, 180.00000, -90.00000);
	CreateDynamicObject(8553, 1406.73962, 24.26660, 1010.80115,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(8553, 1366.99634, 24.04520, 1010.82111,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(8553, 1366.94849, 83.95160, 1010.81110,   0.00000, 180.00000, -90.00000);
	CreateDynamicObject(19463, 1419.70996, 27.49602, 1000.91461,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19463, 1397.96606, 86.07279, 1000.91461,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(3631, 1381.48584, 57.57220, 1000.48920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3631, 1373.83801, 57.57220, 1000.48920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3273, 1386.27026, 57.59330, 999.91779,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(958, 1388.00476, 57.63508, 1000.81000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(959, 1388.00476, 57.63510, 1000.81000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(18749, 1388.54370, 57.20176, 1001.53760,   -9.00000, 0.00000, 90.00000);
	CreateDynamicObject(1687, 1384.03687, 55.85060, 1000.68817,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3789, 1368.25537, 57.52910, 1000.25580,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1221, 1367.22522, 57.50880, 1000.72858,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1221, 1369.22522, 57.50880, 1000.72858,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1221, 1368.22522, 57.50880, 1000.72858,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3261, 1374.29993, 57.62580, 1000.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3261, 1377.29993, 57.62580, 1000.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3261, 1380.29993, 57.62580, 1000.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(982, 1416.50952, 71.52510, 1007.59888,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(982, 1416.50952, 57.52510, 1007.59888,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(982, 1403.78198, 44.64027, 1007.59888,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(984, 1391.46228, 38.96061, 1007.59888,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(982, 1378.69226, 32.43053, 1007.59888,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(982, 1362.69141, 68.09720, 1007.55890,   0.50000, 0.00000, 0.00000);
	CreateDynamicObject(984, 1369.34045, 80.91797, 1007.78998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(984, 1372.99414, 80.92196, 1007.78998,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(982, 1381.90674, 29.17500, 1007.59888,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(982, 1372.28796, 29.18188, 1007.59888,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(984, 1362.75879, 48.28521, 1007.43890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1364.54431, 37.00950, 1006.81342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1367.97791, 37.02650, 1006.81342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1371.23450, 37.04140, 1006.81342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(983, 1372.97656, 35.63055, 1007.57892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(983, 1372.96436, 38.83635, 1007.57892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(983, 1369.68738, 41.83233, 1007.57892,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(983, 1366.04590, 41.84700, 1007.57892,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3273, 1371.43335, 34.53197, 1006.19818,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3273, 1371.33411, 36.20452, 1006.19818,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2971, 1370.86597, 40.26444, 1006.85828,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2971, 1368.88586, 40.24599, 1006.85828,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2928, 1418.37073, 84.53300, 1008.57483,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3761, 1414.10095, 69.27510, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3761, 1414.40210, 64.99090, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3761, 1414.55396, 60.24390, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3761, 1414.69238, 55.82780, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3761, 1414.88770, 51.58170, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3761, 1414.86426, 47.02240, 1001.92151,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8168, 1416.96558, 31.77060, 1001.60028,   0.00000, 0.00000, 254.26453);
	// City hall
	new OEZgrada= CreateObject(10368, 1472.32068, -1795.76294, 33.03010,   0.00000, 0.00000, -90.00000);
	SetObjectMaterial(OEZgrada, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	SetObjectMaterial(OEZgrada, 7, 9557, "waterfall_sfw", "newaterfal1_256", 0xFFFFFFFF);
	SetObjectMaterial(OEZgrada, 2, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	SetObjectMaterial(OEZgrada, 5, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	SetObjectMaterial(OEZgrada, 6, 12954, "sw_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	SetObjectMaterial(OEZgrada, 9, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
	new OETrava1= CreateObject(19529, 1500.63098, -1802.09607, 12.52750,   0.00000, 0.00000, 0.00000);
	SetObjectMaterial(OETrava1, 0, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	new OETrava2= CreateObject(19536, 1426.65247, -1802.22351, 12.52030,   0.00000, 0.00000, 90.00000);
	SetObjectMaterial(OETrava2, 0, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	new OEZbun= CreateDynamicObject(10716, 1472.32275, -1795.76636, 32.82440,   0.00000, 0.00000, -90.00000);
	SetDynamicObjectMaterial(OEZbun, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	new OEDPod121= CreateObject(19377, 1487.36511, -1744.90845, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod121, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod1= CreateObject(19377, 1487.36365, -1754.52844, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod1, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod2= CreateObject(19377, 1476.87915, -1754.52576, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod2, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod3= CreateObject(19377, 1476.86194, -1744.90857, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod3, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod4= CreateObject(19377, 1447.75781, -1744.67163, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod4, 0, 9495, "vict_sfw", "ws_carparknew2", 0xFFFFFFFF);
	new OEDPod5= CreateObject(19377, 1437.26086, -1744.67163, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod5, 0, 9495, "vict_sfw", "ws_carparknew2", 0xFFFFFFFF);
	new OEDPod6= CreateObject(19377, 1447.77393, -1754.30286, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod6, 0, 9495, "vict_sfw", "ws_carparknew2", 0xFFFFFFFF);
	new OEDPod7= CreateObject(19377, 1437.27319, -1754.30151, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod7, 0, 9495, "vict_sfw", "ws_carparknew2", 0xFFFFFFFF);
	new OEDPod8= CreateObject(19377, 1525.83313, -1806.89978, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod8, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod9= CreateObject(19377, 1536.33484, -1806.89575, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod9, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod10= CreateObject(19377, 1546.81738, -1806.89514, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod10, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod11= CreateObject(19377, 1557.31531, -1806.90271, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod11, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod12= CreateObject(19377, 1515.35168, -1806.90454, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod12, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod13= CreateObject(19377, 1557.31616, -1797.28442, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod13, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod14= CreateObject(19377, 1546.82629, -1797.27478, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod14, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod15= CreateObject(19377, 1536.34375, -1797.27026, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod15, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod16= CreateObject(19377, 1525.86218, -1797.27075, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod16, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDPod17= CreateObject(19377, 1515.37219, -1797.27014, 12.45580,   0.00000, 90.00000, 0.00000);
	SetObjectMaterial(OEDPod17, 0, 13715, "richman02_lahills", "monobloc_256128", 0xFFFFFFFF);
	new OEDZid1= CreateDynamicObject(19378, 1497.38977, -1754.28015, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid1, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid2= CreateDynamicObject(19378, 1492.65906, -1749.55090, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid2, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid3= CreateDynamicObject(19378, 1492.65979, -1747.09558, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid3, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid4= CreateDynamicObject(19378, 1466.89990, -1754.27661, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid4, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid5= CreateDynamicObject(19378, 1471.63245, -1749.54114, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid5, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid6= CreateDynamicObject(19378, 1471.63147, -1747.09717, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid6, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid7= CreateDynamicObject(19378, 1453.02820, -1747.07886, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid7, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid8= CreateDynamicObject(19378, 1453.02246, -1749.80078, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid8, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid9= CreateDynamicObject(19378, 1431.98792, -1747.08423, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid9, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid10= CreateDynamicObject(19378, 1431.99768, -1749.80579, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid10, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid11= CreateDynamicObject(19378, 1554.76758, -1792.52332, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid11, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid12= CreateDynamicObject(19378, 1545.14893, -1792.52087, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid12, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid13= CreateDynamicObject(19378, 1535.52393, -1792.51746, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid13, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid14= CreateDynamicObject(19378, 1525.90881, -1792.51782, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid14, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid15= CreateDynamicObject(19378, 1521.90271, -1792.51062, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid15, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid16= CreateDynamicObject(19378, 1554.73840, -1811.76440, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid16, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid17= CreateDynamicObject(19378, 1545.11267, -1811.76111, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid17, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid18= CreateDynamicObject(19378, 1535.49121, -1811.75378, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid18, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid19= CreateDynamicObject(19378, 1525.87219, -1811.74829, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid19, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid20= CreateDynamicObject(19378, 1521.91199, -1811.75439, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid20, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid21= CreateDynamicObject(19378, 1517.18018, -1816.49414, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid21, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid22= CreateDynamicObject(19378, 1517.17395, -1787.77527, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid22, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	CreateDynamicObject(1557, 1484.18445, -1787.04175, 14.34830,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1487.21216, -1787.03967, 14.34830,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1480.29443, -1787.03894, 14.34830,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1477.27515, -1787.04065, 14.34830,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2195, 1488.22742, -1786.58228, 14.93660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2195, 1483.14587, -1786.66052, 14.93660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2195, 1481.30835, -1786.59290, 14.93660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2195, 1476.22327, -1786.63550, 14.93660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1280, 1492.20105, -1750.73547, 12.93560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1280, 1492.21997, -1745.28931, 12.93560,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1280, 1472.07690, -1750.71313, 12.93560,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1280, 1472.04004, -1745.35486, 12.93560,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1280, 1522.87939, -1792.91333, 12.93560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1280, 1534.19165, -1792.91370, 12.93560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1280, 1556.01953, -1792.97595, 12.93560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1280, 1545.08911, -1792.93652, 12.93560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1280, 1522.70801, -1811.33350, 12.93560,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1280, 1533.71228, -1811.31836, 12.93560,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1280, 1544.79321, -1811.28650, 12.93560,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1280, 1556.15247, -1811.26538, 12.93560,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1340, 1488.04028, -1771.09045, 15.38480,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1341, 1476.29004, -1770.63257, 15.38480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(966, 1445.30981, -1754.46252, 12.52020,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(967, 1447.55505, -1754.96045, 12.53520,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(968, 1445.29163, -1754.44543, 13.23120,   0.00000, -10.00000, 0.00000);
	CreateDynamicObject(973, 1442.78503, -1837.21277, 13.36470,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19786, 1465.69385, -1799.24512, 16.35460,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19786, 1465.71399, -1805.24976, 16.35460,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19786, 1498.84143, -1805.43384, 16.35460,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19786, 1498.80664, -1799.69324, 16.35460,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, 1480.97363, -1819.06775, 14.34600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, 1483.96570, -1819.06543, 14.34600,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19305, 1484.51318, -1819.03735, 16.04410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19898, 1432.75757, -1827.32043, 12.56340,   0.00000, 0.00000, 47.00000);
	CreateDynamicObject(19898, 1431.50720, -1810.69312, 12.56340,   0.00000, 0.00000, 326.83795);
	CreateDynamicObject(19898, 1433.37866, -1784.08813, 12.56340,   0.00000, 0.00000, 73.62094);
	CreateDynamicObject(19898, 1465.25537, -1764.64355, 12.56340,   0.00000, 0.00000, 73.62094);
	CreateDynamicObject(19898, 1452.91711, -1820.31567, 12.56340,   0.00000, 0.00000, 326.83795);
	CreateDynamicObject(922, 1477.89368, -1819.61853, 15.08540,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1502.24292, -1782.49426, 14.89060,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1502.25244, -1822.44983, 14.89060,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1514.26111, -1810.96448, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1514.22534, -1793.99805, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1473.78088, -1834.53625, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1490.71765, -1834.47473, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1450.17627, -1794.00903, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1450.19446, -1810.94714, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1490.68262, -1757.12146, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1473.73816, -1757.19788, 13.09300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1462.17029, -1782.46741, 14.89060,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 1462.21521, -1822.44531, 14.89060,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19286, 1482.24377, -1802.45654, 52.90866,   0.00000, 0.00000, 0.00000);
	new OENatpis = CreateObject(19471, 1485.6977, -1787.0045, 16.6104, 0.0000, 0.0000, 89.5690);
	SetObjectMaterialText(OENatpis, "BEOO", 0, 50, "Arial", 30, 1, -16119286, 0, 1);
	new OEZavod = CreateObject(19471, 1478.7578, -1787.0108, 16.6304, 0.0000, 0.0000, 89.5823);
	SetObjectMaterialText(OEZavod, "ALVIN", 0, 50, "Arial", 30, 1, -16119286, 0, 1);
	CreateDynamicObject(14400, 1552.52563, -1762.14624, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1550.03699, -1769.42688, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1512.56702, -1746.69470, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1497.76990, -1748.36279, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1534.87048, -1778.66101, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1541.46277, -1747.17542, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1554.19751, -1755.36841, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1525.97473, -1752.23328, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1539.40479, -1762.16211, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1527.81592, -1762.90234, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1552.08679, -1785.05505, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1524.90527, -1784.61548, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1514.34705, -1744.69275, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1512.05811, -1749.51050, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1500.40430, -1744.46851, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1497.69946, -1751.29309, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1543.11511, -1753.66711, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1537.39648, -1768.39954, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1529.81519, -1762.24377, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1524.41089, -1773.99158, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1521.57739, -1789.25220, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1527.05469, -1744.62427, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1526.44739, -1753.61902, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1555.02283, -1748.41614, 12.68670,   0.00000, 0.00000, 278.02570);
	CreateDynamicObject(14400, 1544.05310, -1746.15820, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1541.38477, -1778.81958, 12.68670,   0.00000, 0.00000, 40.62720);
	CreateDynamicObject(14400, 1550.58252, -1771.41394, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1552.01392, -1786.02673, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1540.21814, -1768.65576, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1497.58228, -1750.28650, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1522.28064, -1786.59448, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1552.90125, -1749.06677, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1527.83167, -1753.46411, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1549.51318, -1786.31860, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1530.18164, -1783.22412, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1542.29407, -1786.00671, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1553.77661, -1778.65686, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1535.07971, -1756.40784, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1550.53442, -1756.84998, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1502.00916, -1749.28674, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1523.86694, -1745.73596, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1540.70703, -1749.20691, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1526.12817, -1768.17749, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9153, 1541.69727, -1765.91394, 12.40638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1524.21912, -1817.67810, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1530.52893, -1816.62683, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1533.25244, -1818.07495, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1455.23865, -1842.11304, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1453.60547, -1843.31128, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1410.32300, -1748.56543, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1545.20081, -1816.30359, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1536.17993, -1833.02063, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1524.38708, -1830.96643, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1548.79883, -1828.66199, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1554.84326, -1816.78503, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1554.78882, -1836.40637, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1526.01599, -1844.68848, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1510.85022, -1843.88867, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1523.09949, -1829.22144, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1550.48230, -1826.68054, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1538.67896, -1830.95508, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1547.59265, -1815.43616, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1555.15833, -1837.67468, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1527.55701, -1842.34998, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1537.02368, -1829.03015, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1524.79639, -1841.15051, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1547.32178, -1837.37903, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1551.64258, -1818.90784, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1506.94995, -1845.34302, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1500.43384, -1841.45056, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1516.79419, -1842.68713, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1532.90479, -1838.83801, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1553.19031, -1824.69409, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1541.57019, -1822.58960, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1544.49536, -1832.38196, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1499.92578, -1843.03662, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1508.23938, -1842.57751, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1528.66663, -1823.97070, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9153, 1536.53174, -1826.55847, 12.40638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1403.43213, -1748.60352, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1410.08081, -1759.71863, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1461.95557, -1841.32813, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1450.69702, -1844.45508, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1430.81018, -1842.75391, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1419.81482, -1819.03809, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1406.82690, -1822.22998, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1420.66125, -1830.83533, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1409.04126, -1806.55273, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1420.51868, -1805.15540, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1415.62598, -1787.19495, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1403.94775, -1773.58081, 12.68670,   0.00000, 0.00000, 54.92595);
	CreateDynamicObject(14400, 1421.74487, -1766.57031, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1427.93359, -1747.90100, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1459.25049, -1843.38086, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1434.69055, -1842.08154, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1419.23877, -1833.45862, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1406.14795, -1820.79456, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1421.37488, -1802.54626, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1403.52612, -1776.95618, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1421.01343, -1769.36572, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1434.21973, -1844.96899, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1422.32751, -1838.81519, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1406.75049, -1828.82751, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1422.38770, -1816.85437, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1406.98511, -1808.62903, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1405.51123, -1784.88525, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1420.77698, -1787.36682, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1416.27344, -1768.35962, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1436.87805, -1844.70581, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1416.01160, -1827.12036, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1405.63440, -1836.55029, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1412.93970, -1796.39172, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1411.04651, -1809.64575, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1405.07275, -1788.63599, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1412.70227, -1746.68359, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1423.23328, -1780.40015, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1414.83545, -1766.45569, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1405.42896, -1792.25854, 12.68670,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1415.80859, -1753.53210, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1403.26709, -1750.82874, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1424.56750, -1746.85779, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1425.43103, -1750.30713, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9153, 1413.72266, -1765.92004, 12.40638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9153, 1413.93347, -1804.05078, 12.40638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9153, 1414.80078, -1841.63989, 12.40638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1412.23572, -1778.56458, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1522.67981, -1782.84705, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18271, 1539.37207, -1766.20190, 20.40749,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1505.95947, -1746.32263, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1517.71741, -1748.08423, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1553.02417, -1775.14758, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1531.34949, -1747.19116, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1551.85693, -1759.76697, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1535.54395, -1773.79749, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18271, 1534.70508, -1829.56763, 20.40749,   0.00000, 0.00000, 319.32410);
	CreateDynamicObject(767, 1526.31006, -1832.62842, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1554.27686, -1834.93213, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1533.23523, -1816.42517, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1534.07922, -1839.04810, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1541.93140, -1826.91113, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1510.93323, -1841.80042, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1496.04993, -1842.48596, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1445.22095, -1841.96692, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1457.99695, -1840.18127, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1428.05676, -1838.48804, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1423.21460, -1755.47131, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1402.68384, -1781.66772, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1418.53101, -1817.63074, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1404.58618, -1831.30713, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1423.04614, -1783.35791, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1403.48767, -1753.86169, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1410.03186, -1768.43774, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1414.31311, -1744.82520, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1418.47815, -1797.49316, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1409.78027, -1803.46033, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1402.70618, -1816.53113, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3515, 1462.48999, -1748.01001, 12.01428,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1456.67896, -1750.96838, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1305, 1468.06641, -1745.51941, 11.59802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(767, 1467.32263, -1751.34521, 11.90923,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(672, 1457.93652, -1745.15955, 13.14922,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1466.62183, -1750.37451, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(800, 1457.05029, -1750.06104, 11.90492,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1521.59814, -1770.25061, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(736, 1493.95544, -1751.22375, 23.10273,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1360, 1556.70288, -1802.19629, 13.27430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1360, 1549.14099, -1802.19775, 13.27430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1360, 1541.01880, -1802.24768, 13.27430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1360, 1531.93579, -1802.31775, 13.27430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1360, 1523.02979, -1802.33594, 13.27430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1360, 1482.25122, -1750.57874, 13.27430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1360, 1482.20825, -1744.67749, 13.27430,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1491.09192, -1844.41064, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1487.15173, -1840.45276, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1481.66772, -1845.64954, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1473.96521, -1845.80322, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1470.54871, -1841.34717, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1432, 1478.12585, -1840.34485, 12.52480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14400, 1510.64600, -1761.66174, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1511.90344, -1776.97424, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1500.94617, -1761.83081, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1502.86743, -1772.44983, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1512.08130, -1822.26001, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1510.47375, -1831.39844, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(14400, 1501.58337, -1832.28198, 12.68670,   0.00000, 0.00000, 306.98352);
	CreateDynamicObject(9833, 1506.90454, -1768.57434, 15.56967,   0.00000, 0.00000, 0.00000);
	new OEDZid202= CreateDynamicObject(19378, 1497.38879, -1742.30396, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid202, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid212= CreateDynamicObject(19378, 1507.00903, -1742.30688, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid212, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid222= CreateDynamicObject(19378, 1516.62891, -1742.30457, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid222, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid23= CreateDynamicObject(19378, 1526.25342, -1742.29883, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid23, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid24= CreateDynamicObject(19378, 1535.87000, -1742.29883, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid24, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid25= CreateDynamicObject(19378, 1545.49280, -1742.29407, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid25, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid26= CreateDynamicObject(19378, 1554.77222, -1742.29614, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid26, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid27= CreateDynamicObject(19378, 1559.54724, -1747.02478, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid27, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid28= CreateDynamicObject(19378, 1559.54065, -1756.64490, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid28, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid29= CreateDynamicObject(19378, 1559.53320, -1766.26953, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid29, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid30= CreateDynamicObject(19378, 1559.52466, -1775.88574, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid30, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid31= CreateDynamicObject(19378, 1559.52100, -1785.51184, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid31, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid32= CreateDynamicObject(19378, 1559.52454, -1787.79211, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid32, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid33= CreateDynamicObject(19378, 1559.49854, -1816.50476, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid33, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid34= CreateDynamicObject(19378, 1559.49829, -1826.13330, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid34, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid35= CreateDynamicObject(19378, 1559.50476, -1835.76074, 7.69720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid35, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid36= CreateDynamicObject(19378, 1559.49475, -1837.48608, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid36, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid37= CreateDynamicObject(19378, 1466.89795, -1742.30579, 7.69720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid37, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid38= CreateDynamicObject(19378, 1457.75696, -1742.30908, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid38, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid39= CreateDynamicObject(19378, 1427.24707, -1742.29419, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid39, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid40= CreateDynamicObject(19378, 1417.62671, -1742.29199, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid40, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid41= CreateDynamicObject(19378, 1408.00049, -1742.29053, 7.68220,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid41, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid42= CreateDynamicObject(19378, 1403.88989, -1742.29431, 7.66720,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(OEDZid42, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid43= CreateDynamicObject(19378, 1399.14917, -1747.02710, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid43, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid44= CreateDynamicObject(19378, 1399.15381, -1756.64417, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid44, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid45= CreateDynamicObject(19378, 1399.15552, -1766.26550, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid45, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid46= CreateDynamicObject(19378, 1399.15295, -1775.89636, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid46, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid47= CreateDynamicObject(19378, 1399.15417, -1785.50854, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid47, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid48= CreateDynamicObject(19378, 1399.16150, -1795.13562, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid48, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid49= CreateDynamicObject(19378, 1399.16907, -1804.76074, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid49, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid50= CreateDynamicObject(19378, 1399.16235, -1814.38550, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid50, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid51= CreateDynamicObject(19378, 1399.15503, -1824.01306, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid51, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid52= CreateDynamicObject(19378, 1399.14832, -1833.63916, 7.68220,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid52, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	new OEDZid53= CreateDynamicObject(19378, 1399.15430, -1837.47937, 7.66720,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(OEDZid53, 0, 9169, "vgslowbuild", "concpanel_la", 0xFFFFFFFF);
	 // New VIP Lounge
    CreateDynamicObject(14614,2533.68457031,1416.85351562,7705.11816406,0.00000000,0.00000000,0.00000000); //object(triad_main3) (1)
	CreateDynamicObject(14607,2533.54492188,1417.93652344,7705.11572266,0.00000000,0.00000000,359.74731445); //object(triad_main2) (2)
	CreateDynamicObject(14563,2533.70019531,1419.26757812,7705.11376953,0.00000000,0.00000000,0.00000000); //object(triad_main) (1)
	CreateDynamicObject(3533,2544.49926758,1432.28100586,7702.83007812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(3533,2544.46289062,1403.82421875,7702.83007812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(14561,2584.83007812,1417.66503906,7704.10937500,0.00000000,0.00000000,179.74731445); //object(triad_neon) (2)
	CreateDynamicObject(3533,2569.09399414,1406.85668945,7705.23632812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2569.12109375,1428.65820312,7705.23632812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(1846,2502.62304688,1391.47949219,7699.94970703,90.00000000,90.00000000,269.98901367); //object(shop_shelf04) (1)
	CreateDynamicObject(8664,2470.62500000,1449.24902344,7707.08886719,0.00000000,179.99450684,269.98901367); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(3534,2522.69213867,1427.96093750,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (1)
	CreateDynamicObject(3534,2520.36645508,1407.96240234,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (2)
	CreateDynamicObject(3534,2505.93945312,1408.00488281,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (3)
	CreateDynamicObject(3534,2507.41162109,1428.69897461,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (4)
	CreateDynamicObject(14537,2555.20019531,1417.82421875,7700.75244141,0.00000000,0.00000000,269.74731445); //object(pdomesbar) (1)
	CreateDynamicObject(1703,2561.78857422,1430.46569824,7698.58447266,0.00000000,0.00000000,0.00000000); //object(kb_couch02) (1)
	CreateDynamicObject(1703,2565.56933594,1429.20166016,7698.58447266,0.00000000,0.00000000,269.75000000); //object(kb_couch02) (2)
	CreateDynamicObject(1703,2560.29028320,1427.15185547,7698.58447266,0.00000000,0.00000000,89.49731445); //object(kb_couch02) (3)
	CreateDynamicObject(2126,2562.40576172,1427.81384277,7698.58447266,0.00000000,0.00000000,0.00000000); //object(coffee_swank_5) (1)
	CreateDynamicObject(644,2565.03710938,1431.16113281,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (1)
	CreateDynamicObject(1703,2549.62744141,1430.27490234,7698.58447266,0.00000000,0.00000000,0.00000000); //object(kb_couch02) (4)
	CreateDynamicObject(1703,2548.02905273,1427.33349609,7698.58447266,0.00000000,0.00000000,89.49462891); //object(kb_couch02) (5)
	CreateDynamicObject(1703,2553.11743164,1429.18188477,7698.58447266,0.00000000,0.00000000,269.74731445); //object(kb_couch02) (6)
	CreateDynamicObject(2126,2550.10009766,1427.68005371,7698.58447266,0.00000000,0.00000000,0.00000000); //object(coffee_swank_5) (2)
	CreateDynamicObject(2208,2556.58935547,1430.02514648,7698.58447266,0.00000000,0.00000000,269.99996948); //object(med_office7_unit_1) (1)
	CreateDynamicObject(644,2556.64257812,1432.07714844,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (3)
	CreateDynamicObject(644,2545.51367188,1430.76379395,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (4)
	CreateDynamicObject(3528,2542.58496094,1414.42236328,7707.52832031,0.00000000,0.00000000,81.75000000); //object(vgsedragon) (1)
	CreateDynamicObject(13656,2549.15917969,1425.01318359,7691.92236328,0.00000000,0.00000000,0.00000000); //object(fuckknows) (1)
	CreateDynamicObject(1702,2500.81054688,1398.09545898,7696.57470703,0.00000000,0.00000000,0.00000000); //object(kb_couch06) (1)
	CreateDynamicObject(1702,2497.05859375,1398.17089844,7696.57470703,0.00000000,0.00000000,0.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1822,2499.40185547,1397.70947266,7696.57470703,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (1)
	CreateDynamicObject(1705,2496.42871094,1395.96105957,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_chair04) (1)
	CreateDynamicObject(1702,2508.76733398,1398.05688477,7696.57470703,0.00000000,0.00000000,269.99996948); //object(kb_couch06) (3)
	CreateDynamicObject(1702,2508.77172852,1391.88793945,7696.57470703,0.00000000,0.00000000,269.99450684); //object(kb_couch06) (4)
	CreateDynamicObject(1705,2508.75927734,1394.53845215,7696.57470703,0.00000000,0.00000000,269.74996948); //object(kb_chair04) (2)
	CreateDynamicObject(2010,2496.33740234,1398.38879395,7696.60791016,0.00000000,0.00000000,0.00000000); //object(nu_plant3_ofc) (1)
	CreateDynamicObject(3528,2541.61718750,1421.13610840,7707.52832031,0.00000000,0.00000000,284.00000000); //object(vgsedragon) (1)
	CreateDynamicObject(1557,2581.77954102,1416.19738770,7700.99072266,0.00000000,0.00000000,89.75000000); //object(gen_doorext19) (1)
	CreateDynamicObject(1557,2581.77709961,1419.24938965,7700.99072266,0.00000000,0.00000000,269.74731445); //object(gen_doorext19) (2)
	CreateDynamicObject(3533,2525.58374023,1403.63500977,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2525.65917969,1433.01574707,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2502.09692383,1403.54077148,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2502.05957031,1432.68359375,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(2232,2502.62475586,1404.12939453,7701.62158203,29.99816895,0.00000000,137.49841309); //object(med_speaker_4) (2)
	CreateDynamicObject(2232,2502.66284180,1432.12524414,7701.79736328,29.99267578,0.00000000,49.99328613); //object(med_speaker_4) (3)
	CreateDynamicObject(2232,2525.13916016,1432.33178711,7703.54345703,29.98718262,0.00000000,319.73925781); //object(med_speaker_4) (4)
	CreateDynamicObject(2232,2524.96215820,1404.17626953,7703.54345703,29.98168945,0.00000000,225.48889160); //object(med_speaker_4) (5)
	CreateDynamicObject(14434,2511.20556641,1425.14147949,7706.56093750,0.00000000,0.00000000,0.00000000); //object(carter-spotlight42) (1)
	CreateDynamicObject(14434,2517.55908203,1412.60461426,7706.56103516,0.00000000,0.00000000,179.74731445); //object(carter-spotlight42) (2)
	CreateDynamicObject(2802,2496.60351562,1452.96240234,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (1)
	CreateDynamicObject(2802,2500.60888672,1455.75598145,7696.91699219,0.00000000,0.00000000,83.75000000); //object(castable1) (2)
	CreateDynamicObject(2802,2505.04809570,1455.83142090,7696.91699219,0.00000000,0.00000000,83.74877930); //object(castable1) (3)
	CreateDynamicObject(2802,2508.61010742,1453.67211914,7696.91699219,0.00000000,0.00000000,185.49877930); //object(castable1) (4)
	CreateDynamicObject(2802,2508.56738281,1444.14099121,7696.91699219,0.00000000,0.00000000,185.49865723); //object(castable1) (5)
	CreateDynamicObject(2802,2508.53784180,1439.81018066,7696.91699219,0.00000000,0.00000000,10.24865723); //object(castable1) (6)
	CreateDynamicObject(2802,2496.62451172,1448.15747070,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (7)
	CreateDynamicObject(2802,2496.67675781,1443.45410156,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (8)
	CreateDynamicObject(2802,2496.61523438,1438.70251465,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (9)
	CreateDynamicObject(2802,2500.53320312,1452.66955566,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (10)
	CreateDynamicObject(2802,2504.76513672,1452.47546387,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (11)
	CreateDynamicObject(2802,2504.43212891,1447.91577148,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (12)
	CreateDynamicObject(2802,2504.61816406,1442.34155273,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (13)
	CreateDynamicObject(2802,2500.46679688,1442.34082031,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (14)
	CreateDynamicObject(2802,2500.64111328,1447.44116211,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (15)
	CreateDynamicObject(8664,2460.33349609,1334.99987793,7705.18896484,0.00000000,179.99450684,358.98901367); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(8664,2466.37988281,1506.99414062,7705.18896484,0.00000000,179.99450684,269.98352051); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(1702,2496.41601562,1392.63623047,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2496.45556641,1388.72924805,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2496.42236328,1382.17553711,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2499.56835938,1379.86389160,7696.57470703,0.00000000,0.00000000,180.25000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2503.86328125,1379.84350586,7696.57470703,0.00000000,0.00000000,180.24719238); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2508.63720703,1379.85156250,7696.57470703,0.00000000,0.00000000,180.24719238); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2508.78320312,1384.55676270,7696.57470703,0.00000000,0.00000000,270.24722290); //object(kb_couch06) (2)
	CreateDynamicObject(1822,2495.96850586,1391.05432129,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (2)
	CreateDynamicObject(1822,2500.17749023,1379.41052246,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (4)
	CreateDynamicObject(1822,2504.73486328,1379.36376953,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (5)
	CreateDynamicObject(1822,2508.29492188,1381.23937988,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (6)
	CreateDynamicObject(2592,2502.65625000,1385.34570312,7697.48876953,0.00000000,0.00000000,0.00000000); //object(ab_slottable) (1)
	CreateDynamicObject(14391,2518.39965820,1395.66064453,7697.63281250,0.00000000,0.00000000,137.75000000); //object(dr_gsnew07) (1)
	CreateDynamicObject(2773,2513.80834961,1391.35119629,7697.49023438,0.00000000,0.00000000,287.00000000); //object(cj_airprt_bar) (1)
	CreateDynamicObject(2773,2511.01782227,1390.83972168,7697.49023438,0.00000000,0.00000000,273.74584961); //object(cj_airprt_bar) (2)
	CreateDynamicObject(2773,2511.01586914,1398.82482910,7697.49023438,0.00000000,0.00000000,285.49584961); //object(cj_airprt_bar) (3)
	CreateDynamicObject(2773,2513.54321289,1400.46667480,7697.47998047,0.00000000,0.00000000,322.49072266); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,2514.37133789,1402.14062500,7697.49023438,0.00000000,0.00000000,345.23721313); //object(cj_airprt_bar) (5)
	CreateDynamicObject(2773,2516.00585938,1403.10449219,7697.49023438,0.00000000,358.50000000,270.74584961); //object(cj_airprt_bar) (6)
	CreateDynamicObject(2773,2518.39916992,1403.09533691,7697.49023438,0.00000000,358.49487305,269.99157715); //object(cj_airprt_bar) (7)
	CreateDynamicObject(2773,2521.51806641,1403.08837891,7697.49023438,0.00000000,358.49487305,269.98901367); //object(cj_airprt_bar) (8)
	CreateDynamicObject(2773,2522.30200195,1401.77014160,7697.49023438,0.00000000,358.49487305,173.23901367); //object(cj_airprt_bar) (9)
	CreateDynamicObject(2773,2521.81201172,1399.49047852,7697.49023438,0.00000000,358.49487305,163.23791504); //object(cj_airprt_bar) (10)
	CreateDynamicObject(1541,2503.42236328,1385.51770020,7698.08593750,0.00000000,0.00000000,179.75000000); //object(cj_beer_taps_1) (1)
	CreateDynamicObject(1545,2501.91772461,1385.48803711,7698.16455078,0.00000000,0.00000000,0.00000000); //object(cj_b_optic1) (1)
	CreateDynamicObject(14562,2487.84570312,1418.30541992,7699.85156250,0.00000000,0.00000000,0.00000000); //object(triad_lion) (1)
	CreateDynamicObject(16101,2517.80395508,1435.93750000,7696.97753906,0.00000000,0.00000000,0.00000000); //object(des_windsockpole) (1)
	CreateDynamicObject(3533,2511.56665039,1388.92163086,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(1703,2533.08276367,1399.54919434,7696.58251953,0.00000000,0.00000000,259.00000000); //object(kb_couch02) (7)
	CreateDynamicObject(1703,2529.77880859,1391.14709473,7696.58251953,0.00000000,0.00000000,234.99719238); //object(kb_couch02) (8)
	CreateDynamicObject(1753,2518.78100586,1441.38500977,7696.97753906,0.00000000,0.49987793,308.24658203); //object(swank_couch_1) (3)
	CreateDynamicObject(1753,2521.59692383,1436.83740234,7696.97753906,0.00000000,0.49987793,283.99334717); //object(swank_couch_1) (4)
	CreateDynamicObject(14809,2514.50146484,1439.01867676,7698.00341797,0.00000000,0.00000000,269.75000000); //object(strip2_platforms) (1)
	CreateDynamicObject(16101,2517.80371094,1435.93750000,7705.97753906,0.00000000,180.00000000,0.00000000); //object(des_windsockpole) (3)
	CreateDynamicObject(2004,2547.08203125,1402.87194824,7700.60693359,0.00000000,0.00000000,180.75000000); //object(cr_safe_door) (1)
	CreateDynamicObject(18648,2574.30322266,1430.06726074,7705.38964844,0.00000000,0.00000000,90.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18648,2574.33300781,1405.45104980,7705.39013672,0.00000000,0.00000000,90.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2523.20751953,1431.59301758,7696.54589844,0.00000000,0.00000000,50.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2502.90087891,1404.33312988,7696.14160156,0.00000000,0.00000000,210.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2523.31250000,1404.46948242,7696.14160156,0.00000000,0.00000000,310.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(18655,2502.92797852,1431.71264648,7696.14599609,0.00000000,0.00000000,150.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18648,2514.53857422,1431.92138672,7706.11523438,0.00000000,0.00000000,264.49768066); //object(whiten) (1)
	CreateDynamicObject(18648,2502.94531250,1418.95727539,7705.86865234,0.00000000,0.00000000,358.25000000); //object(whiten) (1)
	CreateDynamicObject(18648,2512.54833984,1404.22753906,7706.46093750,0.00000000,0.00000000,88.24768066); //object(pinkn) (1)
	CreateDynamicObject(18648,2524.80029297,1417.05432129,7705.85693359,0.00000000,0.00000000,175.49768066); //object(pinkn) (1)
	CreateDynamicObject(19129,2513.15600586,1418.46594238,7696.64794922,0.00000000,0.00000000,0.00000000); //object(dancefloor) (1)
	CreateDynamicObject(18885,2561.32519531,1403.24609375,7699.56640625,0.00000000,0.00000000,179.50000000); //object(gunlocker) (1)
	CreateDynamicObject(14782,2555.62255859,1403.19152832,7699.47363281,0.00000000,0.00000000,179.49462891); //object(pdomesbar) (1)
	CreateDynamicObject(18885,2549.56079102,1403.30615234,7699.56640625,0.00000000,0.00000000,179.49462891); //object(gunlocker) (1)
	CreateDynamicObject(18646,2524.76708984,1404.45544434,7706.96542969,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2524.73706055,1431.57739258,7706.96777344,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2503.03784180,1431.67236328,7706.96777344,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2503.04516602,1404.47290039,7706.96337891,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2555.37280273,1413.67517090,7702.10400391,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2555.36938477,1421.85681152,7702.10400391,0.00000000,0.00000000,0.00000000); //object(pd light) (2)

	// Gold+ VIP room
	CreateDynamicObject(8378,2783.24511719,2408.79687500,1238.85534668,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(8378,2783.02050781,2398.24707031,1238.85534668,90.00000000,179.99450684,179.98352051); //object(vgsbighngrdoor)(2)
	CreateDynamicObject(14639,2791.74658203,2411.67407227,1240.83117676,0.00000000,0.00000000,0.00000000); //object(tr_man_main)(1)
	CreateDynamicObject(2367,2785.66162109,2401.78881836,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(1)
	CreateDynamicObject(2367,2785.66015625,2403.74072266,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(2)
	CreateDynamicObject(2367,2785.73339844,2406.03417969,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(3)
	CreateDynamicObject(2367,2785.35498047,2408.48022461,1239.50109863,0.00000000,0.00000000,146.25000000); //object(shop_counter_2)(4)
	CreateDynamicObject(2367,2788.91699219,2412.19091797,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(6)
	CreateDynamicObject(2367,2789.62158203,2411.74365234,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(8)
	CreateDynamicObject(2367,2791.66015625,2411.77294922,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(9)
	CreateDynamicObject(2367,2793.50781250,2411.80859375,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(10)
	CreateDynamicObject(3037,2808.32519531,2394.46289062,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2792.66015625,2412.26855469,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(3037,2785.11450195,2404.68090820,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(4)
	CreateDynamicObject(3037,2785.14282227,2404.30737305,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(5)
	CreateDynamicObject(3037,2783.94091797,2394.24291992,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(6)
	CreateDynamicObject(3037,2784.58911133,2402.62988281,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(7)
	CreateDynamicObject(3037,2780.07910156,2390.04443359,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(10)
	CreateDynamicObject(3037,2784.13867188,2389.07861328,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(11)
	CreateDynamicObject(3037,2785.13769531,2388.53100586,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(12)
	CreateDynamicObject(3037,2790.27709961,2388.36987305,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(13)
	CreateDynamicObject(3037,2802.30566406,2389.04101562,1238.80969238,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(14)
	CreateDynamicObject(3037,2811.39453125,2389.04101562,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(15)
	CreateDynamicObject(3037,2802.09179688,2389.01464844,1245.81933594,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(16)
	CreateDynamicObject(1557,2794.23217773,2388.58007812,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gen_doorext19)(1)
	CreateDynamicObject(1557,2794.23144531,2388.58007812,1242.03112793,0.00000000,0.00000000,0.00000000); //object(gen_doorext19)(3)
	CreateDynamicObject(3037,2800.37792969,2389.03662109,1238.80969238,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(14)
	CreateDynamicObject(3037,2808.22973633,2402.06494141,1241.72961426,0.00000000,0.00000000,5.50000000); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2808.18774414,2403.19165039,1241.72961426,0.00000000,0.00000000,15.49865723); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2807.62158203,2405.21508789,1241.72961426,0.00000000,0.00000000,28.49621582); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2806.19482422,2407.65747070,1241.72961426,0.00000000,0.00000000,39.49304199); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2805.01196289,2409.15185547,1241.72961426,0.00000000,0.00000000,51.49035645); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2802.00463867,2411.15405273,1241.72961426,0.00000000,0.00000000,67.98742676); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2802.19604492,2412.18774414,1241.72961426,0.00000000,0.00000000,89.00000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(8378,2797.67089844,2398.59960938,1245.84448242,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(8378,2799.55175781,2411.31054688,1245.84448242,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(2367,2797.02856445,2411.85937500,1239.40112305,0.00000000,0.00000000,356.50000000); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2798.89013672,2411.65283203,1239.40112305,0.00000000,0.00000000,346.74536133); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2799.80737305,2411.35571289,1239.40112305,0.00000000,0.00000000,342.99499512); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2801.32983398,2410.95849609,1239.40112305,0.00000000,0.00000000,331.49316406); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2803.54150391,2409.68872070,1239.40112305,0.00000000,0.00000000,319.24047852); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2805.15649414,2408.32348633,1239.40112305,0.00000000,0.00000000,302.48522949); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2806.10351562,2406.79370117,1239.40112305,0.00000000,0.00000000,298.23107910); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.07128906,2404.81079102,1239.40112305,0.00000000,0.00000000,286.97937012); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.68261719,2402.74438477,1239.40112305,0.00000000,0.00000000,275.97937012); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.76220703,2401.86279297,1239.40112305,0.00000000,0.00000000,271.47656250); //object(shop_counter_2)(10)
	CreateDynamicObject(3854,2807.60595703,2400.44873047,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(1)
	CreateDynamicObject(3854,2807.54174805,2400.96850586,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(2)
	CreateDynamicObject(3854,2807.66699219,2400.67333984,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(3)
	CreateDynamicObject(3854,2808.34960938,2400.29492188,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(4)
	CreateDynamicObject(3854,2807.98095703,2400.43408203,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(5)
	CreateDynamicObject(3854,2808.13964844,2400.99804688,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(6)
	CreateDynamicObject(1557,2785.17285156,2388.63671875,1242.03112793,0.00000000,0.00000000,90.24853516); //object(gen_doorext19)(5)
	CreateDynamicObject(1557,2785.15771484,2388.64892578,1239.53112793,0.00000000,0.00000000,89.99853516); //object(gen_doorext19)(6)
	CreateDynamicObject(3037,2788.37548828,2413.18457031,1241.72961426,0.00000000,0.00000000,126.50000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(3037,2785.93969727,2411.70190430,1241.72961426,0.00000000,0.00000000,151.24658203); //object(warehouse_door2b)(2)
	CreateDynamicObject(3854,2797.07617188,2411.26171875,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(7)
	CreateDynamicObject(3854,2796.77734375,2411.25292969,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(8)
	CreateDynamicObject(3854,2796.40234375,2411.26660156,1239.53112793,0.00000000,0.00000000,313.74206543); //object(gay_telgrphpole)(9)
	CreateDynamicObject(3854,2796.39794922,2412.05029297,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(10)
	CreateDynamicObject(3854,2796.39697266,2411.70947266,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(11)
	CreateDynamicObject(3854,2797.14160156,2411.71044922,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(12)
	CreateDynamicObject(3854,2797.07104492,2412.25317383,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(13)
	CreateDynamicObject(4028,2772.93994141,2325.31835938,1240.77282715,0.00000000,0.00000000,126.00000000); //object(lanstap)(2)
	CreateDynamicObject(4033,2714.31811523,2331.49536133,1226.63452148,0.00000000,0.00000000,0.00000000); //object(fightplaza1_lan)(1)
	CreateDynamicObject(4141,2714.29467773,2316.75903320,1244.14880371,0.00000000,0.00000000,0.00000000); //object(hotelexterior1_lan)(1)
	CreateDynamicObject(5408,2865.92114258,2292.19921875,1248.68542480,0.00000000,0.00000000,0.00000000); //object(laeexaminerbuild1)(1)
	CreateDynamicObject(5476,2875.73803711,2399.84887695,1234.00378418,0.00000000,0.00000000,0.00000000); //object(laeidleproj01)(2)
	CreateDynamicObject(4019,2772.02539062,2201.21777344,1226.07568359,0.00000000,0.00000000,0.00000000); //object(newbuildsm01)(1)
	CreateDynamicObject(4079,2799.79101562,2407.20996094,1242.81372070,0.00000000,0.00000000,267.99499512); //object(twintjail1_lan)(1)
	CreateDynamicObject(3984,2775.56787109,2327.20361328,1237.12023926,0.00000000,0.00000000,0.00000000); //object(churchprog1_lan)(1)
	CreateDynamicObject(4000,2779.60498047,2408.78369141,1225.83374023,0.00000000,0.00000000,0.00000000); //object(twintjail2_lan)(1)
	CreateDynamicObject(5474,2924.07031250,2396.92065430,1226.15185547,0.00000000,0.00000000,0.00000000); //object(laeidlewood02)(1)
	CreateDynamicObject(4156,2732.26074219,2372.28515625,1226.30834961,0.00000000,0.00000000,0.00000000); //object(roads17_lan)(2)
	// CreateDynamicObject(5441,1902.77539062,-1581.88366699,33.49028778,0.00000000,0.00000000,0.00000000); //object(laeroad12)(2)
	CreateDynamicObject(4125,2758.75415039,2468.06909180,1231.06738281,0.00000000,0.00000000,0.00000000); //object(gsfreeway1_lan)(1)
	CreateDynamicObject(6123,2741.86816406,2274.62622070,1226.15930176,0.00000000,0.00000000,0.00000000); //object(lawroads_law17)(2)
	CreateDynamicObject(6121,2814.07568359,2352.91967773,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(1)
	CreateDynamicObject(6117,2862.17993164,2362.10473633,1226.35290527,0.00000000,0.00000000,0.00000000); //object(lawroads_law11)(1)
	CreateDynamicObject(6121,2816.98437500,2430.84741211,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(2)
	CreateDynamicObject(4079,2755.83789062,2405.47851562,1242.71362305,0.00000000,0.00000000,87.98950195); //object(twintjail1_lan)(1)
	CreateDynamicObject(6121,2814.03857422,2213.08740234,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(4)
	CreateDynamicObject(6117,2813.95507812,2274.86523438,1226.35290527,0.00000000,0.00000000,270.00000000); //object(lawroads_law11)(3)
	CreateDynamicObject(6117,2861.88159180,2222.50488281,1226.35290527,0.00000000,0.00000000,180.00000000); //object(lawroads_law11)(4)
	CreateDynamicObject(6117,2770.79345703,2242.87500000,1226.35290527,0.00000000,0.00000000,179.99450684); //object(lawroads_law11)(5)
	CreateDynamicObject(4027,2775.59765625,2272.69677734,1228.29064941,0.00000000,0.00000000,0.00000000); //object(langrasspatch)(1)
	CreateDynamicObject(4018,2784.31054688,2258.12451172,1226.47509766,0.00000000,0.00000000,0.00000000); //object(newbuildsm02)(1)
	CreateDynamicObject(5725,2854.03125000,2207.83813477,1235.39550781,0.00000000,0.00000000,0.00000000); //object(holpacific2_law)(1)
	CreateDynamicObject(5725,2833.26318359,2168.41357422,1235.39550781,0.00000000,0.00000000,0.00000000); //object(holpacific2_law)(2)
	CreateDynamicObject(5725,2828.74462891,2174.39013672,1235.39550781,0.00000000,0.00000000,90.00000000); //object(holpacific2_law)(3)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(5)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(6)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(7)
	CreateDynamicObject(18090,2791.54980469,2410.13671875,1242.09448242,0.00000000,0.00000000,90.00000000); //object(bar_bar1)(1)
	CreateDynamicObject(1649,2784.57153320,2405.92651367,1242.09692383,270.00000000,180.00000000,89.99923706); //object(wglasssmash)(1)
	CreateDynamicObject(1649,2784.56396484,2403.42846680,1242.09692383,270.00000000,179.99450684,89.99450684); //object(wglasssmash)(2)
	CreateDynamicObject(1518,2785.08325195,2407.61010742,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(1)
	CreateDynamicObject(1518,2785.10742188,2404.98974609,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(2)
	CreateDynamicObject(1518,2785.08471680,2401.91406250,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(3)
	CreateDynamicObject(1716,2795.83032227,2408.04321289,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(1)
	CreateDynamicObject(1716,2794.69970703,2408.02954102,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(2)
	CreateDynamicObject(1716,2793.31811523,2407.98242188,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(3)
	CreateDynamicObject(1716,2791.84155273,2407.92749023,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(4)
	CreateDynamicObject(1716,2790.09545898,2407.87158203,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(5)
	CreateDynamicObject(1716,2787.36865234,2408.00561523,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(6)
	CreateDynamicObject(1716,2787.41064453,2406.68554688,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(7)
	CreateDynamicObject(1716,2787.36914062,2405.31640625,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(8)
	CreateDynamicObject(1716,2787.37963867,2403.93701172,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(9)
	CreateDynamicObject(1716,2787.32519531,2402.48437500,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(10)
	CreateDynamicObject(1665,2785.61328125,2407.02905273,1240.56286621,0.00000000,0.00000000,0.00000000); //object(propashtray1)(1)
	CreateDynamicObject(1665,2785.98754883,2404.33642578,1240.56286621,0.00000000,0.00000000,0.00000000); //object(propashtray1)(2)
	CreateDynamicObject(1665,2786.06811523,2401.39111328,1240.56286621,0.00000000,0.00000000,138.00000000); //object(propashtray1)(3)
	CreateDynamicObject(1548,2785.28466797,2406.21289062,1240.55468750,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(1)
	CreateDynamicObject(1548,2785.26513672,2402.81811523,1240.55468750,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(2)
	CreateDynamicObject(1551,2785.50585938,2407.99951172,1240.78259277,0.00000000,0.00000000,0.00000000); //object(dyn_wine_big)(1)
	CreateDynamicObject(1543,2785.77758789,2402.04467773,1240.54235840,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(1)
	CreateDynamicObject(1703,2799.90625000,2390.71191406,1239.49047852,0.00000000,0.00000000,179.99450684); //object(swank_couch_1)(1)
	CreateDynamicObject(1703,2796.70312500,2391.98242188,1239.49047852,0.00000000,0.00000000,90.00000000); //object(swank_couch_1)(2)
	CreateDynamicObject(1703,2796.70312500,2395.75585938,1239.49047852,0.00000000,0.00000000,90.00000000); //object(swank_couch_1)(3)
	CreateDynamicObject(1703,2798.08496094,2398.72656250,1239.49047852,0.00000000,0.00000000,0.00000000); //object(swank_couch_1)(4)
	CreateDynamicObject(1703,2805.83886719,2390.66210938,1239.49047852,0.00000000,0.00000000,179.99450684); //object(swank_couch_1)(5)
	CreateDynamicObject(1703,2803.88378906,2398.74121094,1239.49047852,0.00000000,0.00000000,0.00000000); //object(swank_couch_1)(6)
	CreateDynamicObject(3533,2795.77441406,2399.73144531,1243.77673340,0.00000000,0.00000000,0.00000000); //object(trdpillar01)(1)
	CreateDynamicObject(2236,2801.35351562,2390.20043945,1239.53112793,0.00000000,0.00000000,0.00000000); //object(coffee_swank_1)(1)
	CreateDynamicObject(2236,2798.57568359,2396.62695312,1239.53112793,0.00000000,0.00000000,0.00000000); //object(coffee_swank_1)(2)
	CreateDynamicObject(2236,2797.61718750,2393.25244141,1239.53112793,0.00000000,0.00000000,270.25000000); //object(coffee_swank_1)(3)
	CreateDynamicObject(1649,2799.71655273,2388.99877930,1242.13415527,0.00000000,0.00000000,180.00000000); //object(wglasssmash)(1)
	CreateDynamicObject(1649,2804.10473633,2388.99975586,1242.13415527,0.00000000,0.00000000,179.99450684); //object(wglasssmash)(2)
	CreateDynamicObject(2898,2804.73120117,2389.10864258,1241.96386719,359.75000000,89.98983765,270.00000000); //object(funturf_law)(4)
	CreateDynamicObject(2898,2799.32568359,2389.11669922,1241.96386719,359.74731445,89.98901367,269.99450684); //object(funturf_law)(5)
	CreateDynamicObject(2755,2795.38403320,2391.57495117,1241.26257324,0.00000000,0.00000000,269.99996948); //object(dojo_wall)(1)
	CreateDynamicObject(2755,2795.41625977,2397.44750977,1241.26257324,0.00000000,0.00000000,269.99450684); //object(dojo_wall)(2)
	CreateDynamicObject(2755,2798.25195312,2400.01684570,1241.26257324,0.00000000,0.00000000,179.99450684); //object(dojo_wall)(3)
	CreateDynamicObject(2755,2805.85229492,2400.03076172,1241.26257324,0.00000000,0.00000000,179.99450684); //object(dojo_wall)(4)
	CreateDynamicObject(2395,2795.35937500,2398.84057617,1242.23107910,0.00000000,90.00000000,269.99890137); //object(cj_sports_wall)(1)
	CreateDynamicObject(2395,2795.47705078,2396.08935547,1242.23107910,0.00000000,90.00000000,89.99203491); //object(cj_sports_wall)(2)
	CreateDynamicObject(2395,2795.33642578,2392.94360352,1242.23107910,0.00000000,90.00000000,269.99450684); //object(cj_sports_wall)(3)
	CreateDynamicObject(2395,2795.44580078,2390.18725586,1242.23107910,0.00000000,90.00000000,89.98901367); //object(cj_sports_wall)(4)
	CreateDynamicObject(3533,2795.41381836,2389.39672852,1243.77673340,0.00000000,0.00000000,0.00000000); //object(trdpillar01)(1)
	CreateDynamicObject(2395,2796.85400391,2399.93212891,1242.23107910,0.00000000,90.00000000,0.00000000); //object(cj_sports_wall)(5)
	CreateDynamicObject(2395,2799.59814453,2400.07226562,1242.23107910,0.00000000,90.00000000,180.00000000); //object(cj_sports_wall)(6)
	CreateDynamicObject(2395,2807.31396484,2400.06567383,1242.23107910,0.00000000,90.00000000,179.99450684); //object(cj_sports_wall)(7)
	CreateDynamicObject(2395,2804.48632812,2399.96484375,1242.23107910,0.00000000,90.00000000,0.00000000); //object(cj_sports_wall)(10)
	CreateDynamicObject(2231,2808.53466797,2392.17211914,1242.00842285,0.00000000,0.00000000,270.25000000); //object(swank_speaker_3)(1)
	CreateDynamicObject(2231,2808.43090820,2396.36840820,1242.00842285,0.00000000,0.00000000,270.24719238); //object(swank_speaker_3)(2)
	CreateDynamicObject(2230,2808.45214844,2394.35937500,1239.53112793,0.00000000,90.00000000,270.00000000); //object(swank_speaker_2)(1)
	CreateDynamicObject(2230,2808.45776367,2394.35888672,1240.13110352,180.00000000,90.00000000,90.00549316); //object(swank_speaker_2)(2)
	CreateDynamicObject(2230,2808.08081055,2388.95214844,1239.53112793,0.00000000,0.00000000,231.99998474); //object(swank_speaker_2)(3)
	CreateDynamicObject(2230,2808.41748047,2400.06494141,1239.53112793,0.00000000,0.00000000,325.99832153); //object(swank_speaker_2)(4)
	CreateDynamicObject(1670,2798.70971680,2397.14965820,1240.05664062,0.00000000,0.00000000,81.75000000); //object(propcollecttable)(1)
	CreateDynamicObject(1670,2798.24169922,2392.70068359,1240.05664062,0.00000000,0.00000000,81.74926758); //object(propcollecttable)(2)
	CreateDynamicObject(1235,2795.78417969,2411.50341797,1240.03417969,0.00000000,0.00000000,0.00000000); //object(wastebin)(1)
	CreateDynamicObject(2109,2803.70239258,2403.28247070,1239.92224121,0.00000000,0.00000000,0.00000000); //object(low_dinning_3)(1)
	CreateDynamicObject(1704,2803.28930664,2405.13476562,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_chair03)(1)
	CreateDynamicObject(1704,2805.60058594,2403.64990234,1239.53112793,0.00000000,0.00000000,270.50000000); //object(kb_chair03)(2)
	CreateDynamicObject(1704,2804.23046875,2401.51000977,1239.53112793,0.00000000,0.00000000,179.24987793); //object(kb_chair03)(3)
	CreateDynamicObject(1704,2801.83837891,2402.81372070,1239.53112793,0.00000000,0.00000000,89.74740601); //object(kb_chair03)(4)
	CreateDynamicObject(1704,2797.39550781,2404.42773438,1239.53112793,0.00000000,0.00000000,358.25000000); //object(kb_chair03)(5)
	CreateDynamicObject(1704,2798.16625977,2400.81250000,1239.53112793,0.00000000,0.00000000,179.24743652); //object(kb_chair03)(6)
	CreateDynamicObject(2109,2797.77148438,2402.70410156,1239.92224121,0.00000000,0.00000000,0.00000000); //object(low_dinning_3)(2)
	CreateDynamicObject(1704,2798.51025391,2409.59643555,1239.53112793,0.00000000,0.00000000,80.75000000); //object(kb_chair03)(7)
	CreateDynamicObject(1704,2802.27539062,2409.52099609,1239.53112793,0.00000000,0.00000000,254.99987793); //object(kb_chair03)(8)
	CreateDynamicObject(2109,2800.38696289,2409.66967773,1239.92224121,0.00000000,0.00000000,356.25000000); //object(low_dinning_3)(3)
	CreateDynamicObject(2800,2800.28247070,2409.56176758,1240.14521484,0.00000000,0.00000000,0.00000000); //object(castable2top)(1)
	CreateDynamicObject(2894,2803.68530273,2403.32006836,1240.34521484,0.00000000,0.00000000,0.00000000); //object(kmb_rhymesbook)(1)
	CreateDynamicObject(1543,2794.46435547,2411.56835938,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(1)
	CreateDynamicObject(1543,2794.36425781,2411.56445312,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(2)
	CreateDynamicObject(1543,2794.26464844,2411.56054688,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(4)
	CreateDynamicObject(1543,2794.16503906,2411.55664062,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(5)
	CreateDynamicObject(1543,2794.06542969,2411.55273438,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(6)
	CreateDynamicObject(1543,2793.96679688,2411.52392578,1241.20043945,0.00000000,0.00000000,44.00000000); //object(cj_beer_b_2)(7)
	CreateDynamicObject(1517,2792.72436523,2411.60913086,1240.91137695,0.00000000,0.00000000,96.00000000); //object(dyn_wine_break)(1)
	CreateDynamicObject(1517,2790.34960938,2411.65405273,1240.91137695,0.00000000,0.00000000,95.99853516); //object(dyn_wine_break)(2)
	CreateDynamicObject(1517,2791.64892578,2411.62329102,1240.91137695,0.00000000,0.00000000,95.99853516); //object(dyn_wine_break)(3)
	CreateDynamicObject(1520,2792.24121094,2411.63623047,1240.76379395,0.00000000,0.00000000,268.25003052); //object(dyn_wine_bounce)(1)
	CreateDynamicObject(1520,2790.91162109,2411.68750000,1240.76379395,0.00000000,0.00000000,268.24768066); //object(dyn_wine_bounce)(2)
	CreateDynamicObject(1664,2789.24487305,2411.44165039,1241.37060547,0.00000000,0.00000000,76.00000000); //object(propwinebotl2)(1)
	CreateDynamicObject(1664,2789.08227539,2411.49707031,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(4)
	CreateDynamicObject(1664,2788.92797852,2411.48291016,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(5)
	CreateDynamicObject(1664,2788.76953125,2411.46923828,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(6)
	CreateDynamicObject(1667,2797.80859375,2403.21606445,1240.43383789,0.00000000,0.00000000,0.00000000); //object(propwineglass1)(1)
	CreateDynamicObject(1667,2797.75976562,2402.12622070,1240.43383789,0.00000000,0.00000000,0.00000000); //object(propwineglass1)(2)
	CreateDynamicObject(1543,2795.78393555,2408.86035156,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(8)
	CreateDynamicObject(1543,2793.28173828,2408.84179688,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(9)
	CreateDynamicObject(1543,2788.47802734,2408.77514648,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(10)
	CreateDynamicObject(1544,2789.54907227,2408.86914062,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_1)(1)
	CreateDynamicObject(1544,2790.39624023,2408.71533203,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_1)(2)
	CreateDynamicObject(1546,2794.76269531,2408.80566406,1240.66760254,0.00000000,0.00000000,0.00000000); //object(cj_pint_glass)(1)
	CreateDynamicObject(1548,2791.97314453,2408.82666016,1240.59082031,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(1)
	CreateDynamicObject(1548,2794.80249023,2408.82958984,1240.59082031,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(2)
	CreateDynamicObject(18650,2795.71875000,2411.61718750,1244.20742187,0.00000000,0.00000000,0.00000000); //object(gneon)(1)
	CreateDynamicObject(18650,2807.28515625,2399.69921875,1244.20739746,0.00000000,0.00000000,271.49963379); //object(gneon)(4)
	CreateDynamicObject(18885,2787.13037109,2389.61181641,1240.66625977,0.00000000,0.00000000,179.98596191); //object(locker)(4)
    // VIP Garage
	CreateObject(10010,-4398.91894531,871.42370605,985.81781006,0.00000000,0.00000000,356.03002930); //object(ugcarpark_sfe) (1)
	CreateDynamicObject(7891,-4432.70019531,906.73614502,988.49066162,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (2)
	CreateDynamicObject(7891,-4425.47021484,906.73535156,988.49066162,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (4)
	CreateDynamicObject(7891,-4432.70019531,906.73535156,993.03997803,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (5)
	CreateDynamicObject(7891,-4425.46972656,906.73535156,993.03997803,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (6)
	  //New Hospital Interior
	CreateDynamicObject(18030, 1174.7900390625, -1343.57421875, 2424.4133300781, 0, 0, 0);
	CreateDynamicObject(14466, 1214.5484619141, -1360.7130126953, 2432.2053222656, 0, 0, 270.5);
	CreateDynamicObject(7191, 1191.828125, -1351.0107421875, 2421.6208496094, 0, 270, 0);
	CreateDynamicObject(14782, 1187.7976074219, -1353.7375488281, 2423.0622558594, 0, 0, 90.5);
	CreateDynamicObject(1523, 1190.55078125, -1350.01953125, 2422.2648925781, 0, 0, 180.24719238281);
	CreateDynamicObject(18070, 1169.6414794922, -1345.1927490234, 2422.5458984375, 0, 0, 0);
	CreateDynamicObject(4724, 1158.5886230469, -1353.6053466797, 2423.7512207031, 0, 0, 0.25);
	CreateDynamicObject(2001, 1163.2530517578, -1355.927734375, 2422.0461425781, 0, 0, 0);
	CreateDynamicObject(932, 1185.4672851563, -1355.8714599609, 2422.0461425781, 0, 0, 272.5);
	CreateDynamicObject(932, 1183.7150878906, -1355.9479980469, 2422.0461425781, 0, 0, 272.49938964844);
	CreateDynamicObject(932, 1182.11328125, -1355.9810791016, 2422.0461425781, 0, 0, 272.49938964844);
	CreateDynamicObject(932, 1180.4866943359, -1355.9487304688, 2422.0461425781, 0, 0, 272.49938964844);
	CreateDynamicObject(1557, 1168.1516113281, -1357.0413818359, 2422.0461425781, 0, 0, 359.5);
	CreateDynamicObject(1557, 1171.1590576172, -1357.0489501953, 2422.0461425781, 0, 0, 180);
	CreateDynamicObject(2596, 1156.7939453125, -1348.4765625, 2425.3452148438, 0, 0, 0);
	CreateDynamicObject(2596, 1163.4686279297, -1354.6719970703, 2425.3083496094, 0, 0, 270.25);
	CreateDynamicObject(2773, 1185.4097900391, -1354.6234130859, 2422.5634765625, 0, 0, 90.25);
	CreateDynamicObject(2773, 1183.4921875, -1354.6352539063, 2422.5634765625, 0, 0, 90.247192382813);
	CreateDynamicObject(2773, 1181.576171875, -1354.6499023438, 2422.5634765625, 0, 0, 90.247192382813);
	CreateDynamicObject(2190, 1168.4984130859, -1346.9685058594, 2423.0561523438, 0, 0.25, 182.75);
	CreateDynamicObject(2190, 1170.7844238281, -1346.9844970703, 2423.0561523438, 0, 0.2471923828125, 182.74658203125);
	CreateDynamicObject(1663, 1170.712890625, -1345.3366699219, 2422.5063476563, 0, 0, 17.25);
	CreateDynamicObject(1663, 1168.3572998047, -1345.3454589844, 2422.5063476563, 0, 0, 355.99853515625);
	CreateDynamicObject(2894, 1169.7390136719, -1347.2918701172, 2423.0561523438, 0, 0, 0);
	CreateDynamicObject(7930, 1189.5693359375, -1345.9460449219, 2423.5441894531, 90, 180.0054931640600549316406, 269.98352050781);
	CreateDynamicObject(3962, 1156.3192138672, -1357.0517578125, 2424.2602539063, 0, 0, 268.5);
	CreateDynamicObject(2257, 1152.9465332031, -1351.5755615234, 2424.3505859375, 0, 180, 89.999969482422);
	CreateDynamicObject(2243, 1166.4963378906, -1348.0822753906, 2422.3195800781, 0, 0, 0);
	CreateDynamicObject(2243, 1172.7916259766, -1347.9880371094, 2422.3195800781, 0, 0, 0);
	CreateDynamicObject(2954, 1190.2352294922, -1346.0294189453, 2422.0461425781, 0, 0, 270.5);
	CreateDynamicObject(1726, 1155.638671875, -1348.72265625, 2422.0461425781, 0, 0, 0.25);
	CreateDynamicObject(1726, 1153.4948730469, -1352.5561523438, 2422.0461425781, 0, 0, 89.997192382813);
	CreateDynamicObject(1726, 1157.3165283203, -1355.7957763672, 2422.0461425781, 0, 0, 179.99450683594);
	CreateDynamicObject(1727, 1154.0897216797, -1354.7977294922, 2422.0461425781, 0, 0, 123);
	CreateDynamicObject(1727, 1153.9633789063, -1349.6390380859, 2422.0461425781, 0, 0, 44.997436523438);
	CreateDynamicObject(1727, 1162.5498046875, -1354.5593261719, 2422.0461425781, 0, 0, 220.99743652344);
	CreateDynamicObject(7191, 1157.6741943359, -1339.1177978516, 2424.0207519531, 0, 0, 270);
	CreateDynamicObject(7191, 1157.6701660156, -1338.3753662109, 2424.0207519531, 0, 0, 270);
	CreateDynamicObject(1776, 1153.2979736328, -1343.3521728516, 2423.1455078125, 0, 0, 90.75);
	CreateDynamicObject(1209, 1153.2958984375, -1346.2855224609, 2422.0461425781, 0, 0, 90.5);
	CreateDynamicObject(7191, 1167.7000732422, -1313.4320068359, 2427.9807128906, 0, 0, 180);
	CreateDynamicObject(7191, 1191.1739501953, -1335.5490722656, 2424.0207519531, 0, 0, 90);
	CreateDynamicObject(7191, 1167.69921875, -1313.431640625, 2424.0207519531, 0, 0, 179.99450683594);
	CreateDynamicObject(7191, 1191.173828125, -1335.548828125, 2427.9807128906, 0, 0, 90);
	CreateDynamicObject(2603, 1154.3084716797, -1331.0260009766, 2422.4995117188, 0, 0, 0);
	CreateDynamicObject(2603, 1157.8651123047, -1331.033203125, 2422.4995117188, 0, 0, 0);
	CreateDynamicObject(2603, 1162.1901855469, -1330.9475097656, 2422.4995117188, 0, 0, 0);
	CreateDynamicObject(2603, 1165.8120117188, -1330.8693847656, 2422.4995117188, 0, 0, 0);
	CreateDynamicObject(2596, 1156.2908935547, -1337.9664306641, 2424.7763671875, 0, 0, 179.25);
	CreateDynamicObject(2596, 1163.3677978516, -1337.9395751953, 2424.7763671875, 0, 0, 179.24743652344);
	CreateDynamicObject(3383, 1175.9519042969, -1330.5677490234, 2422.0461425781, 0, 0, 179.75);
	CreateDynamicObject(3383, 1183.3975830078, -1330.3992919922, 2422.0461425781, 0, 0, 179.74731445313);
	CreateDynamicObject(3388, 1172.5631103516, -1329.8569335938, 2422.0461425781, 0, 0, 90.25);
	CreateDynamicObject(3388, 1180.3153076172, -1329.8544921875, 2422.0461425781, 0, 0, 90.247192382813);
	CreateDynamicObject(3394, 1184.6655273438, -1334.9022216797, 2422.0461425781, 0, 0, 269.75);
	CreateDynamicObject(3394, 1175.7877197266, -1334.8275146484, 2422.0461425781, 0, 0, 269.74731445313);
	//Vip exterior
	CreateDynamicObject(970, 1791.80005, -1600.90002, 13.10000,   0.00000, 0.00000, 348.00000);
	CreateDynamicObject(970, 1785.59998, -1599.69995, 13.10000,   0.00000, 0.00000, 348.00000);
	CreateDynamicObject(640, 1792.19995, -1601.00000, 13.20000,   0.00000, 0.00000, 78.00000);
	CreateDynamicObject(640, 1785.59656, -1599.42810, 13.20000,   0.00000, 0.00000, 76.00000);
	CreateDynamicObject(869, 1797.09998, -1598.50000, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1797.50000, -1595.90002, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1805.59998, -1595.50000, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1797.59998, -1599.69995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1795.40002, -1596.80005, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1795.50000, -1598.59998, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1795.19995, -1600.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1800.00000, -1599.00000, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1799.09998, -1600.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1797.00000, -1599.80005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1803.50000, -1598.40002, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1801.80005, -1600.00000, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1803.50000, -1596.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1803.59998, -1599.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1801.80005, -1600.40002, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1799.30005, -1594.19995, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1797.59998, -1595.00000, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1798.00000, -1597.50000, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1805.30005, -1596.90002, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1805.59998, -1593.80005, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1807.19995, -1594.69995, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1804.69995, -1597.30005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1806.00000, -1596.90002, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1802.90002, -1596.69995, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1806.69995, -1596.50000, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1808.19995, -1595.40002, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1809.00000, -1593.80005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1810.30005, -1593.69995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1809.30005, -1595.09998, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1806.80005, -1588.30005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1810.30005, -1591.69995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1809.19995, -1589.50000, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1808.00000, -1587.30005, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1809.59998, -1588.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1809.09998, -1585.69995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1809.30005, -1586.69995, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(871, 1810.40002, -1584.19995, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1810.09998, -1584.90002, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1809.19995, -1588.19995, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, 1809.90002, -1586.50000, 13.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1803.69995, -1590.40002, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1806.69995, -1587.80005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1804.40002, -1589.40002, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1801.19995, -1591.80005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1800.19995, -1593.30005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(869, 1796.90002, -1596.30005, 13.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3472, 1801.40002, -1598.80005, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3472, 1808.90002, -1591.40002, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3472, 1811.30005, -1582.80005, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3472, 1794.40002, -1595.19995, 12.90000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3115, 1781.38611, -1573.79480, 22.80000,   0.00000, 0.00000, -48.59999);
	CreateDynamicObject(3115, 1795.33557, -1561.30469, 22.80000,   0.00000, 0.00000, 131.16019);
	CreateDynamicObject(2921, 1802.00000, -1576.40002, 16.80000,   0.00000, 0.00000, 246.00000);
	CreateDynamicObject(640, 1812.00000, -1579.69995, 13.20000,   0.00000, 0.00000, 346.00000);
	CreateDynamicObject(639, 1803.80005, -1569.69995, 19.40000,   0.00000, 0.00000, 128.00000);
	CreateDynamicObject(640, 1813.69995, -1564.59998, 13.20000,   0.00000, 0.00000, 74.00000);
	CreateDynamicObject(970, 1814.19995, -1565.09998, 13.10000,   0.00000, 0.00000, 344.00000);
	CreateDynamicObject(970, 1812.69995, -1579.80005, 13.10000,   0.00000, 0.00000, 76.00000);
	CreateDynamicObject(700, 1795.59998, -1598.90002, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(700, 1809.40002, -1586.59998, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1797.00000, -1577.69995, 13.10000,   0.00000, 0.00000, 280.00000);
	CreateDynamicObject(1557, 1797.40002, -1580.69995, 13.10000,   0.00000, 0.00000, 96.00000);
	CreateDynamicObject(970, 1796.80005, -1601.50000, 13.10000,   0.00000, 0.00000, 356.00000);
	CreateDynamicObject(970, 1801.09998, -1601.69995, 13.10000,   0.00000, 0.00000, 358.00000);
	CreateDynamicObject(970, 1804.69995, -1600.40002, 13.10000,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(970, 1807.59998, -1598.00000, 13.10000,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(970, 1809.69995, -1596.30005, 13.10000,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(970, 1811.30005, -1592.69995, 13.10000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1811.30005, -1588.90002, 13.10000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1811.30005, -1584.50000, 13.10000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(970, 1809.00000, -1583.69995, 13.10000,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(970, 1805.90002, -1586.09998, 13.10000,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(970, 1802.50000, -1588.80005, 13.10000,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(970, 1801.40002, -1593.80005, 13.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1799.69995, -1591.19995, 13.10000,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(970, 1794.59998, -1599.09998, 13.10000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1796.80005, -1593.69995, 13.10000,   0.00000, 0.00000, 38.00000);
	CreateDynamicObject(970, 1794.69995, -1596.59998, 13.10000,   0.00000, 0.00000, 76.00000);
	CreateDynamicObject(3934, 1795.40869, -1560.86755, 23.10000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3934, 1781.04761, -1573.54761, 23.10000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3657, 1800.30005, -1589.80005, 13.00000,   0.00000, 0.00000, 218.00000);
	CreateDynamicObject(3657, 1807.90002, -1583.80005, 13.00000,   0.00000, 0.00000, 218.00000);
	CreateDynamicObject(19127, 1807.74548, -1598.27747, 13.44817,   0.00000, 0.00000, -597.17987);
	CreateDynamicObject(870, 1804.43811, -1596.27661, 13.40786,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3115, 1734.57532, -1550.80261, 33.10000,   0.00000, 0.00000, 0.06000);
	CreateDynamicObject(3934, 1735.32544, -1550.33948, 33.48100,   0.00000, 0.00000, -29.46000);
	CreateDynamicObject(18652, 1801.43933, -1569.79626, 23.21490,   0.00000, 0.00000, -48.36000);
	CreateDynamicObject(18652, 1788.72241, -1581.23303, 23.21490,   0.00000, 0.00000, -48.54000);
	CreateDynamicObject(19279, 1804.84534, -1595.35364, 13.21885,   0.00000, 0.00000, 41.16001);
	CreateDynamicObject(19166, 1808.61060, -1566.92664, 14.85030,   90.00000, 90.00000, -49.98000);
    	//InterVIP
	CreateDynamicObject(18981, 1814.62305, 1338.01404, 560.61798,   0.00000, -90.00000, 0.19900);
	CreateDynamicObject(18981, 1814.60095, 1362.17102, 559.09198,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(19458, 1827.02905, 1369.83203, 561.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.02905, 1358.10205, 561.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.02905, 1352.47302, 564.65997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.01904, 1377.30396, 564.65997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1348.49194, 561.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1348.52197, 564.65997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1338.82202, 565.14099,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1329.28296, 564.65997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1329.28296, 561.27002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.05896, 1340.42297, 561.69000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.06897, 1343.57996, 564.66101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.07898, 1343.57996, 561.53998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1822.35303, 1374.54504, 561.28003,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1812.80298, 1374.59497, 561.28003,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1803.24304, 1374.64502, 561.28003,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1803.24304, 1374.64502, 564.77899,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1812.78198, 1374.59497, 564.77899,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1822.28198, 1374.54504, 564.77899,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(19458, 1802.15906, 1369.76404, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1357.89294, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1348.39294, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1340.37305, 561.74701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1329.33301, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1329.33301, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1338.76294, 565.20697,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1348.31201, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1357.92200, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.14905, 1367.54102, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.16895, 1377.02100, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1822.32605, 1325.58398, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1812.78101, 1325.69104, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1803.44397, 1325.50098, 562.81500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1803.44397, 1325.50098, 564.81500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1812.98206, 1325.68396, 564.81500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1821.62097, 1325.84998, 564.81500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1822.03894, 1325.86694, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.48706, 1326.04797, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.06799, 1326.03101, 564.81500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(18981, 1814.65405, 1362.24097, 566.88098,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(18981, 1814.65405, 1337.35095, 566.88098,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(19462, 1828.68896, 1369.88000, 559.41101,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1828.68896, 1360.31995, 559.41101,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1835.56897, 1360.31995, 559.36298,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1832.14795, 1360.31995, 559.39600,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1839.06799, 1360.31995, 559.33801,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1842.44702, 1360.33997, 559.31403,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1845.70703, 1360.31995, 559.29102,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1845.65796, 1369.93896, 559.32098,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1842.19702, 1369.93896, 559.31598,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1838.95703, 1369.93896, 559.33801,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1835.57800, 1369.91003, 559.36200,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1832.12805, 1369.88904, 559.39600,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19458, 1847.37500, 1369.88196, 561.01300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1847.37500, 1360.28101, 561.06299,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.07397, 1358.15295, 561.01300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.07397, 1369.78198, 560.94299,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18981, 1839.41003, 1362.24097, 566.43799,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(19458, 1847.37500, 1360.28101, 564.50403,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1847.37500, 1369.87195, 564.39301,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1842.76501, 1374.61206, 561.06299,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1842.76501, 1374.61206, 564.52301,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1833.24500, 1374.62805, 564.52301,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1833.24500, 1374.62805, 561.08301,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1828.47705, 1373.54797, 562.69501,   -90.70000, -36.09900, -90.09900);
	CreateDynamicObject(19458, 1842.73206, 1355.66199, 561.06299,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1833.19104, 1355.67896, 561.06299,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1833.19104, 1355.67896, 564.45300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1842.66296, 1355.66296, 564.45300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1828.48206, 1356.20398, 562.03900,   90.50000, -35.90000, -90.09900);
	CreateDynamicObject(1775, 1836.81995, 1374.08496, 560.40997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1775, 1837.99097, 1374.08496, 560.40997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1800.39905, 1365.30005, 559.61700,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1800.41895, 1359.71997, 559.60699,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1796.93799, 1359.71997, 559.63098,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1793.62805, 1359.71997, 559.65399,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1790.33899, 1359.71997, 559.67700,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1796.89905, 1365.30005, 559.64203,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1793.49902, 1365.30005, 559.66602,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1790.07898, 1365.30005, 559.69000,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19458, 1797.40100, 1355.15100, 561.38300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1787.77002, 1355.16699, 561.38300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1787.78101, 1355.16797, 564.85400,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1797.41101, 1355.15100, 564.85400,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1787.79602, 1369.97803, 561.38300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1797.41602, 1369.96106, 561.38300,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1797.41602, 1369.96106, 564.85400,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(19458, 1787.80603, 1369.97705, 564.85400,   0.00000, 0.00000, -90.09900);
	CreateDynamicObject(18981, 1789.82397, 1362.24097, 567.05402,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(18981, 1789.82397, 1337.44104, 567.05402,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(19458, 1788.47803, 1359.98303, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1788.47803, 1369.45398, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1788.47803, 1369.45398, 564.82703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1788.47803, 1359.86304, 564.82703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1801.98901, 1369.76404, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1801.98901, 1369.76404, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1802.01904, 1361.03406, 564.83698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1801.98901, 1357.83301, 561.40698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1801.98901, 1351.46399, 564.74701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1775, 1790.06006, 1369.45203, 560.85101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1796.32300, 1369.38696, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1795.40198, 1369.38696, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1794.50195, 1369.38696, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1793.93201, 1364.01501, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1792.66199, 1369.38696, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1792.03198, 1369.39294, 559.87903,   0.00000, 0.00000, 89.39900);
	CreateDynamicObject(2139, 1792.02100, 1368.47302, 559.89899,   0.00000, 0.00000, 89.39900);
	CreateDynamicObject(2139, 1799.12195, 1369.36902, 559.90900,   0.00000, 0.00000, 89.39900);
	CreateDynamicObject(2139, 1799.11096, 1368.38904, 559.89899,   0.00000, 0.00000, 89.39900);
	CreateDynamicObject(2139, 1798.79102, 1368.42297, 559.90900,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2139, 1798.80298, 1369.34302, 559.90900,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2139, 1791.71997, 1368.43896, 559.90900,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2139, 1791.73096, 1369.38904, 559.90900,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2139, 1792.08105, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1793.06201, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1794.03198, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1795.05200, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1796.11304, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1797.15405, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1798.17395, 1369.83704, 561.79303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1794.89197, 1364.01501, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1795.87305, 1364.01501, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1796.86304, 1364.01501, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1796.88904, 1365.01599, 559.90900,   0.00000, 0.00000, 179.80000);
	CreateDynamicObject(2139, 1795.90796, 1365.02002, 559.90900,   0.00000, 0.00000, 179.80000);
	CreateDynamicObject(2139, 1794.94702, 1365.02295, 559.90900,   0.00000, 0.00000, 179.80000);
	CreateDynamicObject(2139, 1793.95703, 1365.02698, 559.90900,   0.00000, 0.00000, 179.80000);
	CreateDynamicObject(2139, 1793.59094, 1369.38696, 559.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3498, 1797.60498, 1364.48401, 558.73901,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3498, 1793.19397, 1364.48401, 558.73901,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2136, 1797.26501, 1369.39404, 559.91803,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2131, 1788.99805, 1364.55103, 559.82898,   0.00000, 0.00000, 88.39900);
	CreateDynamicObject(2133, 1789.05103, 1363.57397, 559.66602,   0.00000, 0.00000, 88.89900);
	CreateDynamicObject(2133, 1789.05103, 1363.57397, 560.54602,   0.00000, 0.00000, 88.89900);
	CreateDynamicObject(2635, 1798.38501, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1797.39502, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1795.42395, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1796.40503, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1794.42395, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1793.48401, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1792.51404, 1358.08997, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2310, 1799.34802, 1358.06494, 560.11902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2310, 1798.42798, 1359.01001, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1797.47900, 1359.04602, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1796.42896, 1359.08606, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1795.43994, 1359.12402, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1794.57996, 1359.15601, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1793.54102, 1359.19604, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1792.71106, 1359.22803, 560.11902,   0.00000, 0.00000, 87.80000);
	CreateDynamicObject(2310, 1791.62097, 1358.16699, 560.11902,   0.00000, 0.00000, 179.49899);
	CreateDynamicObject(2310, 1792.54102, 1357.25403, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1793.56104, 1357.24194, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1794.43103, 1357.23096, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1795.34094, 1357.21997, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1796.39001, 1357.17700, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1797.32104, 1357.19604, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2310, 1798.34094, 1357.18298, 560.11902,   0.00000, 0.00000, -90.70000);
	CreateDynamicObject(2131, 1788.91602, 1361.59094, 559.82898,   0.00000, 0.00000, 88.39900);
	CreateDynamicObject(2131, 1788.91602, 1361.59094, 559.82898,   0.00000, 0.00000, 88.39900);
	CreateDynamicObject(2133, 1788.99402, 1360.61401, 560.54602,   0.00000, 0.00000, 88.89900);
	CreateDynamicObject(2133, 1788.99402, 1360.61401, 559.65601,   0.00000, 0.00000, 88.89900);
	CreateDynamicObject(19916, 1788.72900, 1359.72803, 559.61798,   0.00000, 0.00000, 89.30000);
	CreateDynamicObject(19916, 1788.71802, 1358.82703, 559.61798,   0.00000, 0.00000, 89.30000);
	CreateDynamicObject(19943, 1805.86499, 1356.21106, 559.37402,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1805.86499, 1370.17102, 559.37402,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1822.70496, 1370.17102, 559.37402,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1822.70496, 1356.14099, 559.37402,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1822.70496, 1344.58997, 559.72400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1806.19397, 1344.58997, 559.72400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1341.32605, 561.05701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51294, 1341.37903, 561.79303,   28.90000, -0.79900, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1339.05603, 561.05701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.52002, 1338.98901, 561.74298,   -27.30000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.33606, 560.12799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1339.33496, 560.12799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.20605, 562.39801,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.20605, 563.41803,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.20605, 564.32800,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.20605, 565.22803,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1340.20605, 566.15900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.52002, 1340.98596, 562.50000,   30.59900, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51001, 1339.36401, 562.49500,   -32.59900, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1339.95605, 563.37799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1339.95605, 564.33801,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1339.95605, 565.27802,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1340.39600, 563.37799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1340.39600, 564.30798,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1340.39600, 565.10797,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.53003, 1340.39600, 565.90900,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1826.51294, 1341.37903, 561.79303,   28.90000, -0.79900, 0.00000);
	CreateDynamicObject(19789, 1827.42102, 1340.30505, 561.05701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1827.42102, 1339.15405, 561.05701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1827.42102, 1340.17395, 562.02698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19789, 1827.43005, 1339.60400, 561.05701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1828.79102, 1333.55896, 561.00000,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1832.16101, 1333.55896, 560.97699,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1835.52100, 1333.55896, 560.95300,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1838.71106, 1333.55896, 560.93103,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1832.16101, 1324.04895, 560.99701,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1828.82104, 1324.04895, 561.02002,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1835.60999, 1324.04895, 560.97198,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1838.71106, 1324.04895, 560.95099,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19458, 1831.48706, 1326.04797, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.81494, 1326.17505, 562.84601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.82495, 1326.17505, 566.33600,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1841.09399, 1326.35205, 566.33600,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1841.09399, 1326.35205, 562.87598,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1841.00403, 1326.35095, 559.56500,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1840.77100, 1338.54004, 562.60602,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.80298, 1338.35803, 562.60602,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1831.80298, 1338.35803, 566.02600,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1840.77100, 1338.54004, 566.03601,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1840.40906, 1332.48596, 562.70001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1840.42102, 1329.28296, 566.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1840.40906, 1338.90405, 566.20001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1840.40906, 1338.90405, 562.71002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.17102, 1329.28296, 564.83002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.17102, 1329.28296, 561.33002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.17102, 1340.45300, 564.81000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.17102, 1340.45300, 561.33002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1827.16101, 1335.73096, 565.19098,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18981, 1839.25305, 1337.35095, 566.70898,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(19458, 1840.42102, 1329.28296, 565.14099,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1842.07104, 1331.13696, 560.92798,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1845.49097, 1331.13696, 560.90399,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19458, 1850.64197, 1326.53503, 562.70599,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1845.27295, 1335.76294, 562.70599,   0.00000, 0.00000, -88.90000);
	CreateDynamicObject(19458, 1847.21997, 1330.98596, 562.70001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1842.09595, 1331.13696, 564.46802,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1845.54700, 1331.13696, 564.44397,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19967, 1840.33105, 1328.37097, 560.54797,   0.00000, 0.00000, -89.60000);
	CreateDynamicObject(2991, 1827.62000, 1332.99805, 562.35797,   0.39900, 89.99900, 0.00000);
	CreateDynamicObject(2991, 1827.62000, 1327.17700, 562.35699,   0.39900, 89.99900, 0.00000);
	CreateDynamicObject(2991, 1827.62097, 1328.18604, 565.33502,   -89.59900, 89.99900, 0.00000);
	CreateDynamicObject(2991, 1827.62097, 1331.96704, 565.36102,   -89.59900, 89.99900, 0.00000);
	CreateDynamicObject(2286, 1833.85095, 1326.33496, 563.70099,   0.00000, 0.00000, -178.79900);
	CreateDynamicObject(1775, 1837.05701, 1338.06201, 562.02301,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1775, 1838.22705, 1338.06201, 562.02301,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2991, 1804.20801, 1374.36401, 559.67700,   -0.49900, 0.69900, 0.40000);
	CreateDynamicObject(2991, 1808.13794, 1374.35205, 559.62903,   -0.49900, 0.69900, -0.49900);
	CreateDynamicObject(2991, 1810.00806, 1374.33496, 559.59601,   -0.49900, 0.69900, -0.49900);
	CreateDynamicObject(2991, 1811.39795, 1374.33301, 561.88202,   -0.19900, -89.60000, -0.79900);
	CreateDynamicObject(2991, 1811.42505, 1374.32800, 565.86298,   -0.19900, -89.60000, -0.79900);
	CreateDynamicObject(2991, 1808.90503, 1374.34900, 565.88098,   -0.49900, 0.69900, -0.49900);
	CreateDynamicObject(2991, 1804.99402, 1374.41296, 565.92902,   -0.49900, 0.69900, -0.49900);
	CreateDynamicObject(2991, 1802.82300, 1374.35901, 564.48199,   -0.19900, -89.60000, -0.79900);
	CreateDynamicObject(2991, 1802.79395, 1374.37500, 560.48999,   -0.19900, -89.60000, -0.79900);
	CreateDynamicObject(19462, 1800.42896, 1334.86902, 561.04797,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1796.98901, 1334.86902, 561.07202,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1793.61902, 1334.86902, 561.09497,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1787.10095, 1337.96399, 561.11603,   0.00000, 90.39900, -90.39900);
	CreateDynamicObject(19462, 1787.12402, 1341.40295, 561.14001,   0.00000, 90.39900, -90.39900);
	CreateDynamicObject(19458, 1782.39404, 1339.73206, 561.38702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1782.39404, 1339.73206, 564.85699,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1791.84302, 1342.50696, 561.38702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1791.84302, 1342.50696, 564.81702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1802.05798, 1340.36401, 561.72699,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1802.02197, 1334.93506, 565.18701,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1801.95496, 1325.34497, 564.88702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1801.98303, 1329.32605, 561.71698,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1797.11206, 1330.15002, 561.87500,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1787.61206, 1330.15002, 561.87500,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1787.07104, 1336.17102, 561.87500,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1787.07104, 1343.06396, 561.86603,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1787.07104, 1343.06396, 565.35602,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1786.91101, 1336.16101, 565.30603,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1797.11206, 1330.15002, 565.35602,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1787.52197, 1330.15002, 565.35602,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1791.78503, 1332.94397, 565.25702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1791.77405, 1331.42200, 561.78699,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19462, 1793.61902, 1344.43005, 561.09497,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1797.07898, 1344.43005, 561.07098,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1800.48901, 1344.45996, 561.03699,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19458, 1797.11206, 1342.98901, 561.87500,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19458, 1797.11206, 1342.98901, 565.31500,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19443, 1792.42004, 1342.52502, 562.85797,   0.00000, 0.00000, -44.39900);
	CreateDynamicObject(19443, 1792.42004, 1342.52502, 566.35797,   0.00000, 0.00000, -44.39900);
	CreateDynamicObject(19443, 1792.28101, 1330.62402, 562.87799,   0.00000, 0.00000, 48.30000);
	CreateDynamicObject(19443, 1792.28101, 1330.62402, 566.31897,   0.00000, 0.00000, 48.30000);
	CreateDynamicObject(19458, 1802.08704, 1344.54504, 565.16699,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1791.73401, 1339.66699, 565.24701,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(19458, 1791.75403, 1342.49902, 561.74701,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(2526, 1784.24500, 1342.53503, 561.21301,   0.00000, 0.00000, -179.69901);
	CreateDynamicObject(11732, 1784.20898, 1337.56006, 561.18201,   0.00000, 0.00000, 89.69900);
	CreateDynamicObject(14407, 1788.61499, 1336.98999, 558.64697,   0.00000, 0.00000, -89.19900);
	CreateDynamicObject(19458, 1782.59302, 1338.88501, 562.64697,   0.00000, 0.00000, -90.20000);
	CreateDynamicObject(19443, 1801.45703, 1342.19897, 562.87799,   0.00000, 0.00000, 48.30000);
	CreateDynamicObject(19443, 1801.45703, 1342.19897, 566.26801,   0.00000, 0.00000, 48.30000);
	CreateDynamicObject(19443, 1801.55505, 1330.72400, 562.85797,   0.00000, 0.00000, -44.39900);
	CreateDynamicObject(19443, 1801.55505, 1330.72400, 566.28802,   0.00000, 0.00000, -44.39900);
	CreateDynamicObject(2286, 1797.00696, 1330.37305, 563.86200,   0.00000, 0.00000, -178.79900);
	CreateDynamicObject(19458, 1789.75806, 1344.48999, 561.38702,   0.00000, 0.00000, -0.40000);
	CreateDynamicObject(2526, 1790.28503, 1341.31494, 561.21301,   0.00000, 0.00000, 89.99900);
	CreateDynamicObject(19943, 1822.70496, 1329.80005, 559.72400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19943, 1805.99500, 1329.80005, 559.72400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2297, 1826.22302, 1374.33301, 559.45502,   0.00000, 0.00000, -106.19900);
	CreateDynamicObject(2267, 1826.72900, 1347.72095, 564.35199,   0.00000, 0.00000, -89.29900);
	CreateDynamicObject(14394, 1823.07202, 1351.52905, 560.28998,   0.00000, 0.00000, -89.99900);
	CreateDynamicObject(14394, 1815.12195, 1351.52905, 560.28998,   0.00000, 0.00000, -89.99900);
	CreateDynamicObject(14394, 1807.23206, 1351.52905, 560.28998,   0.00000, 0.00000, -89.99900);
	CreateDynamicObject(14394, 1806.09094, 1351.52905, 560.28998,   0.00000, 0.00000, -89.99900);
	CreateDynamicObject(19462, 1827.07703, 1367.79199, 562.87598,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(2755, 1825.42102, 1350.47400, 562.80499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2755, 1822.33105, 1350.47400, 562.80499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2755, 1803.49097, 1350.47400, 562.80499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2755, 1806.52197, 1350.47400, 562.80499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1812.49097, 1374.56006, 559.55902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1815.52905, 1374.51404, 559.55298,   0.00000, 0.00000, 179.80000);
	CreateDynamicObject(2298, 1843.33496, 1367.32397, 559.38397,   0.00000, 0.99900, -89.59900);
	CreateDynamicObject(2298, 1843.35803, 1364.05505, 559.32703,   0.00000, 0.99900, -89.59900);
	CreateDynamicObject(14813, 1845.56702, 1372.55396, 559.95203,   0.00000, 0.00000, -89.50000);
	CreateDynamicObject(1704, 1837.56799, 1361.41699, 559.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1832.13696, 1365.31995, 559.38599,   0.00000, 90.39900, 0.00000);
	CreateDynamicObject(19462, 1827.07703, 1362.09094, 562.86603,   0.00000, -89.59900, 0.00000);
	CreateDynamicObject(1649, 1827.01001, 1363.84302, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.01794, 1368.16394, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1704, 1836.51794, 1361.41699, 559.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1704, 1834.82605, 1360.75000, 559.35901,   -0.19900, 0.00000, 31.79900);
	CreateDynamicObject(1704, 1839.41003, 1361.35400, 559.36298,   -0.19900, 0.00000, -33.10000);
	CreateDynamicObject(2229, 1838.60303, 1355.73999, 559.34802,   0.00000, 0.00000, 179.19901);
	CreateDynamicObject(2229, 1835.30298, 1355.78699, 559.34802,   0.00000, 0.00000, 179.19901);
	CreateDynamicObject(2229, 1846.86694, 1356.00000, 559.34802,   0.00000, 0.00000, -128.30000);
	CreateDynamicObject(2229, 1846.63599, 1355.72400, 559.34802,   0.00000, 0.00000, -128.30000);
	CreateDynamicObject(2854, 1845.42004, 1365.73401, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2297, 1838.00000, 1355.81494, 559.42499,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(2854, 1845.42004, 1366.31494, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1846.06104, 1365.96497, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1846.06104, 1363.04504, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1846.06104, 1362.48401, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1845.34998, 1362.78503, 559.96997,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2858, 1839.93701, 1374.03601, 559.99701,   0.00000, 0.00000, -56.00000);
	CreateDynamicObject(1671, 1840.23206, 1373.15002, 559.83002,   0.00000, 0.00000, -139.89999);
	CreateDynamicObject(2172, 1828.93298, 1356.59094, 559.41803,   0.00000, 0.00000, 143.70000);
	CreateDynamicObject(2172, 1830.84705, 1356.20105, 559.41803,   0.00000, 0.00000, 179.39999);
	CreateDynamicObject(2172, 1827.59998, 1358.07495, 559.42700,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2161, 1840.86694, 1355.74194, 559.36798,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1842.15698, 1355.74805, 559.36798,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1843.48706, 1355.74304, 559.36798,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1844.81897, 1355.73804, 559.36798,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1844.81897, 1355.73804, 560.64899,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1843.48804, 1355.74304, 560.64899,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1842.14795, 1355.74695, 560.64899,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1840.84802, 1355.75195, 560.64899,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2167, 1830.49304, 1374.52698, 559.41998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1831.36304, 1374.52698, 559.41998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1832.25403, 1374.52698, 559.41998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1833.12402, 1374.52698, 559.41998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1827.02600, 1372.65503, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00305, 1359.47400, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00305, 1359.47400, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00305, 1359.47400, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.01099, 1363.86499, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.01099, 1363.86499, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.01099, 1363.86499, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1826.99194, 1363.88501, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1826.99194, 1363.88501, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1826.98206, 1363.88599, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00000, 1368.29602, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00000, 1368.29602, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00000, 1368.29602, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00000, 1368.29602, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00000, 1368.29602, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00696, 1372.56702, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00696, 1372.56702, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00696, 1372.56702, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00696, 1372.56702, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1827.00696, 1372.56702, 564.57703,   0.00000, 0.00000, -90.10000);
	CreateDynamicObject(1649, 1826.99805, 1368.34595, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.01294, 1372.64502, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.96704, 1359.51404, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.96704, 1359.40295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.96704, 1359.40295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.96704, 1359.40295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.96704, 1359.40295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.98206, 1363.87402, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.98206, 1363.87402, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.98206, 1363.87402, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.99805, 1368.35400, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.99805, 1368.35400, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.99805, 1368.35400, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1826.99805, 1368.35400, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.01294, 1372.65405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.01294, 1372.65405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.01294, 1372.65405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.02197, 1363.90295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.02197, 1363.90295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.02197, 1363.90295, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.03699, 1368.27405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.03699, 1368.27405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.03699, 1368.27405, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00696, 1359.49304, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00696, 1359.49304, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00696, 1359.49304, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00696, 1359.49304, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1649, 1827.00696, 1359.49304, 564.57703,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(356, 1827.27002, 1365.68201, 561.82001,   -0.39900, 0.69900, 95.09900);
	CreateDynamicObject(1744, 1827.00098, 1365.87305, 560.47601,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(1744, 1826.99402, 1368.08301, 560.47601,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(1744, 1826.99402, 1368.08301, 561.33600,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(1744, 1827.00195, 1365.88196, 561.34601,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(356, 1827.22498, 1367.89404, 561.78400,   -0.39900, 0.69900, 95.09900);
	CreateDynamicObject(1744, 1826.99805, 1366.99097, 559.40601,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(348, 1827.20496, 1368.86304, 561.75000,   0.00000, -1.39900, 94.90000);
	CreateDynamicObject(348, 1827.39404, 1366.65906, 561.79602,   0.00000, -1.39900, 94.90000);
	CreateDynamicObject(358, 1827.13501, 1366.78796, 560.96997,   0.00000, 0.00000, -84.49900);
	CreateDynamicObject(358, 1827.13501, 1369.28894, 560.96997,   0.00000, 0.00000, -84.49900);
	CreateDynamicObject(351, 1827.12598, 1368.30603, 560.91400,   0.00000, 0.00000, -83.69900);
	CreateDynamicObject(351, 1827.18799, 1365.93896, 560.91400,   0.00000, 0.00000, -83.69900);
	CreateDynamicObject(359, 1827.29199, 1367.69995, 559.91602,   0.30000, -18.30000, -88.40000);
	CreateDynamicObject(359, 1827.31604, 1366.83496, 560.00299,   0.30000, -18.30000, -88.40000);
	CreateDynamicObject(2475, 1827.22705, 1370.24304, 559.42603,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(2475, 1827.23206, 1371.69397, 559.42603,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(1550, 1827.35400, 1372.19995, 559.88599,   0.00000, 47.60000, -95.60000);
	CreateDynamicObject(1550, 1827.31006, 1371.76001, 559.78699,   0.00000, -1.49900, -95.80000);
	CreateDynamicObject(1550, 1827.26501, 1371.31396, 559.79901,   0.00000, -1.49900, -95.80000);
	CreateDynamicObject(1550, 1827.31995, 1370.67297, 559.74902,   0.00000, 87.00000, -95.80000);
	CreateDynamicObject(1550, 1827.39404, 1370.20496, 559.79602,   0.00000, -33.99900, -95.80000);
	CreateDynamicObject(18637, 1827.15503, 1371.97803, 562.16602,   102.99900, 114.79900, -36.20000);
	CreateDynamicObject(18637, 1827.12695, 1371.43701, 562.18903,   89.90000, 114.89900, -25.29900);
	CreateDynamicObject(18637, 1827.16199, 1370.76599, 562.19000,   89.90000, 114.89900, -25.29900);
	CreateDynamicObject(18637, 1827.15601, 1370.03503, 562.19098,   89.90000, 114.89900, -25.29900);
	CreateDynamicObject(19142, 1827.32996, 1372.27295, 560.44397,   0.00000, -87.70000, -70.50000);
	CreateDynamicObject(19142, 1827.37305, 1371.49304, 560.46399,   0.00000, -87.70000, -70.50000);
	CreateDynamicObject(19142, 1827.39197, 1370.69202, 560.45398,   0.00000, -87.70000, -70.50000);
	CreateDynamicObject(19142, 1827.33301, 1370.10999, 560.43201,   0.00000, -87.70000, -70.50000);
	CreateDynamicObject(19142, 1827.33301, 1370.10999, 560.43201,   0.00000, -87.70000, -70.50000);
	CreateDynamicObject(2604, 1846.76404, 1359.15906, 560.13702,   0.00000, 0.00000, -89.39900);
	CreateDynamicObject(14527, 1838.34595, 1365.08105, 563.33600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1838.34595, 1370.37305, 563.39600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1838.34595, 1359.40295, 563.39600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1833.74597, 1359.40295, 563.39600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1833.74597, 1364.53198, 563.39600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1833.74597, 1370.02405, 563.39600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2858, 1796.78198, 1364.60400, 560.96698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2286, 1845.53101, 1355.77600, 563.40698,   0.00000, 0.00000, 179.70000);
	CreateDynamicObject(2286, 1838.88098, 1355.81201, 563.40698,   0.00000, 0.00000, 179.70000);
	CreateDynamicObject(2286, 1832.05005, 1355.84802, 563.40698,   0.00000, 0.00000, 179.70000);
	CreateDynamicObject(2256, 1832.10803, 1374.46802, 563.48798,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2256, 1844.57898, 1374.46802, 563.48798,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2257, 1837.75696, 1374.46899, 563.35797,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, 1795.81006, 1364.45203, 563.75598,   -179.99899, -0.40000, -0.69900);
	CreateDynamicObject(2725, 1835.99097, 1361.52600, 559.83197,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1838.99194, 1361.52600, 559.83197,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2822, 1836.00696, 1361.48706, 560.22998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2822, 1839.01904, 1361.48706, 560.22998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, 1793.53003, 1364.47998, 563.77197,   -179.99899, -0.40000, -0.69900);
	CreateDynamicObject(2858, 1794.30200, 1364.25403, 560.96698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2866, 1794.07996, 1364.70300, 560.98999,   0.00000, 0.00000, 64.70000);
	CreateDynamicObject(2866, 1795.11304, 1364.31494, 560.98999,   0.00000, 0.00000, 64.70000);
	CreateDynamicObject(2821, 1795.84204, 1364.22205, 560.96002,   0.00000, 0.00000, 35.50000);
	CreateDynamicObject(2821, 1796.11096, 1364.75806, 560.96002,   0.00000, 0.00000, -24.09900);
	CreateDynamicObject(18725, 1795.21106, 1369.39795, 558.66901,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2860, 1795.32104, 1369.38403, 560.96600,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2822, 1798.70398, 1369.48999, 560.93903,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2822, 1799.03406, 1369.48999, 560.93903,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2822, 1797.80396, 1369.48999, 560.93903,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2803, 1798.01404, 1368.60999, 560.10797,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2804, 1796.45703, 1369.48206, 561.03497,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2804, 1796.68799, 1369.49097, 561.03497,   0.00000, 0.00000, 175.59900);
	CreateDynamicObject(2804, 1797.22498, 1369.43896, 561.03497,   0.00000, 0.00000, 84.39900);
	CreateDynamicObject(2806, 1794.24304, 1369.51001, 561.05798,   0.00000, 0.00000, -62.69900);
	CreateDynamicObject(2805, 1793.55896, 1369.61206, 561.27698,   -28.60000, 0.00000, -12.30000);
	CreateDynamicObject(335, 1792.92603, 1369.58105, 560.94299,   86.50000, 0.00000, 0.00000);
	CreateDynamicObject(335, 1792.68604, 1369.58105, 560.94299,   86.50000, 0.00000, 0.00000);
	CreateDynamicObject(335, 1792.35596, 1369.58105, 560.94299,   86.50000, 0.00000, 0.00000);
	CreateDynamicObject(335, 1792.03503, 1369.58105, 560.94299,   86.50000, 0.00000, 0.00000);
	CreateDynamicObject(335, 1791.76501, 1369.58105, 560.94299,   86.50000, 0.00000, 0.00000);
	CreateDynamicObject(335, 1792.06396, 1369.38403, 560.91998,   86.50000, 0.00000, -177.60001);
	CreateDynamicObject(335, 1792.32397, 1369.39294, 560.92999,   86.50000, 0.00000, -177.60001);
	CreateDynamicObject(335, 1792.66394, 1369.40796, 560.92999,   86.50000, 0.00000, -177.60001);
	CreateDynamicObject(335, 1792.90405, 1369.41797, 560.92999,   86.50000, 0.00000, -177.60001);
	CreateDynamicObject(335, 1793.19397, 1369.43005, 560.92999,   86.50000, 0.00000, -177.60001);
	CreateDynamicObject(1546, 1798.94800, 1368.45996, 561.03497,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1546, 1798.94800, 1368.25000, 561.03497,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1546, 1798.86804, 1368.37000, 561.03497,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1546, 1799.09802, 1368.37000, 561.03497,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1546, 1799.09802, 1368.26001, 561.03497,   0.00000, -44.80000, 0.00000);
	CreateDynamicObject(2725, 1794.11096, 1365.57800, 560.13599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1796.51196, 1365.57800, 560.13599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2755, 1789.63904, 1356.47095, 561.43201,   0.00000, 0.00000, -51.40000);
	CreateDynamicObject(2755, 1800.83801, 1356.33301, 561.38202,   0.00000, 0.00000, 45.39900);
	CreateDynamicObject(2001, 1799.70898, 1369.10706, 559.70898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1800.76001, 1369.10706, 559.70898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1801.71997, 1369.10706, 559.70898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, 1795.02502, 1364.45898, 563.23499,   -179.99899, -179.70000, -0.79900);
	CreateDynamicObject(2311, 1797.29602, 1364.42798, 563.24701,   -179.99899, -179.70000, -0.79900);
	CreateDynamicObject(1235, 1801.55505, 1361.92603, 560.20898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1235, 1801.55505, 1361.11597, 560.20898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, 1801.72095, 1360.41504, 559.67102,   0.00000, 0.00000, -89.30000);
	CreateDynamicObject(1808, 1801.72595, 1359.97400, 559.67102,   0.00000, 0.00000, -89.30000);
	CreateDynamicObject(2002, 1801.59705, 1366.26501, 559.67902,   0.00000, 0.00000, -89.79900);
	CreateDynamicObject(2002, 1801.59497, 1366.72498, 559.67902,   0.00000, 0.00000, -89.79900);
	CreateDynamicObject(18720, 1805.56494, 1326.57202, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1808.76501, 1326.53296, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1802.58398, 1326.60901, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1811.70300, 1326.49695, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1814.61206, 1326.46204, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1817.41199, 1326.42700, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1820.17297, 1326.39404, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1823.02405, 1326.35901, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(18720, 1824.96301, 1326.33496, 569.67401,   0.00000, 0.00000, 89.29900);
	CreateDynamicObject(11733, 1827.78101, 1361.34399, 559.49701,   0.00000, 0.00000, 140.49899);
	CreateDynamicObject(19580, 1797.96802, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19580, 1796.91797, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19580, 1795.98804, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19580, 1795.06702, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19580, 1794.28796, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19580, 1793.27795, 1358.10400, 560.55298,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19878, 1834.38501, 1356.04102, 559.80402,   0.00000, 52.90000, 92.20000);
	CreateDynamicObject(19878, 1833.85498, 1356.02002, 559.80402,   0.00000, 52.90000, 92.20000);
	CreateDynamicObject(19878, 1833.15601, 1355.99402, 559.80402,   0.00000, 52.90000, 92.20000);
	CreateDynamicObject(19878, 1832.54602, 1355.96997, 559.80402,   0.00000, 52.90000, 92.20000);
	CreateDynamicObject(19878, 1831.86597, 1355.94397, 559.80402,   0.00000, 52.90000, 92.20000);
	CreateDynamicObject(18689, 1826.36096, 1339.88696, 559.06201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1735, 1824.09094, 1340.18701, 561.05603,   0.00000, 0.00000, 92.90000);
	CreateDynamicObject(1735, 1824.50500, 1338.95203, 561.05603,   0.00000, 0.00000, 134.30000);
	CreateDynamicObject(1735, 1824.34595, 1341.34595, 561.04602,   0.00000, 0.00000, 52.30000);
	CreateDynamicObject(1491, 1840.44800, 1326.38196, 560.95697,   0.00000, 0.00000, 89.90000);
	CreateDynamicObject(1225, 1845.55505, 1335.30298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1844.63501, 1335.30298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1843.78503, 1335.09302, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1842.91394, 1335.09302, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1842.21399, 1335.09302, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1841.41394, 1335.09302, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1840.88403, 1335.09302, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1846.30505, 1335.30298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1846.77502, 1335.30298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1846.77502, 1334.43298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1845.91504, 1334.43298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1844.99805, 1334.25806, 561.14502,   74.79900, -80.99900, 0.00000);
	CreateDynamicObject(1225, 1843.84399, 1334.43298, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1842.95398, 1334.31201, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1842.05396, 1334.31201, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1841.34399, 1333.98206, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19834, 1843.64001, 1333.75806, 561.82703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19834, 1845.93005, 1333.75806, 561.82703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19834, 1841.50000, 1333.75806, 561.82703,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3092, 1846.17505, 1335.48706, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(3092, 1845.13696, 1335.55103, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(3092, 1843.92896, 1335.62500, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(3092, 1842.79602, 1335.45300, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(3092, 1841.73096, 1335.40796, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(3092, 1840.74304, 1335.46899, 563.17999,   0.00000, 0.00000, 176.49899);
	CreateDynamicObject(1550, 1846.91394, 1326.91895, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.91394, 1327.38904, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.91394, 1328.05896, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.91394, 1328.52905, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.58398, 1328.52905, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.58398, 1327.93896, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.58398, 1327.31897, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.58398, 1326.86902, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.18396, 1327.31897, 561.32202,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1846.17505, 1327.80603, 561.23798,   0.00000, -44.29900, 88.70000);
	CreateDynamicObject(1649, 1828.14795, 1330.29395, 562.68500,   0.00000, 0.00000, 90.09900);
	CreateDynamicObject(1745, 1831.60400, 1334.78003, 561.01501,   0.00000, 0.00000, 1.09900);
	CreateDynamicObject(1745, 1834.78406, 1334.84094, 561.01501,   0.00000, 0.00000, 1.09900);
	CreateDynamicObject(2313, 1834.44202, 1326.54602, 561.04199,   0.00000, 0.00000, -179.39999);
	CreateDynamicObject(1747, 1833.61206, 1326.38403, 561.52502,   0.00000, 0.00000, -179.20000);
	CreateDynamicObject(2229, 1834.98804, 1326.51794, 563.01501,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2229, 1833.26697, 1326.51794, 563.01501,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2229, 1833.10596, 1326.53003, 562.91101,   1.50000, 90.19900, 0.00000);
	CreateDynamicObject(2229, 1833.10999, 1326.50403, 563.92102,   1.50000, 90.19900, 0.00000);
	CreateDynamicObject(1704, 1833.32800, 1328.90100, 560.95502,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1704, 1832.08997, 1328.51599, 560.95502,   0.00000, 0.00000, 20.90000);
	CreateDynamicObject(1704, 1834.62195, 1328.81799, 560.95502,   0.00000, 0.00000, -22.60000);
	CreateDynamicObject(2229, 1831.99902, 1326.06702, 561.02502,   0.00000, 0.00000, 177.29900);
	CreateDynamicObject(2229, 1834.86499, 1326.22498, 561.02502,   0.00000, 0.00000, -178.10001);
	CreateDynamicObject(2161, 1836.67297, 1326.35596, 560.98901,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1836.67297, 1326.35596, 562.32898,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1837.97498, 1326.38098, 562.32898,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2161, 1837.98499, 1326.38098, 560.99902,   0.00000, 0.00000, 179.79900);
	CreateDynamicObject(2172, 1829.53198, 1326.84399, 561.04797,   0.00000, 0.00000, 133.30000);
	CreateDynamicObject(1671, 1829.72302, 1327.72498, 561.51599,   0.00000, 0.00000, -30.90000);
	CreateDynamicObject(2167, 1830.26404, 1338.46704, 561.09100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1829.36401, 1338.46704, 561.09100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1828.51404, 1338.46704, 561.09100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(902, 1827.15405, 1330.04602, 563.26703,   0.00000, 85.29900, 0.20000);
	CreateDynamicObject(1601, 1827.61401, 1330.45801, 562.40002,   0.00000, -16.20000, 0.00000);
	CreateDynamicObject(1601, 1827.61304, 1328.84595, 561.72302,   0.00000, -16.20000, 0.00000);
	CreateDynamicObject(1599, 1827.47998, 1331.26501, 563.34601,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1599, 1827.64001, 1328.88501, 563.97601,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1599, 1827.64001, 1328.88501, 563.49597,   0.00000, 0.00000, -171.50000);
	CreateDynamicObject(1599, 1827.41394, 1331.27197, 563.88599,   0.00000, 0.00000, -178.10001);
	CreateDynamicObject(2167, 1827.24304, 1337.28796, 561.09100,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(2167, 1827.22095, 1336.39795, 561.09100,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(14527, 1838.95703, 1336.77905, 563.72601,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1838.95703, 1329.76794, 563.72601,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1832.74695, 1329.76794, 563.68597,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14527, 1832.74695, 1336.48901, 563.68597,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1837.69104, 1327.08203, 561.05103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2854, 1836.66101, 1327.08203, 561.05103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2290, 1839.97900, 1333.35901, 560.75897,   0.00000, 0.00000, -91.00000);
	CreateDynamicObject(2725, 1833.68005, 1337.84302, 561.42700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1839.96997, 1334.27197, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1839.96997, 1330.42200, 561.36700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2315, 1838.63196, 1333.10596, 560.95203,   0.00000, 0.00000, -91.99900);
	CreateDynamicObject(2858, 1838.53101, 1333.11096, 561.43903,   0.00000, 0.00000, -96.29900);
	CreateDynamicObject(2858, 1838.58203, 1332.10999, 561.43903,   0.00000, 0.00000, -96.29900);
	CreateDynamicObject(2001, 1839.85400, 1337.69202, 560.85699,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1839.32300, 1337.69202, 560.85699,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1827.18994, 1334.10498, 561.02698,   0.00000, 0.00000, 89.90000);
	CreateDynamicObject(1649, 1808.56702, 1373.37000, 561.88397,   0.00000, 0.89900, -0.49900);
	CreateDynamicObject(1649, 1804.25500, 1373.40796, 561.95203,   0.00000, 0.89900, -0.49900);
	CreateDynamicObject(1649, 1804.30701, 1373.42798, 565.25201,   0.00000, 0.89900, -0.49900);
	CreateDynamicObject(1649, 1808.63904, 1373.40100, 565.18298,   0.00000, 0.89900, -0.49900);
	CreateDynamicObject(19603, 1808.30505, 1374.41699, 560.98798,   89.79900, 0.00000, 0.00000);
	CreateDynamicObject(19603, 1803.60400, 1374.41699, 560.98798,   89.79900, 0.00000, 0.00000);
	CreateDynamicObject(19603, 1803.60400, 1374.43396, 565.91901,   89.79900, 0.00000, 0.00000);
	CreateDynamicObject(19603, 1808.59399, 1374.43396, 565.91901,   89.79900, 0.00000, 0.00000);
	CreateDynamicObject(2901, 1791.88904, 1368.56201, 561.13702,   0.00000, 0.00000, 88.69900);
	CreateDynamicObject(1605, 1807.60706, 1374.30200, 561.95697,   0.00000, 6.40000, -89.10000);
	CreateDynamicObject(1605, 1807.60803, 1374.24695, 564.50598,   0.00000, 6.40000, -89.10000);
	CreateDynamicObject(1601, 1808.50696, 1373.91504, 563.03400,   0.00000, 0.00000, -87.50000);
	CreateDynamicObject(1601, 1805.00195, 1374.21899, 562.35303,   0.00000, 0.00000, 85.09900);
	CreateDynamicObject(1601, 1805.00195, 1374.21899, 561.44299,   0.00000, 0.00000, 85.09900);
	CreateDynamicObject(1601, 1804.89197, 1374.22900, 564.19299,   0.00000, 0.00000, 85.09900);
	CreateDynamicObject(2172, 1839.82996, 1336.53406, 560.94800,   0.00000, 0.00000, -90.39900);
	CreateDynamicObject(1671, 1839.50903, 1335.58301, 561.51599,   0.00000, 0.00000, 90.60000);
	CreateDynamicObject(1671, 1839.04895, 1336.36804, 561.51599,   0.00000, 0.00000, 112.00000);
	CreateDynamicObject(2229, 1840.42896, 1329.33398, 560.96899,   0.00000, 0.00000, -88.70000);
	CreateDynamicObject(2229, 1840.43604, 1328.98401, 560.96899,   0.00000, 0.00000, -88.70000);
	CreateDynamicObject(2229, 1840.44495, 1328.62402, 560.96899,   0.00000, 0.00000, -88.70000);
	CreateDynamicObject(19836, 1843.42004, 1328.98706, 560.99799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1843.42004, 1328.98706, 560.99799,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.46997, 1332.91797, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.46997, 1332.82800, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.60999, 1332.84802, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.60999, 1332.35803, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.60999, 1332.15796, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.51001, 1332.24805, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.51001, 1332.24805, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.51001, 1331.64795, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.51001, 1331.41699, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19836, 1846.63000, 1331.55798, 560.99701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3092, 1845.73596, 1331.45203, 561.08801,   80.29900, -89.70000, -179.89999);
	CreateDynamicObject(3092, 1845.74097, 1332.22302, 561.03900,   -167.20000, -90.90000, -179.89999);
	CreateDynamicObject(3092, 1845.73499, 1332.95398, 561.02698,   7.69900, -92.10000, -179.89999);
	CreateDynamicObject(359, 1847.05005, 1330.18994, 561.72803,   1.00000, -90.70000, -88.99900);
	CreateDynamicObject(359, 1847.05396, 1329.92896, 561.73102,   1.00000, -90.70000, -88.99900);
	CreateDynamicObject(359, 1847.05896, 1329.60901, 561.73499,   1.00000, -90.70000, -88.99900);
	CreateDynamicObject(359, 1847.06396, 1329.33899, 561.73798,   1.00000, -90.70000, -88.99900);
	CreateDynamicObject(359, 1846.82104, 1329.52502, 561.45599,   149.79900, -92.40000, -90.49900);
	CreateDynamicObject(359, 1846.83105, 1329.85400, 561.46802,   149.79900, -92.40000, -90.49900);
	CreateDynamicObject(359, 1846.83704, 1330.08398, 561.47601,   149.79900, -92.40000, -90.49900);
	CreateDynamicObject(1242, 1840.59302, 1328.90295, 561.16101,   0.00000, 0.00000, -93.39900);
	CreateDynamicObject(1242, 1840.61304, 1329.25195, 561.16101,   0.00000, 0.00000, -93.39900);
	CreateDynamicObject(1242, 1840.58997, 1329.88501, 561.16101,   0.00000, 0.00000, -93.39900);
	CreateDynamicObject(1242, 1840.59204, 1329.91504, 561.16101,   0.00000, 0.00000, -93.39900);
	CreateDynamicObject(1225, 1840.86401, 1332.81201, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1840.86401, 1332.00098, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1840.86401, 1331.13098, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1840.86401, 1328.67102, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1841.45496, 1331.56006, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1841.45496, 1332.41101, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1843.66504, 1326.85095, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1844.60498, 1326.85095, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1845.57495, 1326.85095, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1845.11499, 1327.26099, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1844.08496, 1327.26099, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1225, 1843.19397, 1327.26099, 561.32599,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1491, 1802.20898, 1334.05798, 561.03699,   0.00000, 0.00000, 89.90000);
	CreateDynamicObject(1491, 1791.84302, 1336.17505, 561.03699,   0.00000, 0.00000, 89.90000);
	CreateDynamicObject(2172, 1792.36401, 1333.71997, 561.07098,   0.00000, 0.00000, 89.60000);
	CreateDynamicObject(10444, 1784.48596, 1332.05005, 561.24902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1208, 1785.39600, 1342.78894, 561.20599,   0.00000, 0.00000, 179.69901);
	CreateDynamicObject(1208, 1786.12598, 1342.78503, 561.20599,   0.00000, 0.00000, 179.69901);
	CreateDynamicObject(1208, 1786.91602, 1342.78101, 561.20599,   0.00000, 0.00000, 179.69901);
	CreateDynamicObject(1208, 1787.70605, 1342.77698, 561.20599,   0.00000, 0.00000, 179.69901);
	CreateDynamicObject(1208, 1788.45605, 1342.77295, 561.20599,   0.00000, 0.00000, 179.69901);
	CreateDynamicObject(1778, 1782.73596, 1339.68103, 561.23199,   0.00000, 0.00000, 178.89900);
	CreateDynamicObject(1778, 1782.74597, 1340.17102, 561.23199,   0.00000, 0.00000, 178.89900);
	CreateDynamicObject(1778, 1782.75500, 1340.62097, 561.23199,   0.00000, 0.00000, 178.89900);
	CreateDynamicObject(1778, 1782.72803, 1339.24097, 561.23199,   20.79900, 0.00000, 178.89900);
	CreateDynamicObject(2796, 1791.88403, 1336.94299, 563.89398,   0.00000, 0.00000, -90.59900);
	CreateDynamicObject(1799, 1794.86304, 1339.42102, 561.16803,   0.00000, 0.00000, 0.20000);
	CreateDynamicObject(1799, 1797.86304, 1339.43103, 561.16803,   0.00000, 0.00000, 0.20000);
	CreateDynamicObject(2725, 1796.84998, 1342.52295, 561.54700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1793.96997, 1342.52295, 561.54700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2725, 1799.69897, 1342.52295, 561.54700,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2167, 1791.83704, 1338.39197, 561.10101,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(2167, 1791.85901, 1339.30200, 561.10101,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(2755, 1792.91895, 1331.35596, 562.85602,   0.00000, 0.00000, -47.19900);
	CreateDynamicObject(2755, 1801.03101, 1341.74402, 562.85602,   0.00000, 0.00000, -47.19900);
	CreateDynamicObject(2167, 1791.88098, 1340.18103, 561.10101,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(2167, 1791.90295, 1341.08997, 561.10101,   0.00000, 0.00000, 88.59900);
	CreateDynamicObject(2229, 1796.27905, 1330.40100, 564.15198,   1.50000, 90.19900, 0.00000);
	CreateDynamicObject(2229, 1796.27502, 1330.40601, 563.13098,   1.50000, 90.19900, 0.00000);
	CreateDynamicObject(2229, 1798.14697, 1330.39795, 563.23499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2229, 1796.43604, 1330.39795, 563.23499,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2229, 1798.38696, 1330.19299, 563.13098,   0.00000, 0.00000, -176.80000);
	CreateDynamicObject(2229, 1795.07202, 1330.00806, 563.13098,   0.00000, 0.00000, -176.80000);
	CreateDynamicObject(1744, 1798.61902, 1330.06006, 562.76001,   -0.69900, 0.00000, -179.69901);
	CreateDynamicObject(1744, 1796.73901, 1330.05103, 562.76001,   -0.69900, 0.00000, -179.69901);
	CreateDynamicObject(2604, 1797.12305, 1330.70203, 561.90698,   0.00000, 0.00000, 179.70000);
	CreateDynamicObject(2290, 1801.54004, 1339.09204, 561.07300,   0.00000, 0.00000, -90.39900);
	CreateDynamicObject(2161, 1801.91504, 1333.42102, 561.09302,   0.00000, 0.00000, -90.30000);
	CreateDynamicObject(2161, 1801.90796, 1332.09998, 561.09302,   0.00000, 0.00000, -90.30000);
	CreateDynamicObject(2161, 1801.91504, 1333.41101, 562.42297,   0.00000, 0.00000, -90.30000);
	CreateDynamicObject(2161, 1801.90796, 1332.10999, 562.42297,   0.00000, 0.00000, -90.30000);
	CreateDynamicObject(1671, 1792.96301, 1333.84399, 561.60400,   0.00000, 0.00000, -64.99900);
	CreateDynamicObject(1671, 1793.12598, 1334.72595, 561.60400,   0.00000, 0.00000, -106.70000);
	CreateDynamicObject(1671, 1796.01404, 1331.30200, 561.60400,   0.00000, 0.00000, 19.79900);
	CreateDynamicObject(1671, 1798.06201, 1331.45703, 561.53400,   -7.09900, 0.00000, 19.79900);
	CreateDynamicObject(2257, 1794.24597, 1342.87402, 564.72699,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2257, 1799.61597, 1342.87402, 564.72699,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2286, 1796.96301, 1342.83496, 563.90698,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16151, 1803.30103, 1340.67395, 561.41901,   0.00000, 0.00000, -179.89999);
	CreateDynamicObject(19128, 1804.17297, 1341.46704, 561.16101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19128, 1804.17297, 1337.62598, 561.16101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19128, 1804.17297, 1345.29700, 561.16101,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18710, 1804.73596, 1345.25195, 560.74701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18643, 1806.11401, 1341.76294, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.10901, 1342.09302, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.10303, 1342.54297, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.09900, 1342.81396, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.09595, 1343.07397, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.08899, 1343.58398, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.09302, 1343.32397, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.08398, 1343.93396, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.11499, 1341.74402, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.12097, 1341.27405, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.11902, 1341.43396, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.12402, 1341.07397, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.12903, 1340.66394, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.13696, 1340.10400, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.14502, 1339.51294, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.14099, 1339.81396, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.13306, 1340.35400, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.12695, 1340.82397, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.10999, 1342.00403, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.10706, 1342.29395, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.14905, 1339.22400, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.15405, 1338.88403, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.15796, 1338.57397, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.15906, 1338.55396, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.16699, 1337.98401, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.17102, 1337.64294, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.17505, 1337.31299, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.18005, 1336.92200, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.18506, 1336.55200, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.19202, 1335.99194, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.18799, 1336.27197, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1806.19604, 1335.67200, 561.05200,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1805.88599, 1335.66699, 561.05298,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1805.59595, 1335.66296, 561.05298,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1805.24597, 1335.65796, 561.05402,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1804.97595, 1335.65503, 561.05402,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1804.61597, 1335.65002, 561.05499,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1804.80603, 1335.65295, 561.05499,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1804.35596, 1335.64697, 561.05603,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1804.06604, 1335.64294, 561.05603,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1803.77600, 1335.63904, 561.05701,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1803.53601, 1335.63599, 561.05701,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1803.25500, 1335.63196, 561.05798,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1802.90503, 1335.62695, 561.05798,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1803.05505, 1335.62903, 561.05798,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1802.73499, 1335.62500, 561.05902,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1802.50500, 1335.62195, 561.05902,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(18643, 1802.31494, 1335.62000, 561.06000,   0.00000, -89.89900, 0.80000);
	CreateDynamicObject(19820, 1804.37500, 1338.51697, 562.04199,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19820, 1804.12500, 1337.83704, 562.00201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19820, 1803.61401, 1337.31702, 562.00201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19820, 1804.19397, 1339.32703, 562.00201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19820, 1804.35400, 1340.18701, 562.00201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19820, 1804.36804, 1341.17700, 562.10101,   0.00000, -82.60000, 0.00000);
	CreateDynamicObject(19820, 1804.32898, 1342.35400, 562.08002,   0.00000, -82.60000, 79.40000);
	CreateDynamicObject(2001, 1806.07104, 1371.01294, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.07104, 1369.30200, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1805.07104, 1370.19299, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.62195, 1370.19299, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.62195, 1356.16101, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1805.04102, 1356.16101, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1805.86206, 1356.92200, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1805.86206, 1355.35205, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.67297, 1355.35205, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.67297, 1356.90198, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.04297, 1356.06201, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1823.47302, 1356.06201, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1823.47302, 1370.14197, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1821.96204, 1370.14197, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.70203, 1369.40198, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.70203, 1370.97302, 559.59100,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.46399, 1345.25806, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.85400, 1344.63794, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.29297, 1343.87805, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.06299, 1330.43701, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.06299, 1329.17700, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1806.65405, 1329.72705, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1805.23206, 1329.72705, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.13306, 1329.72705, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1823.40405, 1329.72705, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.76294, 1330.35706, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.76294, 1329.19702, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.76294, 1345.26599, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.76294, 1343.96594, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1822.14294, 1344.47595, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2001, 1823.30396, 1344.47595, 561.07001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3811, 1817.40601, 1326.20496, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1819.65601, 1326.23706, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1821.92505, 1326.26794, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1824.18506, 1326.29895, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1826.36499, 1326.32898, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1815.10400, 1326.17297, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1812.91394, 1326.14294, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1810.76404, 1326.11401, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1808.54395, 1326.08301, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1806.34399, 1326.05200, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1804.21399, 1326.02295, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(3811, 1802.10400, 1325.99402, 561.49902,   0.00000, 0.00000, 90.79900);
	CreateDynamicObject(2231, 1825.21106, 1374.63501, 559.53003,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2231, 1827.04700, 1371.83801, 559.53003,   0.00000, 0.00000, -90.19900);
	CreateDynamicObject(1704, 1824.19104, 1370.01697, 559.45001,   0.00000, 0.00000, 125.39900);
	CreateDynamicObject(1704, 1823.54297, 1370.93005, 559.45001,   0.00000, 0.00000, 125.39900);
	CreateDynamicObject(1723, 1821.51794, 1374.00806, 559.49701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1817.59705, 1374.00806, 559.49701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1723, 1826.48499, 1370.60095, 559.49701,   0.00000, 0.00000, -90.29900);
	CreateDynamicObject(1723, 1826.46997, 1367.65198, 559.49701,   0.00000, 0.00000, -90.29900);
	CreateDynamicObject(2725, 1820.58997, 1374.05603, 559.93201,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, 1824.91797, 1369.03296, 559.47498,   0.00000, 0.00000, -89.99900);
	CreateDynamicObject(2314, 1819.85596, 1372.69202, 559.47498,   0.00000, 0.00000, 0.50000);
	CreateDynamicObject(996, 1803.35205, 1354.37305, 560.37799,   0.00000, 0.00000, 89.80000);
	CreateDynamicObject(2394, 1803.38306, 1360.85205, 560.38800,   0.00000, 0.00000, -89.20000);
	CreateDynamicObject(2394, 1803.40698, 1359.07104, 560.38800,   0.00000, 0.00000, -89.20000);
	CreateDynamicObject(2394, 1803.43201, 1357.21997, 560.38800,   0.00000, 0.00000, -89.20000);
	CreateDynamicObject(2394, 1803.45801, 1355.35999, 560.38800,   0.00000, 0.00000, -89.20000);
	CreateDynamicObject(2394, 1803.46497, 1354.80005, 560.38800,   0.00000, 0.00000, -89.20000);
	CreateDynamicObject(2373, 1802.52405, 1361.37805, 561.52197,   -22.09900, 0.00000, -90.79900);
	CreateDynamicObject(2373, 1802.48401, 1358.37805, 561.52197,   -22.09900, 0.00000, -90.79900);
	CreateDynamicObject(2373, 1802.43994, 1355.30798, 561.52197,   -22.09900, 0.00000, -90.79900);
	CreateDynamicObject(2390, 1803.30200, 1360.37195, 562.98602,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(2390, 1803.27295, 1361.82202, 563.00598,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(2390, 1803.33105, 1358.81104, 563.00598,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(2390, 1803.30896, 1357.36902, 562.96600,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(2390, 1803.33997, 1355.74902, 562.96600,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(2390, 1803.36804, 1354.31897, 562.96600,   0.00000, 0.00000, 91.10000);
	CreateDynamicObject(1744, 1827.13696, 1348.06201, 563.20398,   0.00000, 0.00000, -88.99900);
	CreateDynamicObject(2608, 1826.78296, 1347.53601, 561.70203,   0.00000, 0.00000, -89.89900);
	CreateDynamicObject(1782, 1826.82495, 1347.60901, 563.61401,   0.00000, 0.00000, -89.80000);
	CreateDynamicObject(2229, 1826.53796, 1347.13696, 563.70697,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(2229, 1826.54395, 1348.84802, 563.72699,   0.00000, 0.00000, 89.79900);
	CreateDynamicObject(2229, 1826.53796, 1346.99902, 563.59302,   0.30000, 89.90000, 89.69900);
	CreateDynamicObject(2229, 1826.55298, 1346.99695, 564.61298,   0.30000, 89.90000, 89.69900);
	CreateDynamicObject(2290, 1823.60303, 1350.05103, 561.05103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2290, 1821.61206, 1346.46899, 561.05103,   0.00000, 0.00000, 90.19900);
	CreateDynamicObject(2290, 1825.99695, 1345.12805, 561.05103,   0.00000, 0.00000, -179.20000);
	CreateDynamicObject(1318, 1824.82788, 1363.88599, 560.48022,   0.00000, 90.00000, -178.62000);
	//LSPD interior by Dento
	CreateDynamicObject(19377, 1116.23206, -724.26898, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1105.79077, -714.51196, 1090.01465,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1116.23962, -714.70526, 1090.01733,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1126.70239, -724.26270, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1126.78564, -714.64893, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1120.77148, -729.07672, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1117.56091, -729.06824, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1502, 1113.63159, -729.08765, 1090.05750,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 1114.41223, -729.08752, 1091.81714,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1111.22559, -729.08771, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1110.96667, -727.44244, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.96594, -724.26221, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.95361, -721.06195, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.96167, -717.90222, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.96460, -714.74072, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1112.51465, -709.89777, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1114.84021, -733.60986, 1093.54333,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1109.68457, -730.66168, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1109.67590, -733.85443, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1109.66418, -736.99561, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1120.05029, -733.73578, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1120.04272, -730.53558, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14782, 1110.16895, -735.27905, 1091.08679,   0.00000, 0.00000, 89.21996);
	CreateDynamicObject(19377, 1125.28833, -733.79517, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1123.89526, -738.46075, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1127.07837, -738.46783, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1130.21619, -738.46826, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1130.57703, -730.61340, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1130.63513, -733.75311, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1130.65417, -736.87372, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 1120.01514, -736.93140, 1091.81665,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1119.99011, -736.14148, 1090.07874,   0.00000, 0.00000, -90.80000);
	CreateDynamicObject(2627, 1120.93079, -730.22589, 1090.09192,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 1123.31018, -730.21313, 1090.09192,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2627, 1125.79395, -730.21259, 1090.09192,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2628, 1129.98462, -730.03741, 1090.13391,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2628, 1128.26440, -730.06610, 1090.07495,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2632, 1128.13293, -736.96814, 1090.10999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2632, 1128.05896, -734.14838, 1090.10999,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1122.06372, -709.90698, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1126.69788, -714.59100, 1093.52710,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1126.70068, -724.22278, 1093.54602,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1116.23206, -724.26898, 1093.50330,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1116.24426, -714.68579, 1093.52795,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1702, 1131.38318, -726.71222, 1090.06787,   0.00000, 0.00000, 269.57953);
	CreateDynamicObject(1702, 1131.39954, -722.96509, 1090.06787,   0.00000, 0.00000, 269.57953);
	CreateDynamicObject(1702, 1131.28271, -714.14673, 1090.06787,   0.00000, 0.00000, 269.57953);
	CreateDynamicObject(1702, 1131.28882, -710.30072, 1090.06787,   0.00000, 0.00000, 269.57953);
	CreateDynamicObject(1702, 1131.39954, -722.96509, 1090.06787,   0.00000, 0.00000, 269.57953);
	CreateDynamicObject(1808, 1131.65491, -717.19922, 1090.09033,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1776, 1110.15527, -729.76282, 1091.20398,   0.00000, 0.00000, 92.09998);
	CreateDynamicObject(1808, 1110.16052, -731.29565, 1090.09167,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2614, 1126.12170, -710.02997, 1092.18677,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19172, 1126.58899, -728.92725, 1092.07617,   0.00000, 0.00000, 180.54005);
	CreateDynamicObject(19173, 1132.10291, -725.73456, 1092.13660,   0.00000, 0.00000, 90.89991);
	CreateDynamicObject(2199, 1118.73376, -710.09302, 1090.10364,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2606, 1122.15088, -719.32971, 1091.70007,   0.00000, 0.00000, -90.12000);
	CreateDynamicObject(2161, 1122.44104, -718.47510, 1090.12012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2167, 1122.46069, -717.56110, 1090.13855,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2604, 1121.97498, -715.19513, 1090.94299,   0.00000, 0.00000, -90.54000);
	CreateDynamicObject(2604, 1121.96448, -723.40771, 1090.94299,   0.00000, 0.00000, -90.54000);
	CreateDynamicObject(2161, 1122.45020, -719.77869, 1090.12012,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2167, 1122.41711, -721.11700, 1090.13855,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1715, 1120.52295, -716.42078, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1120.47742, -714.46124, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1120.56934, -722.68774, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1120.54346, -724.51453, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2611, 1111.14441, -725.32922, 1091.74280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2612, 1111.10645, -723.15527, 1091.81152,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2612, 1111.08569, -720.81543, 1091.81152,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2611, 1111.09692, -719.00714, 1091.74280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19420, 1122.73755, -719.77405, 1092.93628,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19396, 1115.67041, -709.90759, 1091.81714,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1116.12183, -705.05322, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1126.64355, -705.02100, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1110.98157, -708.37189, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.99915, -705.16876, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1110.99304, -702.01984, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1112.52051, -700.36627, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1115.66333, -700.34729, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1118.80530, -700.36212, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1121.90820, -700.35736, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1125.05151, -700.36652, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1128.17261, -700.35651, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1131.23340, -700.38062, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1131.96313, -701.92590, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1131.96204, -705.02576, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1131.97559, -708.16583, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1128.57153, -701.85486, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1123.39124, -701.77350, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1119.83960, -701.88953, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1114.51306, -702.00110, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 1116.19873, -705.02948, 1093.55078,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1126.64355, -705.02100, 1093.48230,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19377, 1125.40771, -733.81982, 1093.52710,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2602, 1129.06335, -700.84247, 1090.63098,   0.00000, 0.00000, 91.25998);
	CreateDynamicObject(2603, 1131.25903, -701.77155, 1090.52356,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2603, 1124.05359, -701.79510, 1090.36938,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2603, 1120.59485, -701.76575, 1090.52087,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2603, 1115.24683, -701.85004, 1090.51404,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2603, 1111.70410, -701.79498, 1090.46716,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2602, 1127.71436, -700.82733, 1090.52673,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2602, 1122.77087, -700.82318, 1090.65479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2602, 1119.21643, -700.88885, 1090.67114,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2602, 1113.89453, -700.80658, 1090.62512,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 1114.85364, -733.78687, 1090.05078,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1118.88062, -709.89777, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1893, 1112.25256, -706.61322, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1118.45288, -706.37567, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1130.31238, -706.80200, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1127.82227, -718.80573, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1127.84241, -719.69897, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1123.69043, -711.58801, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1123.16174, -727.47046, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1116.64478, -726.84082, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1114.87439, -722.12524, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1115.31006, -711.68188, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1114.47156, -733.59540, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1125.60315, -734.03680, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1112.76208, -703.46918, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1113.56714, -703.52979, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19303, 1111.84082, -703.52557, 1091.38049,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1116.32874, -703.50513, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1119.81055, -703.48749, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1123.27441, -703.49768, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1126.74744, -703.49481, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, 1130.20996, -703.48425, 1093.21252,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1115.44165, -703.40057, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19303, 1117.16785, -703.42529, 1091.38049,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1118.88745, -703.41687, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19303, 1120.80310, -703.38171, 1091.38049,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1122.44519, -703.34918, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2603, 1124.05359, -701.79510, 1091.26587,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1124.30798, -703.38434, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19303, 1126.00708, -703.41919, 1091.38049,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1127.69373, -703.39587, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1129.55347, -703.42413, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19302, 1131.23901, -703.42432, 1091.36609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19396, 1110.94189, -711.55054, 1091.81665,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1108.06641, -709.76337, 1092.64771,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1100.60974, -712.75891, 1092.64771,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19464, 1100.63525, -718.69482, 1092.64771,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19464, 1107.96143, -719.25336, 1092.64771,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1102.09546, -719.27484, 1092.64771,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1105.71204, -714.42938, 1093.52795,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1502, 1110.90808, -710.76361, 1090.07874,   0.00000, 0.00000, -90.80000);
	CreateDynamicObject(2604, 1110.31409, -717.28394, 1090.94299,   0.00000, 0.00000, -90.54000);
	CreateDynamicObject(1715, 1108.94336, -716.63153, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1108.80603, -718.52893, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2604, 1105.73657, -717.25128, 1090.94299,   0.00000, 0.00000, -90.54000);
	CreateDynamicObject(1715, 1104.34375, -716.59705, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1104.38550, -718.43573, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1893, 1107.59155, -717.14484, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1102.73206, -717.42633, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1893, 1104.37622, -711.71808, 1093.67834,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2611, 1110.81604, -713.52075, 1091.95166,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19465, 1102.19714, -709.76129, 1092.62451,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1502, 1101.44971, -709.83081, 1090.05750,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 1105.78284, -705.25293, 1090.02283,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19464, 1108.57092, -699.52795, 1092.64771,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19464, 1100.50696, -706.78082, 1092.64771,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19464, 1103.38879, -703.89441, 1092.64771,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1108.11169, -703.89832, 1092.64771,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1105.62927, -704.90619, 1093.52795,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2165, 1108.80713, -707.13123, 1090.10901,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1110.20801, -706.55762, 1090.05334,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1703, 1101.19568, -714.91437, 1090.06274,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1106.69739, -705.82367, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1715, 1106.58325, -707.42804, 1090.05334,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2254, 1110.83826, -706.86835, 1092.36023,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2257, 1100.76025, -715.00726, 1092.15869,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2276, 1117.20740, -728.47845, 1091.88562,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19462, 1125.42114, -709.85901, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1132.23792, -709.82916, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1128.89001, -709.85406, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1132.15918, -711.24548, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1132.20715, -714.40253, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1132.22974, -717.43134, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1132.33130, -720.61279, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1132.25439, -724.08563, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1132.24365, -727.42078, 1092.01770,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19462, 1130.39832, -729.05432, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1127.10608, -729.05566, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19462, 1123.87524, -729.05542, 1092.01770,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1122.39636, -723.11823, 1089.21350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1122.39771, -717.24487, 1089.21350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1122.41333, -715.26105, 1089.21350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19384, 1122.47656, -711.47876, 1091.75464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19384, 1122.44019, -727.53302, 1091.75464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1122.38538, -722.94238, 1091.54089,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, 1122.40234, -716.37628, 1091.54089,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1569, 1132.12952, -722.05774, 1089.97888,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, 1132.14185, -719.13605, 1089.97888,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19368, 1120.03333, -740.06299, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1120.02332, -743.19775, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1109.62231, -740.08478, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1109.62256, -743.29968, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, 1114.72021, -743.31598, 1090.05078,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1120.03235, -746.42102, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1109.61707, -746.48376, 1091.81482,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19368, 1118.48572, -748.08624, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1115.28906, -748.09998, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1112.16553, -748.12823, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1111.06555, -748.12665, 1091.81482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19377, 1114.82520, -743.46332, 1093.54333,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19368, 1121.54492, -738.46960, 1091.81604,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18070, 1114.52087, -744.50757, 1090.53699,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1117.25562, -738.94891, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1116.15405, -738.92957, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1115.09290, -738.95435, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1114.06445, -738.98920, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1113.09937, -739.01648, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1117.27063, -737.52460, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1116.16980, -737.52466, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1115.02588, -737.51526, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1114.03918, -737.52081, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1113.12671, -737.51862, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1113.09070, -736.19922, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1113.98157, -736.16272, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1115.02710, -736.13068, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1116.24854, -736.07684, 1090.13892,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1722, 1117.40515, -736.07471, 1090.13892,   0.00000, 0.00000, 180.00000);
    CreateObject(19380, 1662.48743, -971.75378, 706.51898,   0.00000, 90.00000, 0.00000);
    //INTERIOR BANK
    CreateDynamicObject(19380, 1662.48743, -971.75378, 706.51898,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1656.65344, -971.62341, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1658.31506, -973.28998, 701.63879,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1656.65259, -974.96600, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1666.42468, -973.18341, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1668.09167, -971.52069, 701.63879,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1668.08789, -974.84570, 701.63879,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1667.57214, -974.94922, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1657.16797, -974.99103, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 700.80029,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 703.67731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 706.39130,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1662.84253, -976.63281, 699.00177,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1660.28625, -976.63782, 699.00378,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1278, 1664.43274, -976.71887, 706.34930,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1666.65210, -976.65454, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.18835, -976.64697, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1657.94739, -976.62915, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1278, 1660.03259, -976.68048, 706.34930,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.18835, -976.64697, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1666.59045, -976.64697, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1657.94824, -976.64899, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.55725, -969.82300, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1657.22937, -969.77875, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1656.33521, -968.05743, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1668.52039, -968.11981, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.40320, -967.14172, 701.63678,   90.00000, 0.00000, 55.00000);
	CreateDynamicObject(19454, 1659.46021, -967.08081, 701.63678,   90.00000, 0.00000, -55.00000);
	CreateDynamicObject(19380, 1662.42456, -962.27173, 706.51703,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19391, 1662.37244, -966.14618, 701.82550,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1662.29138, -966.14740, 707.60278,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1662.37500, -971.72113, 700.00342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19375, 1662.43970, -963.05243, 700.00140,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1665.55212, -966.13098, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1667.22107, -964.33282, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.22095, -960.95282, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1660.89551, -964.39307, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 1663.72046, -961.21100, 703.62903,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1659.23047, -962.72852, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19370, 1664.28015, -971.68073, 707.10889,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.76160, -973.19739, 707.10687,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19370, 1661.23926, -971.67780, 707.10889,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.76013, -970.15582, 707.10687,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19443, 1663.48096, -971.70142, 706.37988,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1662.75806, -972.42108, 706.38190,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19443, 1662.04016, -971.69843, 706.37988,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1662.76147, -970.98419, 706.38190,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18075, 1662.37048, -970.06836, 706.46777,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2207, 1663.03015, -971.79346, 700.09070,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1727, 1663.31348, -970.20789, 699.95898,   0.00000, 0.00000, -40.00000);
	CreateDynamicObject(1727, 1659.96106, -970.93146, 699.95898,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(1727, 1661.50989, -969.53607, 699.95898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1662.10669, -973.59125, 700.05157,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1661.05359, -973.11829, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1663.09033, -973.12018, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1657.44141, -970.53723, 700.08978,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.66931, -972.24451, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.64197, -974.36877, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.65918, -973.32990, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.06738, -972.08447, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.04700, -973.17102, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.07214, -974.26880, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2230, 1661.15503, -966.06073, 705.13647,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2230, 1664.17798, -966.06073, 705.12848,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.27222, -964.76300, 705.05292,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19370, 1662.46216, -964.76501, 705.05090,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19370, 1662.46216, -964.76501, 706.45093,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1649, 1662.36194, -966.43878, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2614, 1662.38245, -966.27612, 703.86688,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1667.24573, -969.26605, 700.08978,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1663.83496, -966.64502, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.88159, -966.68427, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1661.58777, -966.17401, 700.06921,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.35779, -966.45477, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1662.35779, -966.48077, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1734, 1662.79236, -971.69281, 706.42902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.21094, -957.63080, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1662.45776, -953.80481, 700.00342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19391, 1658.35205, -961.25458, 701.81750,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1658.35767, -962.00018, 700.06921,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1659.23047, -959.72552, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1660.90051, -958.06427, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1662.50964, -956.62701, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.89014, -956.62653, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1666.37830, -962.08569, 700.08868,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1726, 1666.34082, -958.71960, 700.08868,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1664.09412, -957.83966, 700.08765,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1727, 1664.97131, -964.99353, 700.08759,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1666.50635, -965.32239, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1666.49377, -957.60059, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2126, 1665.15479, -960.55115, 700.08881,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2126, 1665.19629, -963.32709, 700.08881,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2614, 1667.07581, -961.43964, 702.49182,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19375, 1671.89587, -965.46210, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90527, -964.59674, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.89502, -958.07025, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90881, -957.41803, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90002, -961.44330, 704.69342,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90002, -961.44330, 705.48541,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2200, 1661.01624, -959.01569, 700.08978,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14596, 1652.60913, -957.46368, 693.38580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19375, 1662.70935, -963.04932, 688.40442,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1658.96338, -967.07098, 690.17383,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1662.71594, -970.60370, 688.41443,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1658.95447, -955.35168, 690.21381,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1663.30591, -958.41248, 690.21381,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.79163, -962.90070, 690.17383,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1661.68274, -971.20868, 690.17383,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.79285, -967.26093, 690.17578,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1663.32397, -960.97894, 688.45349,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2206, 1661.45435, -961.97198, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -962.95599, 688.45349,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -963.92999, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -964.90399, 688.45349,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -965.87799, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1664.47815, -964.20013, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.46436, -962.77960, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.43201, -961.27374, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.47046, -965.76575, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1660.37378, -961.13538, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.36292, -962.68683, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.31726, -964.14752, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.34314, -965.74756, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1662.39783, -959.87054, 688.49377,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.91016, -956.80499, 689.27472,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1662.68140, -956.75812, 690.17572,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1667.42212, -963.23273, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.40771, -963.19348, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.42908, -971.07928, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.40833, -968.83728, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1661.87451, -972.81970, 689.27472,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1657.31396, -969.12482, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1657.32751, -969.12482, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(2230, 1663.76355, -971.30103, 688.35822,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19448, 1659.08435, -975.93622, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1665.84216, -975.93213, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(2230, 1660.47583, -971.26636, 688.35822,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1661.30225, -970.88525, 688.45660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1663.53259, -970.78687, 688.45660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.15002, -975.86359, 690.17572,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1660.68494, -975.89722, 690.17572,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(1828, 1662.12476, -968.67163, 688.49323,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1662.24158, -967.92981, 691.94348,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1662.28015, -962.10773, 691.98151,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1657.56604, -961.96283, 688.48071,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19448, 1657.30774, -969.11176, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.04810, -975.93469, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1665.78918, -975.92078, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1662.42566, -975.91620, 691.89569,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.43506, -966.83893, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.44019, -957.22589, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1662.97778, -956.75787, 691.09570,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19380, 1663.13403, -961.99518, 691.84302,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1663.08032, -967.48743, 691.84497,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19174, 1659.05225, -967.67047, 690.17877,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19175, 1665.68555, -968.27643, 690.17792,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19172, 1665.68494, -961.49689, 690.19287,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2491, 1663.91870, -968.71417, 687.72620,   0.00000, 0.00000, -47.00000);
	CreateDynamicObject(1952, 1663.73193, -968.88348, 689.70990,   55.00000, 91.00000, -149.00000);
	CreateDynamicObject(3077, 1662.46704, -971.14868, 692.41919,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(2227, 1662.71179, -966.43073, 688.49408,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3077, 1662.48022, -958.49329, 692.41919,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19448, 1660.61646, -956.79962, 694.01569,   -90.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.19775, -956.79871, 694.01569,   -90.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -965.45404, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -964.85797, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -964.26202, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -963.66602, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -963.07001, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1657.34546, -964.39307, 691.09570,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(1536, 1658.40564, -962.00049, 694.28979,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1658.35205, -961.25458, 696.00647,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1653.07410, -963.40411, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1650.81616, -964.45227, 684.22479,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1656.31763, -956.78729, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1661.04724, -961.51617, 684.22479,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1662.65161, -961.14771, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1657.63232, -961.26575, 682.60437,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1655.57104, -969.17828, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1655.57104, -965.98853, 684.23877,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1661.24683, -965.98999, 684.43079,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19172, 1658.17444, -965.90759, 684.55719,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1726, 1660.10291, -965.30756, 682.63391,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1727, 1656.93030, -965.29083, 682.63568,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1657.45129, -965.35327, 682.69244,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2126, 1657.67688, -964.35883, 682.58270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2614, 1653.20264, -961.37762, 684.42200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19174, 1659.57642, -961.59302, 684.41058,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.40674, -965.99768, 684.43280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1673.69470, -966.00177, 684.43481,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19379, 1660.32056, -970.69043, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.82617, -970.70868, 682.59949,   -0.00400, 90.00000, 0.06000);
	CreateDynamicObject(19454, 1679.53491, -966.00079, 684.31482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1655.57483, -970.78229, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1662.68152, -967.01599, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1667.44470, -971.74622, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1679.07483, -970.76233, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1667.44470, -971.24622, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.44250, -971.36652, 681.81091,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.41479, -971.46899, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.44470, -971.45221, 681.80688,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.41272, -971.63385, 681.80688,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1662.78552, -966.65765, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1662.87305, -966.41022, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.04565, -966.99860, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.04565, -966.99860, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.14392, -966.97192, 681.81293,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1657.16846, -976.89392, 684.20892,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(19450, 1677.52844, -976.71588, 684.20892,   0.00000, 0.00000, -48.00000);
	CreateDynamicObject(19450, 1660.71936, -984.86407, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1673.97595, -984.69043, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1678.49524, -970.70831, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1673.69922, -978.93152, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1663.19775, -978.88202, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1659.90479, -978.85461, 682.59351,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1672.02271, -987.53003, 682.60748,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1662.30005, -987.55170, 682.60553,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(14413, 1660.40491, -980.61688, 680.50598,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1655.99084, -989.59222, 684.20892,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1678.70947, -989.42102, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1672.42834, -996.52631, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1665.20630, -996.52954, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1679.14075, -996.31305, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1680.95544, -992.56982, 684.20490,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1655.19873, -996.27271, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1653.71216, -993.49536, 684.20490,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1655.92603, -992.17084, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1678.53967, -993.41864, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.27588, -991.98706, 682.59949,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1663.10400, -991.85168, 682.60352,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19358, 1672.17358, -970.22870, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.03430, -970.23053, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.94434, -970.22852, 681.80688,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.86829, -970.22650, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.74036, -970.23053, 681.80292,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.17566, -967.54669, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.92444, -967.54138, 681.80688,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.03430, -967.54150, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.74036, -967.58447, 681.80292,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.86829, -967.54248, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.57642, -970.21252, 681.80090,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.57642, -967.54248, 681.80090,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(1536, 1670.57324, -964.19226, 682.51721,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 1666.59705, -966.03491, 682.51721,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19176, 1667.35913, -996.42566, 683.93018,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1665.52271, -1001.17371, 683.64270,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1669.21240, -1001.15674, 683.65869,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1668.90662, -998.10468, 685.32269,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1665.97058, -998.10272, 685.33069,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1673.25439, -998.16711, 682.72272,   33.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1661.49133, -998.13934, 682.72272,   -33.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1669.65576, -1001.24042, 683.33868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1670.11609, -1001.24353, 683.02368,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1670.57666, -1001.25226, 682.69373,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.03662, -1001.24109, 682.36371,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.45862, -1001.24512, 682.18372,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.90051, -1001.25153, 681.89868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1672.30273, -1001.25348, 681.62872,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1672.72717, -1001.24298, 681.35870,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1665.09607, -1001.22498, 683.33868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.65222, -1001.23010, 683.06873,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.20837, -1001.23523, 682.76868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1663.80115, -1001.22870, 682.51367,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1663.37744, -1001.22302, 682.24969,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.99268, -1001.23077, 681.99768,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.61279, -1001.22302, 681.75171,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.18933, -1001.24329, 681.47968,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.59705, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.84668, -976.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.84668, -975.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1671.22705, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.99280, -976.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1664.24304, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.64502, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.99268, -975.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1664.60999, -975.73181, 683.34930,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1670.24316, -975.72345, 683.34930,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19435, 1663.99280, -990.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1663.99268, -989.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1664.24304, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.64502, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.84668, -990.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.84668, -989.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.59705, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1671.22705, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.80054, -971.60742, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.80249, -971.60938, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.95862, -971.66241, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.96082, -971.66351, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1668.88403, -971.64197, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1665.77905, -971.68475, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1668.88599, -971.64398, 685.42963,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1665.78113, -971.68683, 685.40161,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99792, -966.36957, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99988, -966.36761, 685.56262,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74365, -966.35168, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74573, -966.34967, 685.32458,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19381, 1667.31580, -982.70880, 682.61493,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1677.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1673.82422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1670.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1666.82422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1663.32422, -992.69708, 682.60742,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.82422, -992.69708, 682.60742,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1657.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.32007, -989.64728, 682.61139,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.31274, -987.56097, 682.61340,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.44006, -976.51031, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.43689, -974.11902, 682.60138,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.15894, -968.47070, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.15552, -971.62988, 682.60339,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.14941, -974.82123, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -968.61041, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -971.61041, 682.60138,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -974.61041, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.31506, -994.88812, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1216, 1664.62183, -989.77948, 683.34930,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1670.23364, -989.68671, 683.34930,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19372, 1665.55750, -984.24152, 682.61731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1669.06519, -981.03992, 682.61731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1502, 1672.91052, -965.99878, 682.66650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1660.46240, -966.02490, 682.66650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19373, 1660.72278, -973.38147, 700.00690,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1664.19324, -970.30255, 700.00690,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1660.73840, -970.30151, 700.00629,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1664.19141, -973.38068, 700.00629,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1726, 1654.57568, -993.88953, 682.60760,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1656.18237, -990.42102, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1658.12073, -995.30109, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2126, 1656.79932, -993.20648, 682.59167,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1654.74890, -990.55658, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1654.64624, -995.29932, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.18701, -991.68616, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.21997, -993.80585, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19174, 1653.83386, -992.88977, 684.66608,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2126, 1676.75720, -993.20923, 682.59167,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1678.39221, -995.32458, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1726, 1676.31909, -990.28052, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1680.03442, -991.83075, 682.60760,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1679.71533, -995.15234, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1679.85291, -990.56287, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1674.32520, -991.69720, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1674.31262, -993.74756, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19175, 1680.88062, -992.88879, 684.73419,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1659.82190, -992.22430, 682.69482,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1674.90588, -993.20551, 682.69482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2811, 1669.43213, -990.82062, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.22046, -990.83411, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1669.40662, -994.72894, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.17786, -994.67572, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1664.38135, -971.64264, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1667.46509, -971.67499, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1670.43530, -971.72980, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99182, -968.97778, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99268, -968.98340, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1672.07544, -970.30029, 686.36530,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(9131, 1671.99268, -968.98340, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1672.16272, -967.69873, 686.36530,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1649, 1662.68506, -970.26831, 686.28632,   0.00000, 90.00000, -90.00000);
	CreateDynamicObject(9131, 1662.74438, -968.89624, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74194, -968.89771, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.74121, -967.32971, 686.28632,   0.00000, 90.00000, -90.00000);
	CreateDynamicObject(2200, 1669.07825, -966.22864, 682.68683,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1664.39514, -966.23621, 682.68683,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1828, 1667.77917, -968.79425, 682.66248,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1670.26538, -970.00128, 682.68542,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(1714, 1664.33838, -970.21857, 682.68542,   0.00000, 0.00000, -62.00000);
	CreateDynamicObject(1714, 1667.39148, -970.04071, 682.68542,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1670.32922, -967.69934, 682.68542,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1664.26782, -967.65887, 682.68542,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1669.55005, -977.65448, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.26160, -977.63495, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, 1670.90918, -988.73779, 682.69318,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2606, 1669.72595, -966.20422, 685.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2606, 1669.72595, -966.20422, 684.84308,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 1677.75940, -993.34680, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1667.43481, -993.30182, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.26416, -993.34833, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1664.09070, -983.83752, 685.97498,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1672.86572, -983.84723, 685.97900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1674.54370, -974.38708, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1674.64111, -970.71228, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1664.31567, -974.47052, 685.98499,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.26782, -974.66217, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.41858, -965.23651, 686.00500,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1665.27612, -968.87659, 686.02502,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1654.17944, -961.91632, 685.98499,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19443, 1654.88867, -958.56860, 686.58557,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(4595, 1812.95972, -1071.76428, 686.49622,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4702, 1825.28564, -990.24133, 686.35730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4650, 1662.22815, -976.74054, 710.07861,   0.00000, -90.00000, 90.00000);
	CreateDynamicObject(14576, 1677.25659, -980.76630, 678.18488,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2634, 1677.76440, -987.50836, 671.68329,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(1726, 1668.31262, -981.95514, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1726, 1666.28406, -983.28662, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.64502, -982.69666, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1668.86804, -982.63745, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1665.71082, -987.56238, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1665.71082, -981.06238, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1665.71277, -984.27441, 686.06012,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1667.36914, -989.22498, 686.06012,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19443, 1665.71277, -977.56238, 686.06409,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03259, -987.56348, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03223, -984.16211, 686.06012,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03125, -980.87512, 686.05811,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03784, -977.56500, 686.05609,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1667.37561, -975.89868, 686.06012,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(2434, 1677.79968, -999.17450, 669.99207,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2434, 1676.67566, -999.00781, 669.99408,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2435, 1677.96814, -998.04462, 669.99261,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2435, 1676.67773, -998.07520, 669.99261,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2434, 1677.97009, -997.13013, 669.99408,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2434, 1676.84619, -996.95288, 669.99213,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.19604, -989.16309, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1674.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1675.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1675.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1678.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1679.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1679.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1680.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1680.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1679.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1679.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1678.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1678.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1677.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1677.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1676.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1676.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1675.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1675.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1550, 1674.38489, -1003.73480, 670.24860,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1674.75854, -1003.40149, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.24988, -1003.33649, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.41284, -1002.94733, 670.12360,   69.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.23401, -1002.45795, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.05933, -1002.70532, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.09033, -999.48700, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.35583, -999.07501, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.58569, -999.58228, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.20776, -989.49445, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.75024, -989.43054, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.48401, -989.88702, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.98157, -989.83002, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.27588, -990.34778, 670.05060,   -105.00000, 0.00000, 287.00000);
	CreateDynamicObject(1550, 1675.00476, -1001.74683, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1676.12549, -998.38446, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.97021, -997.99341, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.61206, -998.46313, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.05933, -996.55249, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.51147, -996.45801, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.94556, -996.01849, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.39294, -995.96844, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1676.98633, -996.65375, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.32813, -992.60712, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.28064, -993.05798, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1679.88989, -992.82013, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1679.92578, -993.28516, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.38379, -993.54877, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(19358, 1671.52832, -964.88507, 680.12793,   0.00000, 180.00000, -0.10000);
	CreateDynamicObject(19358, 1672.83105, -966.02869, 680.12793,   0.00000, 180.00000, -90.10000);
	CreateDynamicObject(18757, 1662.66113, -986.51813, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1662.66309, -984.56311, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1661.19666, -982.16919, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1661.23230, -987.33252, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1675.89514, -984.62836, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1675.89709, -986.50043, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1673.35864, -981.99762, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1673.48254, -987.14429, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1655.64185, -972.38470, 682.58893,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1557, 1679.05115, -972.45654, 682.58893,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1685.72986, -987.53156, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.71204, -981.58417, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.73914, -976.21100, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.75281, -970.91187, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.69458, -971.08954, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.62061, -976.40570, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.48389, -981.24969, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.47412, -986.92102, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1684.81921, -973.82593, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1684.89453, -978.63745, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1684.82043, -983.63324, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.46765, -974.24066, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.31140, -978.95215, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.28943, -984.09473, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1808, 1663.93970, -988.78314, 682.69318,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1734, 1667.30676, -977.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -980.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -982.66321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -984.66321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -987.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2108, 1670.81714, -976.99768, 682.66882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2108, 1663.92041, -976.95392, 682.66882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1667.43665, -982.60559, 685.90179,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1664.73279, -976.47131, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.72839, -975.08966, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.14978, -975.04382, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.14978, -976.44196, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.02148, -989.06970, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.00928, -990.43817, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.61499, -990.44031, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.63940, -989.05945, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1660.72534, -992.72321, 683.17090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1673.82996, -992.72601, 683.17090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1677.05408, -992.97064, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1656.62134, -992.63593, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1676.31287, -958.97858, 680.32001,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.38159, -964.48083, 682.59680,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.21570, -964.50897, 678.32642,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1674.84692, -958.82312, 676.11920,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.46021, -964.52179, 674.11139,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1675.06433, -958.81409, 671.91522,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1886, 1662.88867, -972.32507, 685.98969,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(1886, 1671.76123, -972.41028, 685.98969,   0.00000, 0.00000, -33.00000);
	//RICMAN HOUSE
	new SoFahim;
	SoFahim = CreateDynamicObject(19376, 189.2870, -1423.2342, 46.9630, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	CreateDynamicObject(984, 202.9098, -1421.4792, 47.6898, 0.0000, 0.0000, -37.0000); //fenceshit2
	SoFahim = CreateDynamicObject(19376, 193.9635, -1424.7563, 46.9830, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 191.3757, -1410.7574, 46.9830, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19428, 185.8750, -1401.6002, 45.3031, 0.0000, 0.0000, -37.0000); //wall068
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19428, 187.2165, -1402.6097, 46.9737, 0.0000, 90.0000, -37.0000); //wall068
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 200.4707, -1419.4283, 41.8129, 0.0000, 0.0000, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 177.8103, -1420.2690, 41.8129, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 199.7534, -1417.0721, 46.9830, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 185.5859, -1418.4437, 46.9930, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 185.4774, -1426.0466, 41.8128, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 194.7014, -1427.0998, 41.8129, 0.0000, 0.0000, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 185.7366, -1409.7497, 41.8129, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19428, 189.9877, -1404.6993, 46.9734, 0.0000, 90.0000, -37.0000); //wall068
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 183.2480, -1413.8032, 46.9729, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	CreateDynamicObject(984, 198.0950, -1427.8702, 47.6898, 0.0000, 0.0000, -37.0000); //fenceshit2
	CreateDynamicObject(984, 189.1394, -1429.1363, 47.6898, 0.0000, 0.0000, 52.9998); //fenceshit2
	CreateDynamicObject(984, 178.9427, -1421.4652, 47.6898, 0.0000, 0.0000, 52.9998); //fenceshit2
	CreateDynamicObject(984, 201.6351, -1412.5206, 47.6898, 0.0000, 0.0000, 53.0000); //fenceshit2
	CreateDynamicObject(984, 191.4284, -1404.8286, 47.6898, 0.0000, 0.0000, 53.0000); //fenceshit2
	CreateDynamicObject(640, 177.2362, -1419.5826, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(640, 184.1799, -1424.7900, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(640, 196.4877, -1429.1971, 47.7360, 0.0000, 0.0000, -37.0000); //kb_planter+bush2
	CreateDynamicObject(640, 200.4653, -1423.9189, 47.7360, 0.0000, 0.0000, -37.0000); //kb_planter+bush2
	CreateDynamicObject(640, 204.4974, -1418.5688, 47.7360, 0.0000, 0.0000, -37.0000); //kb_planter+bush2
	CreateDynamicObject(640, 202.7286, -1413.9028, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(640, 197.3600, -1409.8454, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(640, 192.0350, -1405.7956, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(984, 177.6974, -1412.4964, 47.6898, 0.0000, 0.0000, -37.0000); //fenceshit2
	SoFahim = CreateDynamicObject(19464, 185.6342, -1405.9947, 45.8614, 3.1995, -111.0996, -37.0000); //wall104
	SetDynamicObjectMaterial(SoFahim, 0, 3629, "arprtxxref_las", "dirtywhite", 0xFFFFFFFF);
	CreateDynamicObject(640, 176.6230, -1414.7126, 47.7360, 0.0000, 0.0000, -37.0000); //kb_planter+bush2
	CreateDynamicObject(640, 180.3220, -1409.7889, 47.7360, 0.0000, 0.0000, -37.0000); //kb_planter+bush2
	CreateDynamicObject(970, 199.0742, -1413.9082, 47.5834, 0.0000, 0.0000, 52.9998); //fencesmallb
	CreateDynamicObject(970, 196.5166, -1417.3021, 47.5834, 0.0000, 0.0000, 52.9998); //fencesmallb
	CreateDynamicObject(1594, 201.4528, -1416.0133, 47.5135, 0.0000, 0.0000, 0.0000); //chairsntable
	CreateDynamicObject(19915, 202.4660, -1421.2115, 46.9541, 0.0000, 0.0000, -128.2998); //CutsceneCooker1
	SoFahim = CreateDynamicObject(19464, 185.6493, -1405.9798, 45.8622, 0.3993, -114.4996, -37.0997); //wall104
	SetDynamicObjectMaterial(SoFahim, 0, 3629, "arprtxxref_las", "dirtywhite", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 180.8952, -1416.9222, 46.9830, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 192.9886, -1426.0478, 46.9827, 0.0000, 89.9997, 142.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 14815, "whore_main", "WH_tiles", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 179.1118, -1410.6794, 41.8129, 0.0000, 0.0000, -37.0000); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 176.8795, -1413.6418, 41.8129, 0.0000, 0.0000, -37.0000); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 188.0769, -1428.0306, 41.7929, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 189.2209, -1405.0266, 41.7929, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 190.0957, -1403.8818, 41.7929, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19376, 197.7866, -1409.6776, 41.7929, 0.0000, 0.0000, 52.9998); //wall024
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	SoFahim = CreateDynamicObject(19447, 202.4584, -1414.0633, 42.0540, 90.0000, 27.0000, 0.0000); //wall087
	SetDynamicObjectMaterial(SoFahim, 0, 13675, "lahillsgrounds", "bevr03b_law", 0xFFFFFFFF);
	CreateDynamicObject(970, 183.3419, -1408.5887, 47.5401, 0.0000, 0.0000, -37.0000); //fencesmallb
	CreateDynamicObject(1713, 193.4631, -1424.4027, 47.0176, 0.0000, 0.0000, 53.9995); //kb_couch04
	CreateDynamicObject(1713, 195.2380, -1421.9597, 47.0176, 0.0000, 0.0000, 53.9995); //kb_couch04
	CreateDynamicObject(1670, 194.9423, -1425.3222, 47.4954, 0.0000, 0.0000, 54.0000); //propcollecttable
	CreateDynamicObject(19903, 198.4996, -1412.6446, 47.0774, 0.0000, 0.0000, 144.0000); //MechanicComputer1
	CreateDynamicObject(19815, 196.8804, -1410.5958, 48.8652, 0.0000, 0.0000, -35.9000); //ToolBoard1
	CreateDynamicObject(2315, 194.9615, -1425.4029, 46.9878, 0.0000, 0.0000, 54.0000); //CJ_TV_TABLE4
	CreateDynamicObject(2315, 196.7953, -1422.8780, 46.9878, 0.0000, 0.0000, 54.0000); //CJ_TV_TABLE4
	CreateDynamicObject(1594, 199.6428, -1418.9145, 47.5135, 0.0000, 0.0000, 0.0000); //chairsntable
	SoFahim = CreateDynamicObject(17950, 194.3742, -1412.6782, 48.2050, 0.0000, 0.0000, 54.0000); //cjsaveg
	SetDynamicObjectMaterial(SoFahim, 0, 10765, "airportgnd_sfse", "ws_whitestripe", 0xFFFFFFFF);
	CreateDynamicObject(19899, 195.9351, -1415.9138, 46.8370, 0.0000, 0.0000, 143.0000); //ToolCabinet1
	CreateDynamicObject(1008, 195.8587, -1415.8376, 48.0843, 0.0000, 0.0000, 52.2999); //nto_b_l
	CreateDynamicObject(948, 186.2402, -1402.0410, 47.0545, 0.0000, 0.0000, -37.0000); //Plant_Pot_10
	CreateDynamicObject(18976, 196.2664, -1415.1594, 48.5749, 0.0000, 0.0000, 90.0000); //MotorcycleHelmet2
	CreateDynamicObject(19621, 195.6853, -1415.9438, 49.0203, 0.0000, 0.0000, 0.0000); //OilCan1
	CreateDynamicObject(18634, 196.3329, -1415.3845, 48.9462, 0.0000, -91.4999, 0.0000); //GTASACrowbar1
	CreateDynamicObject(640, 190.3054, -1429.4066, 47.7360, 0.0000, 0.0000, 52.9998); //kb_planter+bush2
	CreateDynamicObject(948, 187.9492, -1403.3291, 47.0545, 0.0000, 0.0000, -37.0000); //Plant_Pot_10
	CreateDynamicObject(949, 178.5243, -1412.2358, 47.6053, 0.0000, 0.0000, -37.0000); //Plant_Pot_4
	CreateDynamicObject(949, 174.6566, -1417.3974, 47.6058, 0.0000, 0.0000, -37.0000); //Plant_Pot_4
	CreateDynamicObject(948, 193.1036, -1431.5157, 47.0503, 0.0000, 0.0000, -37.0000); //Plant_Pot_10
	CreateDynamicObject(615, 180.1578, -1429.8913, 42.1038, 0.0000, 0.0000, -134.1999); //veg_tree3
	CreateDynamicObject(615, 173.8056, -1423.6990, 41.7038, 0.0000, 0.0000, -134.1999); //veg_tree3
	CreateDynamicObject(615, 209.1667, -1418.2768, 46.5937, 0.0000, 0.0000, -134.1999); //veg_tree3
	CreateDynamicObject(1670, 195.6123, -1424.4001, 47.4954, 0.0000, 0.0000, 54.0000); //propcollecttable
	CreateDynamicObject(1670, 196.8348, -1422.7171, 47.4954, 0.0000, 0.0000, 54.0000); //propcollecttable
	CreateDynamicObject(1670, 197.4636, -1421.8509, 47.4954, 0.0000, 0.0000, 54.0000); //propcollecttable
	CreateDynamicObject(3034, 182.3687, -1416.6004, 48.7803, 0.0000, 0.0000, -126.9000); //bd_window
	SoFahim = CreateDynamicObject(19491, 187.8169, -1419.5050, 51.9846, -0.0000, 0.0000, -37.0000); //sfhouse2
	SetDynamicObjectMaterial(SoFahim, 0, 3603, "bevmans01_la", "aamanbev94x", 0xFFFFFFFF);
	SetDynamicObjectMaterial(SoFahim, 1, 3603, "bevmans01_la", "aamanbev94x", 0xFFFFFFFF);
	CreateDynamicObject(19492, 187.8328, -1419.5172, 51.9846, -0.0000, 0.0000, -37.0000); //sfhouse2int
	CreateDynamicObject(1706, 186.2663, -1416.2816, 49.9984, -0.0000, 0.0000, -36.6999); //kb_couch03
	CreateDynamicObject(1516, 194.8456, -1419.5183, 50.2173, 0.0000, -0.0000, 143.2993); //DYN_TABLE_03
	CreateDynamicObject(1799, 191.3266, -1420.4658, 50.0475, -0.0000, 0.0000, -36.6999); //MED_BED_4
	CreateDynamicObject(2106, 194.9139, -1419.3800, 50.7439, 0.0000, -0.0000, 143.2993); //CJ_MLIGHT15
	CreateDynamicObject(2828, 194.6491, -1419.6820, 50.7210, 0.0000, -0.0000, 115.0991); //gb_ornament02
	CreateDynamicObject(2127, 190.7148, -1424.9260, 49.9589, 0.0000, -0.0000, 143.2993); //CJ_K1_FRIDGE_UNIT
	CreateDynamicObject(2132, 186.2333, -1412.9171, 49.9822, -0.0000, 0.0000, -36.6999); //CJ_KITCH2_SINK
	CreateDynamicObject(2134, 187.8113, -1414.0969, 49.9869, -0.0000, 0.0000, -36.6999); //CJ_KITCH2_M
	CreateDynamicObject(1744, 187.0013, -1412.7055, 51.8404, -0.0000, 0.0000, -36.6999); //MED_SHELF
	CreateDynamicObject(1706, 183.9513, -1417.5615, 49.9984, 0.0000, 0.0000, 53.2992); //kb_couch03
	CreateDynamicObject(1706, 187.3366, -1418.8140, 49.9984, -0.0000, -0.0000, -126.6992); //kb_couch03
	CreateDynamicObject(19786, 183.9155, -1420.2910, 51.9883, 0.0000, -0.0000, 143.2993); //LCDTVBig1
	CreateDynamicObject(2313, 184.7900, -1420.1843, 50.0385, 0.0000, -0.0000, 143.2993); //CJ_TV_TABLE1
	CreateDynamicObject(948, 181.9432, -1418.1422, 50.0550, 0.0000, -0.0000, 143.2993); //Plant_Pot_10
	CreateDynamicObject(2319, 191.0257, -1416.5775, 49.9724, 0.0000, -0.0000, 143.2993); //CJ_TV_TABLE5
	CreateDynamicObject(1828, 189.6092, -1420.6206, 50.0415, 0.0000, -0.0000, 143.2993); //man_sdr_rug
	CreateDynamicObject(3034, 193.4998, -1422.7474, 48.8103, 0.0000, 0.0000, 53.0000); //bd_window
	CreateDynamicObject(19325, 182.4267, -1416.6041, 49.3838, 89.9999, 52.6592, -89.6591); //lsmall_window01
	CreateDynamicObject(19325, 194.5779, -1421.3164, 49.3838, 89.9999, 52.6592, -89.6591); //lsmall_window01
	CreateDynamicObject(19466, 192.3088, -1424.2244, 51.4654, -0.0000, 0.0000, -37.0000); //window001
	CreateDynamicObject(19466, 185.2970, -1412.7982, 51.6077, -0.0000, 0.0000, -37.0000); //window001
	CreateDynamicObject(19466, 183.9491, -1414.5864, 51.6077, -0.0000, 0.0000, -37.0000); //window001
	CreateDynamicObject(1566, 191.1516, -1425.3529, 48.3763, 0.0000, 0.0000, 53.3996); //CJ_WS_DOOR
	CreateDynamicObject(19859, 187.3902, -1414.7810, 48.3972, -0.0000, -0.0000, -126.8990); //MIHouse1Door3
	CreateDynamicObject(3034, 194.7675, -1421.0987, 48.8103, 0.0000, 0.0000, 53.0000); //bd_window
	CreateDynamicObject(1822, 185.1431, -1418.7141, 49.9728, 0.0000, 0.0000, 0.0000); //COFFEE_SWANK_6
	CreateDynamicObject(3806, 187.2168, -1412.2938, 47.4294, 0.0000, 0.0000, 52.9998); //sfx_winplant07
	CreateDynamicObject(1734, 189.1809, -1420.3931, 53.4020, 0.0000, 0.0000, 52.9998); //CJ_MLIGHT2
	CreateDynamicObject(3806, 182.2060, -1416.1682, 47.4294, 0.0000, -0.0000, 142.9985); //sfx_winplant07
	return 1;
}
public OnPlayerConnect(playerid)
{
	//Concac
	RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4045, 1479.3359, -1802.2891, 12.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 1527, 1448.2344, -1755.8984, 14.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1407.1953, -1749.3125, 13.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1405.2344, -1821.1172, 13.1016, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1417.9766, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1405.5781, -1831.6953, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1393.2734, -1796.3516, 16.9766, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1447.1016, -1832.5000, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1432.3047, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 4174, 1435.7656, -1823.6641, 15.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1456.3984, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1464.0938, -1831.8828, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1480.0313, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 3997, 1479.3359, -1802.2891, 12.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1504.8438, -1832.5313, 11.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1499.0469, -1832.2734, 12.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1512.9453, -1832.3516, 13.4688, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1404.9141, -1765.2656, 12.9141, 0.25);
	RemoveBuildingForPlayer(playerid, 4173, 1427.2734, -1756.1797, 15.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1415.3125, -1748.5625, 12.3984, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1429.5313, -1748.4219, 12.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1438.0313, -1747.9375, 13.4453, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1447.9063, -1748.2266, 12.9063, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1441.8594, -1733.0078, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1513.2344, -1732.9219, 15.6250, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1516.0000, -1748.6016, 13.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 1231, 1529.2891, -1832.9141, 15.2891, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1549.5313, -1832.3125, 12.8828, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1555.6641, -1830.5938, 13.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4175, 1524.4141, -1823.8516, 15.1797, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1554.8203, -1816.1563, 13.4766, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1564.9922, -1795.6797, 16.4219, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1553.2578, -1764.8125, 12.7969, 0.25);
	RemoveBuildingForPlayer(playerid, 4172, 1534.7656, -1756.1797, 15.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1533.2656, -1749.0234, 12.8047, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 1522.1641, -1748.5703, 13.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1553.7031, -1747.9375, 13.4063, 0.25);
	
	return 1;
}
