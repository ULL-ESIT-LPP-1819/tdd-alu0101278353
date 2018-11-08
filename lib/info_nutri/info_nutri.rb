
class Info_nutricional 
	attr_reader :grasa , :grasaturada

	def initialize(grasa , grasaturada)
		@grasa ,@grasaturada= grasa, grasaturada
	end

	def vgrasakj
		@grasa*37
	end
	def vgrasakcal
		@grasa*9
	end
end
