class Triangle
  define_method(:initialize) do |side_1, side_2, side_3|
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  define_method(:is_equilateral) do
    @side_1 == @side_2 && @side_1 == @side_3
  end

  define_method(:is_isosceles) do
    @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
 end
end
