=begin
class Prueba
	@@A = 5
    def self.A
    	@@A
	end
end

puts Prueba.A
=end

#convertir a módulo
module Prueba
	A = 5
	def A
		A
	end
end

puts Prueba::A

