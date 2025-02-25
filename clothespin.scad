// The resolution variables:
$fa = 1;
$fs = 0.4;

// Main dimensions
mainBodyX = 256;
mainBodyY = 100;
mainBoxBodyZ = 150;
legsZ = 20;
specialBottomForCuttingLegsZ = 10; 
mainBodyZ = mainBoxBodyZ + legsZ + specialBottomForCuttingLegsZ;

// Main body
difference(){
    cube([mainBodyX,mainBodyY,mainBodyZ]);
}