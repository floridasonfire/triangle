require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle") do
    it("returns that it's not a triangle if it is not a triangle") do
      test_triangle = Triangle.new(1, 2, 5)
      expect(test_triangle.triangle()).to(eq("This is not a triangle."))
    end
    it("returns whether or not it's not equilateral triangle") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.triangle()).to(eq("This is an equilateral triangle."))
    end
    it("returns whether or not it's an isoceles triangle") do
      test_triangle = Triangle.new(3, 3, 2)
      expect(test_triangle.triangle()).to(eq("This is an isoceles triangle."))
    end
    it("returns whether it's a scalene triangle") do
      test_triangle = Triangle.new(3, 2, 1)
      expect(test_triangle.triangle()).to(eq("This is a scalene triangle."))
    end
  end
end



# it("tells us whether three lengths can make a triangle") do
