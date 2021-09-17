//Ronin periard
//CSC 515 final project 

#include "colors.inc" 
#include "textures.inc"
#include "woods.inc"

camera{
    location <0,85,225>
    look_at <0,0,0> 
    rotate <0,clock*360,0>
}                  

light_source{<100,100,-200> color White}

background {color rgb 0}

//Box
box{
    <-20,-10,-20><20,-8,20>
    texture{T_Wood8
    scale 20}
    translate<0,-60*clock,0>
}
box{
    <-20,20,-20><20,22,20>
    texture{T_Wood8
    scale 20}
    translate<0,60*clock,0>
}
box{
    <-18,-10,-20><-20,22,20>
    texture{T_Wood8
    scale 20}
    translate<-60*clock,0,0>
} 
box{
    <18,-10,-20><20,22,20>
    texture{T_Wood8
    scale 20}
    translate<60*clock,0,0>
}
box{
    <-20,-10,20><20,20,22>
    texture{T_Wood8
    scale 20}
    translate<0,0,60*clock>
}
box{
    <-20,-10,-20><20,20,-22>
    texture{T_Wood8 
    scale 20}
    translate<0,0,-60*clock>
}

//20 spheres
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-26*clock,25*clock,7*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<28*clock,20*clock,-16*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<22*clock,-4*clock,32*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<37*clock,-16*clock,-46*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<32*clock,25*clock,13*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-44*clock,-36*clock,-23*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-27*clock,7*clock,41*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<26*clock,3*clock,-19*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-10*clock,26*clock,25*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<23*clock,0*clock,31*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-39*clock,-45*clock,-25*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<0*clock,13*clock,33*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<7*clock,17*clock,-45*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-44*clock,25*clock,47*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<19*clock,17*clock,-40*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-20*clock,12*clock,38*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<11*clock,44*clock,16*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<-10*clock,-8*clock,31*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<44*clock,-38*clock,41*clock>
}
sphere{
    <0,0,0>,3
    pigment{Blue}
    translate<43*clock,-23*clock,5*clock>
} 


//explosion
//Credit-https://ghoulsblade.schattenkind.net/files/pov/explosion01.pov

sphere { < 0, 0, 0>, 3
	pigment { rgbt 1 } // surface of sphere is transparent
	interior {
		media {
			emission 0.02
			intervals 1
			samples 45
			method 3
			density {
				spherical
				ramp_wave
        translate clock*y*10  // replace 1.0 = t   by time for animation
        warp { turbulence 1.25 }
        translate -clock*y*10 // replace -1.0 = -t  by time for animation
				color_map {
					[0.0 color rgb <0, 0, 0>]
					[0.1 color rgb <0, 0, 1>]
					[0.5 color rgb <0, 1, 1>]
					[1.0 color rgb <1, 1, 1>]
				}
			}
		}
	}
	scale 40*clock
	translate 10*y
	hollow
}







