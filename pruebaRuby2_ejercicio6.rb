module Priceable
	attr_accessor :price
    def discoutend_price(discount)
    	@price - @price * discount
	end
end

module Stockable
	attr_accessor :stock
	def has_stock?()
		true if @stock > 0
	end
end

class Product
	include Priceable
	include Stockable
    
    def initialize(price,stock)
    	@price = price
    	@stock = stock
	end
end  

#instancia de la clase Producto
stock = Random.new()
a = Product.new(20,stock.rand(0..100))

#imprime precio
puts "Precio: #{a.price}"

#usa método del módulo Priceable
puts "Precio con descuento: #{a.discoutend_price(0.2)}"

#usa método de Stockable
puts "Tiene stock?: #{a.has_stock?()}"