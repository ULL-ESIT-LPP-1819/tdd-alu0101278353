
class Individuo
	attr_accessor :name

	def initialize (name) 
		@name=name
	end

	def to_s
		"Nombre #{@name}"
	end

end

class Paciente < Individuo
	include Comparable, Enumerable
	attr_accessor :peso , :talla , :tricipital , :bicipital, :subescapular ,:suprailiaco , :brazo , :cintura ,:cadera, :sexo, :edad

	def initialize(name,peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera,sexo,edad)
		super(name)
		@peso , @talla , @tricipital , @bicipital, @subescapular ,@suprailiaco , @brazo , @cintura ,@cadera, @sexo, @edad = peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad
	end

	def to_s
		s=""
		s << super.to_s
		s << ",peso:#{@peso}," 

	end

	def <=> (anOther)
		self.imc <=> anOther.imc
	end

	def imc
		peso/(talla*talla)
        end

end
