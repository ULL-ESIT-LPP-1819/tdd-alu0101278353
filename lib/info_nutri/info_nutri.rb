# Esta clase representa a la informacion nutricional de etiquetas
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
class InfoNutricional
       include Comparable	
	attr_reader :grasa , :hidratos, :proteinas, :grasaturadas,:sal
	#inicializamos los valores de las etiquetas 
	def initialize(grasa ,  hidratos, proteinas, grasaturadas,sal)
		@grasa , @hidratos, @proteinas, @grasaturadas,@sal= grasa, hidratos, proteinas , grasaturadas, sal
	end

	#definimos un método para calcular el factor de conversion de grasa, representada en gramos y pasarla a kilo julios
	def vgrasakj
		@grasa*37
	end

	#definimos un método para calcular el factor de conversion de grasa, representada en gramos y pasarla a kilo calorías
	def vgrasakcal
		@grasa*9
	end

	#definimos un método para calcular el factor de conversion de hidratos de carbonono representada en gramos y pasarla a kilo julios 
	def vhidrakj
		@hidratos*17
	end
	
	#definimos un método para calcular el factor de conversion de hidratos de carbono, representada en gramos y pasarla a kilo calorías 
	def vhidrakcal
		@hidratos*4
	end

	#definimos un método para calcular el factor de conversión de proteinas, representada en gramos y pasarla a kilo julios 
	def vprotkj
		@proteinas*17
	end

	#definimos un método para calcular el factor de conversión de proteinas, representada en gramos y pasarla a kilo calorías 
	def vprotkcal
		@proteinas*4
	end

	#definimos un método para calcular el factor de conversion de grasa saturadas representada en gramos y pasarla a kilo julios
	def vsaturadas
		@grasaturadas*1
	end

	#definimos un método para calcular el factor de conversion de la sal  representada en gramos y pasarla a kilo julios
	def vsal
		@sal*1
	end
	#definimos un método  para calcular el valor energético del producto en kilo julios 
	def valorenerkj
		self.vgrasakj+vhidrakj+vprotkj
	end

	#definimos un método  para calcular el valor energético del producto en kilo calorías 
	def valorenerkcal
		self.vgrasakcal+vhidrakcal+vprotkcal
	end
	#método para obtener la ingesta de referencia del producto
	def ingesta_referencia
		suma= grasa+grasaturadas

	end

	def to_s
		"Grasa:#{@grasa}, Hidratos:#{@hidratos}, Proteinas:#{@proteinas}, Grasas Saturadas:#{@grasaturada}, Sal:#{@sal}"
	end

#		"{#{@grasa},#{@hidratos},#{@proteinas},#{@grasaturada},#{@sal}"

	#se define el metodo para incluir el metodo del módulo comprable
	def <=> (anOther)
		valorenerkj <=> anOther.valorenerkj
	end

end
