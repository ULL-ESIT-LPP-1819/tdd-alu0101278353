
class Individuo
	attr_accessor :name

	def initialize (name) 
		@name=name
	end
	
	def name
		n=Individuo.new("nombre")
		puts n.name
	end

end

class Paciente < Individuo
	attr_accessor :datos

	def initialize  (name ,peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad)
		@name=name
		@datos=Valoracion_Nutricional.new(peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad)
	end

	def to_s
		"Nombre #{@name}"

	end
end
