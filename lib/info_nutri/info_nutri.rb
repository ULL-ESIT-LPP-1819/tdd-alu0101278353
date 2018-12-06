class InfoNutricional
       include Comparable	
	attr_reader :grasa , :hidratos, :proteinas, :grasaturadas,:sal

	def initialize(grasa ,  hidratos, proteinas, grasaturadas,sal)
		@grasa , @hidratos, @proteinas, @grasaturadas,@sal= grasa, hidratos, proteinas , grasaturadas, sal
	end


	def vgrasakj
		@grasa*37
	end
	def vgrasakcal
		@grasa*9
	end

	def vhidrakj
		@hidratos*17
	end
	def vhidrakcal
		@hidratos*4
	end

	def vprotkj
		@proteinas*17
	end
	def vprotkcal
		@proteinas*4
	end

	def vsaturadas
		@grasaturadas*1
	end

	def vsal
		@sal*1
	end

	def valorenerkj
		self.vgrasakj+vhidrakj+vprotkj
	end
	def valorenerkcal
		self.vgrasakcal+vhidrakcal+vprotkcal
	end

	def ingesta_referencia
		suma= grasa+grasaturadas

	end

	def to_s
		"Grasa:#{@grasa}, Hidratos:#{@hidratos}, Proteinas:#{@proteinas}, Grasas Saturadas:#{@grasaturada}, Sal:#{@sal}"
	end

#		"{#{@grasa},#{@hidratos},#{@proteinas},#{@grasaturada},#{@sal}"

	def <=> (anOther)
		valorenerkj <=> anOther.valorenerkj
	end

end
