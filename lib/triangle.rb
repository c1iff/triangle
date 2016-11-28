class Triangle
  define_method(:initialize) do |side_1, side_2, side_3|
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  define_method(:is_equilateral) do
    @side_1 === @side_2 && @side_1 === @side_3
  end

  define_method(:is_isosceles) do
    @side_1 === @side_2 || @side_2 === @side_3 || @side_1 === @side_3
 end

 define_method(:is_scalene) do
   @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
 end

 define_method(:not_a_triangle) do
   @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 ||
   @side_1 + @side_3 <= @side_2
 end
end
