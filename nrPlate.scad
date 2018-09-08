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
translate(v = [35,5,0]){
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
        
}
}
}