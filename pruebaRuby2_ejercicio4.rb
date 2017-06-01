=begin
class Complejo
	def initialize(x, y)
		@x = x
		@y = y 
	end
    
    def doble(complejo)
    	Complejo.new(@x + complejo.x, @y + complejo.y)
	end 
end
=end

#arreglar error
class Complejo
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x
		@y = y 
	end
    
    def doble(complejo)
    	Complejo.new(@x + complejo.x, @y + complejo.y)
	end 
end

a = Complejo.new(2,3)
b = Complejo.new(20,50).doble(a)

puts "Datos de objeto a: #{a.doble(a).x}, #{a.doble(a).y}"
puts "Datos de objeto b: #{b.x}, #{b.y}"
	