rotate([270.0, 0.0, 0.0])
{
    rotate([0.0, 90.0, 0.0])
    {
        union()
        {
            union()
            {
                difference()
                {
                    translate([0.0, 0.0, -40.0])
                    {
                        linear_extrude(height = 60.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([45.0, 40.0])
                            {
                                M8();
                            }
                        }
                    }
                    union()
                    {
                        linear_extrude(height = 20.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([29.0, 29.0])
                            {
                                M221();
                            }
                        }
                        translate([0.0, 11.5, 0.0])
                        {
                            linear_extrude(height = 20.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([14.5, 14.5])
                                {
                                    M8();
                                }
                            }
                        }
                        translate([0.0, 6.0, 0.0])
                        {
                            linear_extrude(height = 20.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([17.5, 17.5])
                                {
                                    M8();
                                }
                            }
                        }
                        difference()
                        {
                            intersection()
                            {
                                translate([-21.0, 0.0, 0.0])
                                {
                                    translate([0.0, 0.0, 20.0])
                                    {
                                        rotate([0.0, 90.0, 0.0])
                                        {
                                            linear_extrude(height = 42.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                            {
                                                scale([7.0, 7.0])
                                                {
                                                    M221();
                                                }
                                            }
                                        }
                                    }
                                }
                                translate([0.0, 0.0, 0.0])
                                {
                                    translate([0.0, 0.0, 19.0])
                                    {
                                        linear_extrude(height = 1.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                        {
                                            scale([42.0, 7.0])
                                            {
                                                M8();
                                            }
                                        }
                                    }
                                }
                            }
                            translate([18.0, 0.0, 0.0])
                            {
                                linear_extrude(height = 50.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                {
                                    scale([4.5, 4.5])
                                    {
                                        M221();
                                    }
                                }
                            }
                            translate([-18.0, 0.0, 0.0])
                            {
                                linear_extrude(height = 50.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                                {
                                    scale([4.5, 4.5])
                                    {
                                        M221();
                                    }
                                }
                            }
                        }
                    }
                    translate([0.0, 20.0, 0.0])
                    {
                        translate([0.0, 0.0, 11.5])
                        {
                            linear_extrude(height = 6.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([14.5, 7.0])
                                {
                                    M8();
                                }
                            }
                        }
                    }
                    translate([0.0, -20.0, 0.0])
                    {
                        translate([24.0, 0.0, 0.0])
                        {
                            translate([0.0, 0.0, 0.0])
                            {
                                rotate([0.0, 180.0, 0.0])
                                {
                                    rotate([90.0, 0.0, 0.0])
                                    {
                                        linear_extrude(height = 3.0, twist = 0.0, scale = 1.0, slices = 1, center = true)
                                        {
                                            union()
                                            {
                                                translate([0.0, 0.0])
                                                {
                                                    M117();
                                                }
                                                translate([16.0, 0.0])
                                                {
                                                    M119();
                                                }
                                                translate([32.0, 0.0])
                                                {
                                                    M117();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                difference()
                {
                    translate([0.0, 37.0, 0.0])
                    {
                        translate([0.0, 0.0, -183.5])
                        {
                            linear_extrude(height = 195.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([90.0, 34.0])
                                {
                                    M8();
                                }
                            }
                        }
                    }
                    translate([0.0, 39.5, 0.0])
                    {
                        translate([0.0, 0.0, -179.0])
                        {
                            linear_extrude(height = 186.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                            {
                                scale([82.0, 30.0])
                                {
                                    M8();
                                }
                            }
                        }
                    }
                }
                translate([0.0, 20.0, 0.0])
                {
                    translate([0.0, 0.0, -80.0])
                    {
                        translate([0.0, 0.0, 20.0])
                        {
                            mirror([0.0, 0.0, 1.0])
                            {
                                linear_extrude(height = 40.0, twist = 0.0, scale = 0.022222222222222223, slices = 1, center = true)
                                {
                                    intersection()
                                    {
                                        scale([90.0, 90.0])
                                        {
                                            M226();
                                        }
                                        M235();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            difference()
            {
                translate([0.0, 37.0, 0.0])
                {
                    translate([0.0, 0.0, -183.5])
                    {
                        linear_extrude(height = 195.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([90.0, 34.0])
                            {
                                M8();
                            }
                        }
                    }
                }
                translate([0.0, 39.5, 0.0])
                {
                    translate([0.0, 0.0, -179.0])
                    {
                        linear_extrude(height = 186.0, twist = 0.0, scale = 1.0, slices = 1, center = false)
                        {
                            scale([82.0, 30.0])
                            {
                                M8();
                            }
                        }
                    }
                }
            }
        }
    }
}

module M226()
{
    polygon
    (
        points =
        [
            [0.5, 0.0], 
            [0.25000000000000006, 0.4330127018922193], 
            [-0.2499999999999999, 0.43301270189221935], 
            [-0.5, 6.123233995736766E-17], 
            [-0.2500000000000002, -0.4330127018922192], 
            [0.24999999999999967, -0.4330127018922195]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5]
        ]
    );
}

module M117()
{
    scale([2.1333333333333333, 2.0])
    {
        text
        (
            text = ".",
            size = 10.0,
            font = "Consolas:style=Regular",
            halign = "left",
            valign = "baseline",
            spacing = 1.0,
            direction = "ltr",
            language = "en",
            script = "latin",
            $fn = 64
        );
    }
}

module M119()
{
    scale([2.1333333333333333, 2.0])
    {
        text
        (
            text = "͜",
            size = 10.0,
            font = "Consolas:style=Regular",
            halign = "left",
            valign = "baseline",
            spacing = 1.0,
            direction = "ltr",
            language = "en",
            script = "latin",
            $fn = 64
        );
    }
}

module M8()
{
    polygon
    (
        points =
        [
            [-0.5, -0.5], 
            [0.5, -0.5], 
            [0.5, 0.5], 
            [-0.5, 0.5]
        ],
        paths =
        [
            [0, 1, 2, 3]
        ]
    );
}

module M235()
{
    polygon
    (
        points =
        [
            [0.0, 0.0], 
            [-90.0, 1.1021821192326179E-14], 
            [-83.14915792601582, -34.44150891285807], 
            [-63.639610306789294, -63.63961030678927], 
            [-34.44150891285813, -83.14915792601579], 
            [-1.6532731788489267E-14, -90.0], 
            [34.4415089128581, -83.1491579260158], 
            [63.63961030678926, -63.639610306789294], 
            [83.14915792601579, -34.44150891285813], 
            [90.0, -2.2043642384652358E-14]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        ]
    );
}

module M221()
{
    polygon
    (
        points =
        [
            [0.5, 0.0], 
            [0.4993977281025862, 0.024533837163709007], 
            [0.49759236333609846, 0.0490085701647803], 
            [0.4945882549823905, 0.07336523722768087], 
            [0.4903926402016152, 0.09754516100806412], 
            [0.485015626597272, 0.12149008995163194], 
            [0.4784701678661044, 0.14514233862723117], 
            [0.4707720325915104, 0.16844492669611003], 
            [0.46193976625564337, 0.1913417161825449], 
            [0.45199464656172167, 0.21377754671514104], 
            [0.4409606321741775, 0.23569836841299882], 
            [0.42886430500013606, 0.25705137209661083], 
            [0.4157348061512726, 0.2777851165098011], 
            [0.40160376574032247, 0.2978496522462167], 
            [0.3865052266813685, 0.31719664208182274], 
            [0.37047556267747955, 0.33577947742350917], 
            [0.3535533905932738, 0.35355339059327373], 
            [0.33577947742350917, 0.37047556267747955], 
            [0.31719664208182274, 0.3865052266813685], 
            [0.29784965224621673, 0.4016037657403224], 
            [0.27778511650980114, 0.4157348061512726], 
            [0.25705137209661083, 0.42886430500013606], 
            [0.2356983684129989, 0.44096063217417747], 
            [0.2137775467151411, 0.45199464656172167], 
            [0.19134171618254492, 0.46193976625564337], 
            [0.16844492669611003, 0.4707720325915104], 
            [0.14514233862723117, 0.47847016786610447], 
            [0.12149008995163199, 0.485015626597272], 
            [0.09754516100806417, 0.4903926402016152], 
            [0.07336523722768087, 0.4945882549823905], 
            [0.049008570164780385, 0.4975923633360984], 
            [0.024533837163709063, 0.4993977281025862], 
            [3.061616997868383E-17, 0.5], 
            [-0.024533837163709004, 0.4993977281025862], 
            [-0.04900857016478032, 0.49759236333609846], 
            [-0.07336523722768082, 0.4945882549823905], 
            [-0.0975451610080641, 0.4903926402016152], 
            [-0.12149008995163194, 0.485015626597272], 
            [-0.14514233862723108, 0.47847016786610447], 
            [-0.16844492669610997, 0.4707720325915104], 
            [-0.19134171618254486, 0.46193976625564337], 
            [-0.21377754671514093, 0.4519946465617217], 
            [-0.23569836841299885, 0.4409606321741775], 
            [-0.25705137209661083, 0.42886430500013606], 
            [-0.277785116509801, 0.41573480615127273], 
            [-0.2978496522462167, 0.40160376574032247], 
            [-0.3171966420818227, 0.38650522668136855], 
            [-0.3357794774235092, 0.3704755626774795], 
            [-0.35355339059327373, 0.3535533905932738], 
            [-0.37047556267747944, 0.3357794774235093], 
            [-0.3865052266813685, 0.31719664208182274], 
            [-0.4016037657403224, 0.29784965224621673], 
            [-0.4157348061512727, 0.2777851165098011], 
            [-0.428864305000136, 0.2570513720966109], 
            [-0.44096063217417747, 0.23569836841299893], 
            [-0.45199464656172167, 0.21377754671514101], 
            [-0.46193976625564337, 0.19134171618254495], 
            [-0.47077203259151035, 0.16844492669611016], 
            [-0.4784701678661044, 0.1451423386272312], 
            [-0.485015626597272, 0.12149008995163203], 
            [-0.4903926402016152, 0.0975451610080643], 
            [-0.4945882549823905, 0.0733652372276809], 
            [-0.4975923633360984, 0.04900857016478041], 
            [-0.4993977281025862, 0.024533837163708983], 
            [-0.5, 6.123233995736766E-17], 
            [-0.4993977281025862, -0.024533837163708862], 
            [-0.49759236333609846, -0.049008570164780295], 
            [-0.4945882549823905, -0.07336523722768079], 
            [-0.4903926402016152, -0.09754516100806418], 
            [-0.485015626597272, -0.12149008995163191], 
            [-0.47847016786610447, -0.14514233862723105], 
            [-0.4707720325915104, -0.16844492669611005], 
            [-0.4619397662556434, -0.19134171618254484], 
            [-0.4519946465617217, -0.2137775467151409], 
            [-0.4409606321741775, -0.23569836841299882], 
            [-0.42886430500013606, -0.2570513720966108], 
            [-0.41573480615127273, -0.277785116509801], 
            [-0.40160376574032247, -0.2978496522462166], 
            [-0.38650522668136855, -0.31719664208182263], 
            [-0.37047556267747955, -0.3357794774235092], 
            [-0.35355339059327384, -0.35355339059327373], 
            [-0.33577947742350933, -0.37047556267747944], 
            [-0.31719664208182297, -0.38650522668136833], 
            [-0.29784965224621657, -0.4016037657403225], 
            [-0.2777851165098011, -0.4157348061512726], 
            [-0.2570513720966109, -0.428864305000136], 
            [-0.23569836841299893, -0.44096063217417747], 
            [-0.21377754671514124, -0.45199464656172156], 
            [-0.19134171618254517, -0.46193976625564326], 
            [-0.16844492669610997, -0.4707720325915104], 
            [-0.14514233862723122, -0.4784701678661044], 
            [-0.12149008995163206, -0.485015626597272], 
            [-0.09754516100806433, -0.49039264020161516], 
            [-0.07336523722768115, -0.49458825498239045], 
            [-0.049008570164780225, -0.49759236333609846], 
            [-0.024533837163709014, -0.4993977281025862], 
            [-9.184850993605148E-17, -0.5], 
            [0.02453383716370883, -0.4993977281025862], 
            [0.049008570164780045, -0.49759236333609846], 
            [0.07336523722768097, -0.49458825498239045], 
            [0.09754516100806415, -0.4903926402016152], 
            [0.12149008995163188, -0.485015626597272], 
            [0.14514233862723103, -0.47847016786610447], 
            [0.1684449266961098, -0.47077203259151046], 
            [0.191341716182545, -0.4619397662556433], 
            [0.21377754671514107, -0.45199464656172167], 
            [0.2356983684129988, -0.4409606321741775], 
            [0.2570513720966108, -0.4288643050001361], 
            [0.2777851165098009, -0.41573480615127273], 
            [0.29784965224621646, -0.40160376574032264], 
            [0.3171966420818228, -0.38650522668136844], 
            [0.33577947742350917, -0.37047556267747955], 
            [0.3535533905932737, -0.35355339059327384], 
            [0.37047556267747944, -0.33577947742350933], 
            [0.38650522668136833, -0.31719664208182297], 
            [0.4016037657403225, -0.2978496522462166], 
            [0.4157348061512726, -0.2777851165098011], 
            [0.428864305000136, -0.25705137209661094], 
            [0.4409606321741774, -0.23569836841299896], 
            [0.45199464656172156, -0.21377754671514126], 
            [0.46193976625564326, -0.1913417161825452], 
            [0.4707720325915104, -0.16844492669611], 
            [0.4784701678661044, -0.14514233862723125], 
            [0.485015626597272, -0.12149008995163209], 
            [0.49039264020161516, -0.09754516100806436], 
            [0.49458825498239045, -0.0733652372276812], 
            [0.49759236333609846, -0.04900857016478025], 
            [0.4993977281025862, -0.024533837163709046]
        ],
        paths =
        [
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127]
        ]
    );
}
