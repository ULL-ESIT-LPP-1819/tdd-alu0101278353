
class Info_nutricional 
	attr_reader :grasa , :hidratos, :proteinas

	def initialize(grasa ,  hidratos, proteinas)
		@grasa , @hidratos, @proteinas= grasa, hidratos, proteinas
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
end
