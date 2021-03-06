
module plugSTL(){
	scale([0.53,0.53,0.53])
	translate([-0.2,0,-0.81])
	import("../Imports/plug.stl");
}
    
module keyhole(){
	translate([44,19,-4]){
		cylinder(r=2.5,h=10);
	}
}
    
module mainBody(){
	hull(){
		translate([32.2, 10.8, 0]) {
			minkowski(){
				cube(size = [8, 16.5, 4], center = false);
				sphere(r=0.5);
			}
		}
    
		translate([40, 15, -0.5]) {
			cube(size = [8, 8, 2], center = false);
		}
	}
}

plugSTL();
difference(){ 
	mainBody();
	keyhole();
}