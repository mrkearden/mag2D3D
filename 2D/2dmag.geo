// Gmsh project created on Wed Jul 26 07:07:03 2023
SetFactory("OpenCASCADE");
//+
Point(1) = {-.01, .015, 0, 1.0};
//+
Point(2) = {-.01, -.015, 0, 1.0};
//+
Point(3) = {-.11, -.015, 0, 1.0};
//+
Point(4) = {-.11, .015, 0, 1.0};
//+
Point(5) = {.11, .015, 0, 1.0};
//+
Point(6) = {.11, -.015, 0, 1.0};
//+
Point(7) = {.01, -.015, 0, 1.0};
//+
Point(8) = {.01, .015, 0, 1.0};
//+
Line(1) = {3, 2};
//+
Line(2) = {2, 1};
//+
Line(3) = {1, 4};
//+
Line(4) = {4, 3};
//+
Line(5) = {7, 6};
//+
Line(6) = {6, 5};
//+
Line(7) = {5, 8};
//+
Line(8) = {8, 7};
//+
Circle(9) = {0, 0, 0, 0.5, 0, 2*Pi};
//+
Curve Loop(1) = {9};
//+
Curve Loop(2) = {3, 4, 1, 2};
//+
Curve Loop(3) = {7, 8, 5, 6};
//+
Plane Surface(1) = {1, 2, 3};
//+
Curve Loop(4) = {1, 2, 3, 4};
//+
Plane Surface(2) = {4};
//+
Curve Loop(5) = {7, 8, 5, 6};
//+
Plane Surface(3) = {5};
//+
Physical Surface("left", 10) = {2};
//+
Physical Surface("right", 11) = {3};
//+
Physical Surface("air", 12) = {1};
//+
Physical Curve("boundary", 13) = {9};
//+
Transfinite Curve {1, 3, 7, 5} = 10 Using Progression 1;
//+
Transfinite Curve {4, 2, 8, 6} = 5 Using Progression 1;
//+
Transfinite Curve {9} = 60 Using Progression 1;
