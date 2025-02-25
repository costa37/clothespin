// The resolution variables:
$fa = 1;
$fs = 0.4;

// Main dimensions
mainBodyX = 256;
mainBodyY = 200;
mainBoxBodyZ = 150;
legsZ = 20;
legThicknessY = 10;
legOneOffsetY = 20; // Distance from y=0 till the start of the first leg
legTwoOffsetY = mainBodyY - (legOneOffsetY + legThicknessY); // Distance from y=0 till the start of 2nd leg
specialBottomForCuttingLegsZ = 20; 
mainBodyZ = mainBoxBodyZ + legsZ + specialBottomForCuttingLegsZ;
wallThikness = 2;
bottomWallZ = wallThikness + specialBottomForCuttingLegsZ;
distanceBetweenTwoLegsY = mainBodyY - (legThicknessY * 2) - (legOneOffsetY * 2) // legOneOffsetY * 2 used due to the fact that both legs are on the same distance from edge of the box

// Main body
difference(){
    cube([mainBodyX,mainBodyY,mainBodyZ]);

    // Top - box hole
    translate([wallThikness, wallThikness, legsZ + bottomWallZ])
        cube([mainBodyX - (wallThikness * 2), mainBodyY - (wallThikness * 2), mainBoxBodyZ * 2]);
    
    // Bottom - 1/3 legs holes
    translate([-2, 0, -2])
        cube([mainBodyX * 2, legOneOffsetY, legsZ + 2]);
    
    // Bottom - 2/3 legs holes
    translate([-2, legOneOffsetY + legThicknessY, -2])
        cube([mainBodyX * 2, distanceBetweenTwoLegsY, legsZ + 2]);

    // Bottom - 3/3 legs holes
    translate([-2, legTwoOffsetY + legThicknessY, -2])
        cube([mainBodyX * 2, legOneOffsetY * 2, legsZ + 2]);
}