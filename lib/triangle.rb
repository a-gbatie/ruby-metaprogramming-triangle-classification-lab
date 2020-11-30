require 'pry'

class Triangle
attr_reader :length_1, :length_2, :length_3

    def initialize(length_1, length_2, length_3)
        @length_1 = length_1
        @length_2 = length_2
        @length_3 = length_3
    end

    def kind
    valid_triangle
        if length_1 == length_2 && length_2 == length_3
            :equilateral
        elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
            :isosceles
        else
            :scalene
        end
    end
 

    def valid_triangle
            if !(length_1 + length_2 > length_3 || length_2 + length_3 > length_1 || length_1 + length_3 > length_2 && (length_1 > 0 && length_2 > 0 && length_3 > 0))
                # begin
                #     raise TriangleError
                # rescue TriangleError => error 
                #     puts error.message
                # end
            binding.pry
            else
                raise TriangleError
            end
    end

    class TriangleError < StandardError

       

        def message
            "This triangle is illegal."
        end
    end
end
