
class Info_nutricional 
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

end
