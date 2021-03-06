//https://www.povray.org/documentation/view/3.6.1/62/

#include "colors.inc"
#include "woods.inc"

camera { location <0, 230, -150>
         look_at <0, 50, 10>}
         
light_source { <500, 500, -1000> White }
 
//----actual objects-----
union
{
    cylinder
    {
        <0,0,0>, <0,10,0>, 3
    }  

    cone
    {
        <0,10,0>, 5 , <0,16,0>, 6
    }

union{
  prism {
    linear_sweep
    linear_spline
    16, // sweep the following shape from here ...
    100, // ... up through here
    7, // the number of points making up the shape ...
    <3,5>, <-5,5>, <-6,0>, <-3,-5>, <3, -5>, <6,0>, <3,5>
    pigment { Blue }
  } 
  
  box 
  {
    <-5,70,0>,<-10,90,10>
  }
  
cylinder
{
    <0,100,0>, <0,110,0>, 3
    pigment {Blue}
}
difference
{
    cylinder
    {
        <0,110,0>, <0,118,0>, 5
        pigment {Blue}
    } 
    cylinder
    {
        <0,110.5,0>, <0,119,0>, 4
        pigment {Blue}
    }
} 

    cylinder
    {
        <0,111,0>, <0,120,0>, 3
        pigment {White}
    }
 
  }
 
}    

//table

box 
{
  <-150,-5,-100>,<150,0,150> 
  texture{T_Wood14}
}  

//paper
box 
{
  <-100,-4,-50>,<0,1,100> 
  pigment{White}
}  

//cup
union{
difference{
    cylinder
    {
        <25,110,-20>, <25,150,-20>, 15
        pigment {White}
    } 
    cylinder
    {
        <25,110,-20>, <25,151,-20>, 13
        pigment {White}
    }                           
 } 
   cylinder
    {
        <25,110,-20>, <25,149,-20>, 13
        pigment {Brown}
        finish {
        ambient .2
        diffuse .6
        specular .75
        roughness .001
        reflection {.5}
     }
    }
   torus {
    11, 5        // major and minor radius
    translate <59,-55,65>            
    rotate -90*x
    pigment { White }
  }
  
 
} 
