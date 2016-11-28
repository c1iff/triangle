require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('returns false if all three sides are not equal in length') do
      equilateral_triangle = Triangle.new(15, 15, 10)
      expect(equilateral_triangle.is_equilateral).to(eq(false))
    end

    it('returns true if all three sides are equal in length') do
      equilateral_triangle = Triangle.new(15, 15, 15)
      expect(equilateral_triangle.is_equilateral).to(eq(true))
    end
  end

  describe('#isosceles') do
    it('returns false if two sides are not equal in length') do
      isosceles_triangle = Triangle.new(10, 11, 12)
      expect(isosceles_triangle.is_isosceles).to(eq(false))
    end

    it('returns true if two side are equal in length') do
      isosceles_triangle = Triangle.new(10, 10, 11)
      expect(isosceles_triangle.is_isosceles).to(eq(true))
    end
  end

  describe('#scalene') do
    it('returns false if any two sides are equal length')do
      scalene_triangle = Triangle.new(10, 10, 11)
      expect(scalene_triangle.is_scalene).to(eq(false))    
    end
  end
end
