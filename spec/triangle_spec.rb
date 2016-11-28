require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('returns true if all three side are equal length') do
      equilateral_triangle = Triangle.new(15, 15, 10)
      expect(equilateral_triangle.is_equilateral).to(eq(false))
    end

  end

end
