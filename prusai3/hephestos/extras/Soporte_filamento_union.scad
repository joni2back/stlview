//-------------------------------------------------------------------------------------------
//-- Soporte para rollo de filamento de prusa i3. (c) Antonio Castro Gómez
//-------------------------------------------------------------------------------------------
//-- Released under the GPL license
//-------------------------------------------------------------------------------------------

difference()
{
	translate([0,0,40])cylinder(h=80, r=12, $fn=100, center=true);
	translate([-0,0,39])cylinder(h=90, r=10.5, $fn=100, center=true);	
}


