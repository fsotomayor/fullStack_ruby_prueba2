=begin
class Car
	@@t_instances = 0
    @@q_instances = 0
end

class T end

class Q end
=end

class Car
	attr_accessor :t_instances
	@@t_instances = 0
    @@q_instances = 0

    def self.t_instances
    	@@t_instances
    end

    def self.q_instances
    	@@q_instances
    end

    def contador_t
    	@@t_instances += 1
    end

    def contador_q
    	@@q_instances += 1
    end
end

c = Car.new()

class T end

class Q end

#instancias de T
20.times do |t|
	t1 = T.new()
	c.contador_t
end

puts "total de instancias de T: #{Car.t_instances}"


#instancias de Q
25.times do |q|
	q1 = Q.new()
	c.contador_q
end

puts "total de instancias de Q: #{Car.q_instances}"