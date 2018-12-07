# Esta clase representa a un individuo
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
class Individuo
	attr_accessor :name
	# inicializa al nombre del paciente
	def initialize (name) 
		@name=name
	end

	def to_s
		"Nombre #{@name}"
	end

end
# Esta clase representa a un paciente
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
class Paciente < Individuo
	include Comparable, Enumerable
	attr_accessor :peso , :talla , :tricipital , :bicipital, :subescapular ,:suprailiaco , :brazo , :cintura ,:cadera, :sexo, :edad
	# inicializa los datos de la clase individuo
	def initialize(name,peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera,sexo,edad)
		super(name)
		@peso , @talla , @tricipital , @bicipital, @subescapular ,@suprailiaco , @brazo , @cintura ,@cadera, @sexo, @edad = peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad
	end

	def to_s
		s=""
		s << super.to_s
		s << ",peso:#{@peso}," 

	end
	#se define el metodo del modulo comparable
	#se toma como valor los datos de indice de masa corporal de un paciente
	def <=> (anOther)
		self.imc <=> anOther.imc
	end
	#incluimos el metodo para calcular el indice de masas corporal
	def imc
		peso/(talla*talla)
        end

end
