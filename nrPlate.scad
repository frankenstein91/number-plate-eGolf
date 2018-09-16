$fa = 6;
$fs = 0.25;
car = "eGolf";
carnumber = 987654;
union(){
    difference() {
        translate([-1, -13, -2])
            color([1,0,0]) 
                linear_extrude(height = 2.01)
                    offset(2)
                        square([105, 26]);
        
        translate([0, 0, -2.7])
            linear_extrude(height = 1) {
                translate([3, 9]) circle(d=6.7);
                translate([3, -9]) circle(d=6.7);
                translate([100, 9]) circle(d=6.7);
                translate([100, -9]) circle(d=6.7);
            }
    }
    linear_extrude(height = 1){
        text(car);
        
        translate([0.3, -10])
            text(str("Number: ", carnumber));
        
        translate([45, 5]){
            for(side = [-1, 1])
                translate([0, side * 1.5])
                    square([3.5, 1]);
            
            hull() {
                translate([3, -3])
                    square([1, 7]);

                translate([7, 0.5])
                    circle(3.5);
            }
            //        Kabel
            translate([10, -4]) {
                difference() {
                    pie_slice(5, 30, 90);
                    
                    pie_slice(4, 29, 92);
                }
                translate([7.67, 4.7]) rotate(180) {
                    difference() {
                        pie_slice(5, 30, 147);
                        
                        pie_slice(4, 29, 148);
                    }
                }
            }
        }
    }
}

module pie_slice(r, start_angle, end_angle) {
    R = r * sqrt(2) + 1;
    if(end_angle > start_angle)
        intersection() {
            circle(r);
            
            polygon([for(i = [0 : 5], a = start_angle + i * (end_angle - start_angle) / 4)
                        i == 5 ? [0, 0] : [R * cos(a), R * sin(a)]]);
    }
}
