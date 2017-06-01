=begin
class T
	def method1
	end 
end

class Q end
=end

#desarrollo de ejercicio
class T
	def method1
		num = Random.new()
		return num.rand(1..1000)
	end 
end

class Q < T  
end

a = Q.new().method1()
puts "Número al azar: #{a}"

