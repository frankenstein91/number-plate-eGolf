car = "eGolf";
carnumber = 987654;
union(){
union() {
linear_extrude(height = 1){
text(text=str(car));
translate(v = [0.3, -10, 0]){
        text(text=str("Number: ",carnumber));
}
}
translate(v = [-1, -13, -2]){
        color([1,0,0]) minkowski(){
        cube([105,26,2]);
        cylinder(r=2,h=.01,$fn=100);
        }
}
}
translate(v = [45,5,0]){
union(){
        translate(v = [0,1.5,0]){
                cube([3,1,1]);
        }
        translate(v = [0,-1.5,0]){
                cube([3,1,1]);
        }
        translate(v = [3,-3,0]){
                cube([4,7,1]);
        }
        translate(v = [7,.5,0]){
                cylinder(h = 1, r1 = 3.5, r2 = 3.5,$fn=100);
        }
//        Kabel
        translate(v = [10,-4,0]) {
                difference() {
                sector(1, 10, 30, 90);
                translate(v = [0,0,-1]) sector(4, 8, 29, 92);
                }
                translate(v = [7.67,4.7,0]) rotate([0, 0, 180]) {
                difference() {
                sector(1, 10, 30, 90);
                translate(v = [0,0,-1]) sector(4, 8, 29, 92);
                }
        }

        }
}
}
}

//https://gist.github.com/plumbum/78e3c8281e1c031601456df2aa8e37c6
module sector(h, d, a1, a2) {
    if (a2 - a1 > 180) {
        difference() {
            cylinder(h=h, d=d,$fn=100);
            translate([0,0,-0.5]) sector(h+1, d+1, a2-360, a1); 
        }
    } else {
        difference() {
            cylinder(h=h, d=d,$fn=100);
            rotate([0,0,a1]) translate([-d/2, -d/2, -0.5])
                cube([d, d/2, h+1]);
            rotate([0,0,a2]) translate([-d/2, 0, -0.5])
                cube([d, d/2, h+1]);
        }
    }
} 