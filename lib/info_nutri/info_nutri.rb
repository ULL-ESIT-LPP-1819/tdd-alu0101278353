
class Info_nutricional 
	attr_reader :grasa , :hidratos

	def initialize(grasa ,  hidratos)
		@grasa , @hidratos= grasa, hidratos
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
end
