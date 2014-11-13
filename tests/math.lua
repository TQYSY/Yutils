local Yutils = dofile("../src/Yutils.lua")

print("Arc curve: ", Yutils.math.arc_curve(100, 0, 0, 0, 95))
print("Curve point: ", Yutils.math.bezier(0.5, {{0,0},{4,-10},{8,2},{12,0}}))
print("Distance: ", Yutils.math.distance(10, -5, -3))
print("Degree: ", Yutils.math.degree(0,-1,0, -0.1,1,0))
print("Lines intersection: ", Yutils.math.line_intersect(0, 0, 10, 10, 1, 0, 9, 10, true))
print("Orthogonal: ", Yutils.math.ortho(1,0,0, 0,0,1))
local mat = Yutils.math.create_matrix().rotate("z", 90).scale(0.5, 2, 2).translate(10, 20, -5)
print("Transformed point: ", mat.transform(0, 0, 0))
print("Inversed matrix:\n" .. Yutils.table.tostring(mat.inverse().get_data()))
print("Random number: " .. Yutils.math.randomsteps(-1.5, 3, 0.5))
print("Rounded number: " .. Yutils.math.round(1.2345, 3))
print("Scaled vector: ", Yutils.math.stretch(1, 0.5, -2, 3))
print("Trimmed number: " .. Yutils.math.trim(2.1, 0, 2))