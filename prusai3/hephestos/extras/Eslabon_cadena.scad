
h=13;	//alto
l=25;	//longitud
a=16; 	//ancho
b=12;	//distancia entre anclaje hembra y macho [(l/2)-(h/2)]*2
rh=2.4;	//radio agujero anclaje hembra
rm=1.8;	//radio cilindro anclaje macho
ah=1.5;	//anchura anclaje hembra=altura cilindro anclaje macho=grosor pared de anclajes


//hueco interno
difference()
{
	//cuerpo
	union()
	{
		difference()
		{
			hull()
			{	
				translate([0,b/2,0])cylinder(h=a+0.6, r=h/2, $fn=100, center=true);
				translate([0,-b/2,0])cylinder(h=a+0.6, r=h/2, $fn=100, center=true);
			}
			//agujero anclaje hembra
			translate([0,(b/2)+1.5,0])cylinder(h=a+3, r=rh, $fn=100, center=true);
		
			//rebaje anclaje macho con otro eslabon
			translate([0,(-b/2)-1,a/2])cylinder(h=(ah*2)+0.2, r=(h/2)+0.4, $fn=100, center=true);
			translate([0,(-b/2)-1,-a/2])cylinder(h=(ah*2)+0.2, r=(h/2)+0.4, $fn=100, center=true);
			
			//rebaje horizontal
			translate([-h/2,((-a/2)+rm),0])cube(size=[(a/2)-rm-0,(a/2)+rm,a+1], center=true);
			//aplanado externo
			translate([0,(-l/2)-1,0])cube(size=[h+1,4,a+1], center=true);
			//aplanado diagonal
			translate([-1.5,(-l/2)-1,0])rotate([0,0,-55])cube(size=[h+1,4,a+1], center=true);			
		}
		//cilindro anclaje macho
		translate([0,(-b/2)-1,0])cylinder(h=a-0.2, r=rm, $fn=100, center=true);
	}

	translate([0,0,0])cube(size=[h-(ah*2),l*20,a-(ah*4)], center=true);

	//hueco macho
	translate([0,(-l/4)*2+rm,0])cube(size=[h+20,l/2,a-(ah*4)], center=true);

	//hueco hembra
	translate([0,(l/4)*2-rh,0])cube(size=[h+20,l/2,a-(ah*2)+0.6], center=true);
	translate([0,l/4,0])cube(size=[h-(ah*2),(l/2)-2,a-(ah*2)+0.6], center=true);	

}

difference(){
translate([-4.7,6.7,-6])
cube([3.6,13,2],center=true);

translate([-2.5,8.2,-5.5])
rotate([0,60,0])
cube([3.5,16,2.5],center=true);


difference(){
translate([0,(b/2)+5,0])cube([20,10,20],center=true);
translate([0,b/2,0])cylinder(h=a+0.5, r=h/2, $fn=100, center=true);
}

}

difference(){
translate([-4.7,6.7,6])
cube([3.6,13,2],center=true);

translate([-2.5,8.2,5.5])
rotate([0,-60,0])
cube([3.5,16,2.5],center=true);


difference(){
translate([0,(b/2)+5,0])cube([20,10,20],center=true);
translate([0,b/2,0])cylinder(h=a+0.5, r=h/2, $fn=100, center=true);
}


}



