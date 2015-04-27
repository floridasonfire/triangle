require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(1, 2, 5)
      expect(test_triangle.triangle?()).to(eq("This is not a triangle."))
    end
  end
end



# it("tells us whether three lengths can make a triangle") do
